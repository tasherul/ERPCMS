﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ERPCMS.Login.Default" %>

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
                    <a href="#" class="noble-ui-logo d-block mb-2">Noble<span>UI</span></a>
                    <h5 class="text-muted font-weight-normal mb-4">Welcome back! Log in to your account.</h5>
                    <form class="forms-sample">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" autocomplete="current-password" placeholder="Password">
                      </div>
                      <div class="form-check form-check-flat form-check-primary">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input">
                          Remember me
                        </label>
                      </div>
                      <div class="mt-3">
                        <button type="submit" class="btn btn-primary mr-2 mb-2 mb-md-0">Login</button>
                        <button type="button" class="btn btn-outline-primary btn-icon-text mb-2 mb-md-0">
                          <i class="btn-icon-prepend" data-feather="twitter"></i>
                          Login with twitter
                        </button>
                      </div>
                      <a href="register.html" class="d-block mt-3 text-muted">Not a user? Sign up</a>
                    </form>
                  </div>
                </div>
              </div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- core:js -->
	<script src="../../../assets/vendors/core/core.js"></script>
	<!-- endinject -->
  <!-- plugin js for this page -->
	<!-- end plugin js for this page -->
	<!-- inject:js -->
	<script src="../../../assets/vendors/feather-icons/feather.min.js"></script>
	<script src="../../../assets/js/template.js"></script>
	<!-- endinject -->
  <!-- custom js for this page -->
	<!-- end custom js for this page -->
</body>
</html>
