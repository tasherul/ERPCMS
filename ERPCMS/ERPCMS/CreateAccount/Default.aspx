<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ERPCMS.CreateAccount.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="X-UA-Compatible" content="ie=edge"/>
	<title>NobleUI Responsive Bootstrap 4 Dashboard Template</title>
	<!-- core:css -->
	<link rel="stylesheet" href="../../../assets/vendors/core/core.css"/>
	<!-- endinject -->
  <!-- plugin css for this page -->
	<!-- end plugin css for this page -->
	<!-- inject:css -->
	<link rel="stylesheet" href="../../../assets/fonts/feather-font/css/iconfont.css"/>
     <link rel="stylesheet" href="../../../assets/vendors/flag-icon-css/css/flag-icon.min.css"/>
	<!-- endinject -->
  <!-- Layout styles -->  
	<link rel="stylesheet" href="../../../assets/css/demo_1/style.css"/>
  <!-- End layout styles -->
  <link rel="shortcut icon" href="../../../assets/images/favicon.png" />
</head>
<body>
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
                                  <input type="text" class="form-control" id="exampleInputUsername1" autocomplete="Username" placeholder="Username">
                              </div>
                          </div>
                          <div class="col-md-6">
                              <div class="form-group">
                                  <label for="exampleInputUsername1">Surname</label>
                                  <input type="text" class="form-control" id="exampleInputUsername1" autocomplete="Username" placeholder="Username">
                              </div>
                          </div>
                      </div>
                      
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                      </div>

                      <div class="row">
                          
                              <div class="col-md-6">
                                  <div class="form-group">
                                      <label for="exampleInputUsername1">UserName</label>
                                      <input type="text" class="form-control" id="exampleInputUsername1" autocomplete="Username" placeholder="Username">
                                  </div>
                              </div>
                          
                          <div class="col-md-6">
                              <div class="form-group">
                                  <label for="exampleInputUsername1">Password</label>
                                  <input type="text" class="form-control" id="exampleInputUsername1" autocomplete="Username" placeholder="Username">
                              </div>
                          </div>
                      </div>

                      
                     
                              <div class="form-group">
                                  <label for="exampleInputUsername1">Country &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Mobile </label>    
                                  <div class="row">                                                                 
                                  <i class="form-control col-md-2 flag-icon flag-icon-bd" style="border:0px; cursor:pointer;" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
                                  <input type="text" class="form-control col-md-3" value="+880 -" style="border:0px; font-weight:bold;">
                                      <input type="text" class="form-control col-md-7" value="Mobile Number" style="">
                                  </div>   
                              </div>
                          
                      <br />
                    <%--     <div class="alert alert-icon-primary" role="alert">
	<i data-feather="alert-circle"></i>
	A simple primary alert—check it out!
</div>--%>
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
