<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<base href="${pageContext.servletContext.contextPath}/">
		<meta charset="utf-8"/>
		<title>Đăng ký</title>
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
    			<a class="navbar-brand" href=""><img class="logo-web" src="images/logo.png"></a>
    		</div>
    
    		<!-- Collect the nav links, forms, and other content for toggling -->
    		<div class="collapse navbar-collapse navbar-ex1-collapse">
    		
    		<ul class="nav navbar-nav">
				
    		</ul>
    			<ul class="nav navbar-nav navbar-right">
    				
    				<li><a href="user/login.htm">Đăng nhập</a></li>
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
                        
                        <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12 col-lg-push-3">
                            <form:form action="user/register.htm" modelAttribute="user" method="POST">
                                <div class="login-form">
                                    <h4 class="login-title">Đăng ký</h4>
                                    <p style="color:brown; margin-left:15px;">${message}</p>
                                    <div class="row">
                                        <div class="col-md-6 col-12 mb-20">
                                            <label>Họ</label>
                                            <form:input class="mb-0" type="text" path="ho" placeholder="Họ và đệm"/>
                                        </div>
                                        <div class="col-md-6 col-12 mb-20">
                                            <label>Tên</label>
                                            <form:input class="mb-0" type="text" path="ten" placeholder="Tên"/>
                                        </div>
                                        <div class="col-md-12 mb-20">
                                            <label>Tên đăng nhập*</label>
                                            <form:input class="mb-0" type="text" path="username" placeholder="Tên đăng nhập"/>
                                        </div>
                                        <div class="col-md-12 mb-20">
                                            <label>Email</label>
                                            <form:input class="mb-0" type="email" path="email" placeholder="Email"/>
                                        </div>
                                        <div class="col-md-12 mb-20">
                                            <label>Số điện thoại</label>
                                            <form:input class="mb-0" type="text" path="sDT" placeholder="Số điện thoại"/>
                                        </div>
                                        <div class="col-12" style="margin-left:15px;"><p id='message'></p></div>
                                        <div class="col-md-6 mb-20">
                                        
                                            <label>Mật khẩu</label>
                                            <form:input class="mb-0" name="password" id="password" onkeyup='check();' type="password" path="password" placeholder="Mật khẩu"/>
                                        </div>
                                        <div class="col-md-6 mb-20">
                                            <label>Nhập lại mật khẩu</label>
                                            <input class="mb-0" type="password" name="confirm_password" id="confirm_password"  onkeyup='check();' placeholder="Nhập lại mật khẩu"></input>
                                        </div>
                                        <div class="col-12">
                                            <button class="register-button mt-0">Đăng ký</button>
                                        </div>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
            var check = function() {
            	  if (document.getElementById('password').value == document.getElementById('confirm_password').value) {
            	    document.getElementById('message').style.color = 'green';
            	    document.getElementById('message').innerHTML = 'Mật khẩu chính xác.';
            	  } else {
            	    document.getElementById('message').style.color = 'red';
            	    document.getElementById('message').innerHTML = 'Mật khẩu chưa chính xác. Vui lòng xác nhân lại!';
            	  }
            	}
            </script>

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