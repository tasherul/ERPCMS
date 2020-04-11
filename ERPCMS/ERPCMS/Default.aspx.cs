using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using ECMS;
using System.Data.Sql;
using System.Data.SqlClient;

namespace ERPCMS
{
    public partial class Default : System.Web.UI.Page
    {
        IPFinder ip = new IPFinder();
        Connection con = new Connection();
        SqlConnection c;
        Registation reg = new Registation();
        Check chk = new Check();
        protected void Page_Load(object sender, EventArgs e)
        {
            //ip.IPDetails();

            //con.DatabaseName = "sad";
            //Response.Write(chk.int32Check("select count(*) from DeveloperRegistation"));
            StringGenarator ran = new StringGenarator();
            ran.TotalString = 10;
            ran.DatabaseEntry = false;
            ran.Hexadecimal = true;

            Response.Write(ran.RandomStringNumber("test",2,'-'));
            
            
        } 
        public string IPRequestHelper(string url)
        {
            HttpWebRequest objreq = (HttpWebRequest)WebRequest.Create(url);
            HttpWebResponse objres = (HttpWebResponse)objreq.GetResponse();
            StreamReader responser = new StreamReader(objres.GetResponseStream());
            string responserd = responser.ReadToEnd();
            responser.Close();
            responser.Dispose();
            return responserd;
        }
        public string getipdetails()
        {
            string ipaddress = getIP();
            string strreturnvalue = string.Empty;
            string ipResponse = IPRequestHelper("http://ip-api.com/xml/" + ipaddress);
            XmlDocument ipInfoxml = new XmlDocument();
            ipInfoxml.LoadXml(ipResponse);
            XmlNodeList respnseXML = ipInfoxml.GetElementsByTagName("query");
            string returnvalue = respnseXML.Item(0).ChildNodes[0].InnerText.ToString();
            return returnvalue;

        }
        private string Encrypt(string clearText)
        {
            string EncryptionKey = "A2 55 1B C5 D2";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "A2 55 1B C5 D2";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }
        public string getIP()
        {
            string Address = "";
            WebRequest request = WebRequest.Create("http://checkip.dyndns.org/");
            using (WebResponse response = request.GetResponse())
            using (StreamReader stram = new StreamReader(response.GetResponseStream()))
            {
                Address = stram.ReadToEnd();
            }
            int first = Address.IndexOf("Address: ") + 9;
            int last = Address.IndexOf("</body>");
            Address = Address.Substring(first, last - first);
            return Address;
        }
        private string GetContent(string URL)
        {
            using (System.Net.WebClient client = new System.Net.WebClient())
            {
                return client.DownloadString(URL);
            }
        }
    }
}