using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ECMS;


namespace ERPCMS.CreateAccount
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Registation reg = new Registation();
        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {
            if(reg.UserName_Avaiable(txtUserName.Text))
            {
                lblUserNameAvaility.Text = reg.UserNameIcon;
            }
            else
            {
                lblUserNameAvaility.Text = reg.UserNameIcon;
            }
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {
            lblPassword.Text = reg.PasswordStrongMessege(txtPassword.Text);
        }
    }
}