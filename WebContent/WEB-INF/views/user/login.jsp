<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<base href="${pageContext.servletContext.contextPath}/">
		<meta charset="utf-8"/>
		<title>Đăng nhập</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">  
		<script type="text/javascript" src="vendor/bootstrap.js"></script>
		<script type="text/javascript" src="js/1.js"></script>
		<link rel="stylesheet" href="vendor/bootstrap.css">
		<link rel="stylesheet" href="vendor/font-awesome.css">
	 	<link rel="stylesheet" href="css/index.css">
	    <link rel="stylesheet" href="css/login.css">
	</head>
	<body>
		
			<!-- header -->
    <nav class="navbar navbar-default navbar-inverse navbar-fixed-top header-web " role="navigation">
    	<div class="container-fluid header-web2">
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
    			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
    				<span class="sr-only">Toggle navigation</span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    			</button>
    			<a class="navbar-brand" href="home/index.htm"><img class="logo-web" src="images/logo.png"></a>
    		</div>
    
    		<!-- Collect the nav links, forms, and other content for toggling -->
    		<div class="collapse navbar-collapse navbar-ex1-collapse">
    		
    		<ul class="nav navbar-nav">
				
    		</ul>
    			<ul class="nav navbar-nav navbar-right">
    				
    				<li><a href="user/register.htm">Đăng ký</a></li>
    				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Ngôn ngữ<span class="caret"></span></a>
						<ul class="dropdown-menu">
				          <li><a href="#">Tiếng Việt</a></li>
				          <li><a href="#">English</a></li>
				        </ul>
    				</li>
    				
    			</ul>

    		</div><!-- /.navbar-collapse -->
    	</div>
    </nav>
    <!-- end header -->

	<div class="page-section mb-60">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 col-lg-push-3 mb-30">
                            <!-- Login Form s-->
                            <form:form action="user/login.htm" modelAttribute="user" method="post">
                                <div class="login-form">
                                	<p class="text-center" style="color: blue;"><a href="user/register.htm">Bạn chưa có tài khoản. Đăng ký tại đây.</a></p>
                                    <h4 class="login-title">Đăng nhập</h4>
                                    <div class="row">
                                        <div class="col-md-12 col-12 mb-20">
                                        	<p style="color:brown;">${message}</p>
                                            <label>Tên đăng nhập*</label>
                                            <form:input path="username" class="mb-0" type="text" placeholder="Tên đăng nhập"/>
                                        </div>
                                        <div class="col-12 mb-20 passwordform">
                                            <label>Mật khẩu</label>
                                            <form:input path="password" class="mb-0" type="password" placeholder="Mật khẩu"/>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="check-box d-inline-block ml-0 ml-md-2 mt-10 rememberme">
                                                <div class=""><input type="checkbox" id="remember_me"></div>
                                                <div class="rememberme"><label for="remember_me">Nhớ tài khoản?</label></div>
                                                
                                            </div>
                                        </div>
                                        <div class="col-md-12 mt-10 mb-20 text-left text-md-right">
                                            <a href="user/forget.htm"> Quên mật khẩu?</a>
                                        </div>
                                        <div class="col-md-12">
                                            <button class="register-button mt-0">Đăng nhập</button>
                                        </div>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                       
                    </div>
                </div>
            </div>

	<!-- day la footer -->
	<div><hr></div>
    <div class="container divfooter" style="background-color: white">

    	<div class="row">

    		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 text-center footer">
    				<ul class="contact">
    					<hr>
    					<h4>Về PTITHCM</h4>
				          <li><a href="">Thông tin chung</a></li>
                          <li><a href="">Hỗ trợ khách hàng</a></li>
                          <li><a href="">Trợ giúp</a></li>
				    </ul>  
    			</div>
    			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 text-center footer">

    				<ul class="contact">
    					<hr>
				          <h4>Liên hệ</h4>
				          <li><p><i class="fa fa-mobile-phone"></i> Số điện thoại: 19901000</p></li>
				          <li><p><i class="fa fa-envelope-square"></i> Email: abc@gmail.com</p></li>
				    </ul>  
    			</div>
    			<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 text-center footer">
    				<ul class="contact">
    					<hr>
    					<h4>Theo dõi chúng tôi trên</h4>
				          <li><a href=""><i class="fa fa-facebook-square"> Facebook</i></a></li>
				          <li><a href=""><i class="fa fa-instagram"> Instagram</i></a></li>
				          <li><a href=""><i class="fa fa-twitter-square"> Twitter</i></a></li>
				          <li><a href=""><i class="fa fa-linkedin-square"> LinkedIn</i></a></li>
				    </ul>  
    			</div>

    		</div>
    	</div>
    </div>
    <div><hr></div>
    <div class="text-center">
    	<div><a href=""><img class="center" src="images/logo.png"></a></div>
    	<div><h4>© 2019 - Bản quyền thuộc về Vũ Dương</h4></div>
    </div>
		
	</body>
</html>>