<!DOCTYPE HTML>
<html>
<head>
<title>Đăng Nhập</title>
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style_login_signup.css" rel="stylesheet" type="text/css" media="all"/>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
<!--header start here-->
<% String error= (String) request.getAttribute("error");
%>
<div class="header">
		<div class="header-main">

		       <h1>ĐĂNG NHẬP</h1>
			<div class="header-bottom">
				<div class="header-right w3agile">
					
					<div class="header-left-bottom agileinfo">
						
					 <form action="/DoanCuoiKy_nhom6/loginUser" method="post">


						<input type="text"  value="Tên Đăng Nhập" name="Tên Đăng Nhập" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tên Đăng Nhập';}"
							   placeholder="Nhập Email hoặc số điện thoại" required value="<%=request.getParameter("username")!=null?request.getParameter("username"):""%>"
						/>
					<input type="password"  value="Mật Khẩu" name="Mật Khẩu" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mật Khẩu';}"/>
						<div class="remember">
			             <span class="checkbox1">
							   <label class="checkbox"><input type="checkbox" name="" checked=""><i> </i>Nhớ tôi</label>
						 </span>
						 <div class="forgot">
						 	<h6><a href="forgot_pass.html">Quên mật khẩu?</a></h6>
						 </div>
						<div class="clear"> </div>
					  </div>
					   
						
					</form>	
					<form action="home.html">
						<input type="submit" value="Đăng Nhập">
					</form>
					<div class="header-left-top">
						<div class="sign-up"> <h2>Hoặc</h2> </div>
					
					</div>
					<div class="header-social wthree">
							<a href="#" class="face"><h5>Facebook</h5></a>
							<a href="#" class="google"><h5>Google</h5></a>
						</div>
						
				</div>
				</div>
			  
			</div>
		</div>
</div>
<div class="sign">
	<h3><a href="signup.html">Đăng ký</a></h3>
</div>
<!--header end here-->

<!--footer end here-->
</body>
</html>