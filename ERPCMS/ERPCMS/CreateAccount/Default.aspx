<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ERPCMS.CreateAccount.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge"/>
	<title>Create Account</title>
	<!-- core:css -->
	<link rel="stylesheet" href="../../../assets/vendors/core/core.css"/>
	<!-- endinject -->
  <!-- plugin css for this page -->
	<!-- end plugin css for this page -->
	<!-- inject:css -->
	<link rel="stylesheet" href="../../../assets/fonts/feather-font/css/iconfont.css"/>
     <link rel="stylesheet" href="../../../assets/vendors/flag-icon-css/css/flag-icon.min.css"/>
      <link rel="stylesheet" href="../../../assets/vendors/mdi/css/materialdesignicons.min.css"/>
	<!-- endinject -->
  <!-- Layout styles -->  
	<link rel="stylesheet" href="../../../assets/css/demo_1/style.css"/>
  <!-- End layout styles -->
  <link rel="shortcut icon" href="../../../assets/images/favicon.png" />
</head>
<body>
    <form id="form" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>


	<div class="main-wrapper">
		<div class="page-wrapper full-page">
			<div class="page-content d-flex align-items-center justify-content-center">
				<div class="row w-100 mx-0 auth-page">
					<div class="col-md-8 col-xl-6 mx-auto">
						<div class="card">
							<div class="row">
                <div class="col-md-4 pr-md-0">
                    <img src="../image/LoginBackground.jpg" height="100%" width="100%" />
                </div>
                <div class="col-md-8 pl-md-0">
                  <div class="auth-form-wrapper px-4 py-5">
                    <a href="#" class="noble-ui-logo d-block mb-2">ER<span>CMS</span></a>
                    <h5 class="text-muted font-weight-normal mb-4">Create a free account.</h5>
                      <div class="row">
                          <div class="col-md-6">
                              <div class="form-group">
                                  <label for="exampleInputUsername1">FirstName</label>
                                  <asp:TextBox ID="txtFirstName" CssClass="form-control" placeholder="first name" runat="server"></asp:TextBox>
                                  
                              </div>
                          </div>
                          <div class="col-md-6">
                              <div class="form-group">
                                  <label for="exampleInputUsername1">Surname</label>
                                  <asp:TextBox ID="txtSureName" CssClass="form-control" placeholder="sure name" runat="server"></asp:TextBox>
                              </div>
                          </div>
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email address </label>
                        <asp:TextBox ID="txtEmail" CssClass="form-control" TextMode="Email" placeholder="email" runat="server"></asp:TextBox>
                      </div>

                      <div class="row">
                          <style>
                              .Sucess{
                                 color:forestgreen;
                              }
                              .Danger
                              {
                                  color:red;
                              }
                              .warning{
                                  color:yellow;
                              }
                              .info{
                                  color:dodgerblue;
                              }
                          </style>
                              <div class="col-md-6">
                                  <div class="form-group">
                                      <label for="exampleInputUsername1">UserName  <i tabindex="0" class="info" style="width:15px; height:15px; cursor:pointer;" data-feather="info" role="button" data-toggle="popover" data-trigger="focus" title="Dismissible popover" data-content="And here's some amazing content. It's very engaging. Right?"></i>
                                          <asp:Label ID="lblUserNameAvaility" runat="server"></asp:Label>   </label>
                                      <asp:TextBox ID="txtUserName" AutoPostBack="true" OnTextChanged="txtUserName_TextChanged" CssClass="form-control" placeholder="username" runat="server"></asp:TextBox>
                                  </div>
                              </div>
                          
                          <div class="col-md-6">
                              <div class="form-group">
                                  <label for="exampleInputUsername1">Password  <asp:Label ID="lblPassword" runat="server" ></asp:Label></label>
                                  <asp:TextBox ID="txtPassword" AutoPostBack="true" OnTextChanged="txtPassword_TextChanged" CssClass="form-control" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
                              </div>
                          </div>
                      </div>

                      
                     
                              <div class="form-group">
                                  <label for="exampleInputUsername1">Country &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Mobile </label>    
                                  <div class="row">                                                                 
                                  <i class="form-control col-md-2 flag-icon flag-icon-bd" style="border:0px; cursor:pointer;" data-toggle="popover" title="Country" data-content="Please type your country mobile number currectly and send otp?"></i>
                                  <asp:TextBox ID="txtMobileCode" Enabled="false" CssClass="form-control col-md-3" BorderStyle="None" Font-Bold="true" runat="server"></asp:TextBox>
                                      <asp:TextBox ID="txtMobileNumber" CssClass="form-control col-md-7" placeholder="mobile number" runat="server"></asp:TextBox>
                                  </div>   
                              </div>
                          
                      <br />
                         <div class='alert alert-icon-danger' role='alert'><i data-feather='alert-circle'></i>A simple primary alert—check it out!</div>
                      <div class="mt-3">
                        <button type="submit" class="btn btn-primary mr-2 mb-2 mb-md-0">Sing up</button>

                        <%--<button type="button" class="btn btn-outline-primary btn-icon-text mb-2 mb-md-0">
                          <i class="btn-icon-prepend" data-feather="twitter"></i>
                          Sign up with twitter
                        </button>--%>
                      </div>
                      <a href="../Login/" class="d-block mt-3 text-muted">Already a user? Sign in</a>
                    
                  </div>
                </div>
              </div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
                            </ContentTemplate>
        </asp:UpdatePanel>
        </form>
    </body>
	<!-- core:js -->
	<script src="../../../assets/vendors/core/core.js"></script>
	<!-- endinject -->
  <!-- plugin js for this page -->
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="../../../assets/vendors/feather-icons/feather.min.js"></script>
	<script src="../../../assets/js/template.js"></script>
	<!-- endinject -->
</html>
