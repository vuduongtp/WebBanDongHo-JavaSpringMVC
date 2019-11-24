<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<base href="${pageContext.servletContext.contextPath}/">
		<meta charset="utf-8"/>
		<title>Thông tin người dùng</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">  
		<script type="text/javascript" src="vendor/bootstrap.js"></script>
		<script type="text/javascript" src="js/1.js"></script>
		<link rel="stylesheet" href="vendor/bootstrap.css">
		<link rel="stylesheet" href="vendor/font-awesome.css">
	 	<link rel="stylesheet" href="css/index.css">
	    <link rel="stylesheet" href="css/login.css">
	</head>
	
	<style type="text/css">
        
    input.hidden {
        position: absolute;
        left: -9999px;
    }

    #profile-image1 {
        cursor: pointer;
      
         width: 100px;
        height: 100px;
        border:2px solid #03b1ce ;}
        .tital{ font-size:16px; font-weight:500;}
         .bot-border{ border-bottom:1px #f8f8f8 solid;  margin:5px 0  5px 0}    

</style>
	
	<body>
	
	<!-- header -->
    <nav class="navbar navbar-default navbar-inverse navbar-fixed-top header-web" role="navigation">
    	<div class="container-fluid header-web2">
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
    			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
    				<span class="sr-only">Toggle navigation</span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    			</button>
    			<a class="navbar-brand" href="home/index/${user.username}.htm"><img class="logo-web" src="images/logo.png"></a>
    		</div>
    
    		<!-- Collect the nav links, forms, and other content for toggling -->
    		<div class="collapse navbar-collapse navbar-ex1-collapse">
    			<c:set var="timkiem" scope="session" value=""/>
    			<form class="navbar-form navbar-left" role="search" action="home/search/${user.username}.htm">
    				<div class="form-group">
    					<input type="text" name="timkiem" value="${timkiem}" class="form-control" placeholder="Bạn tìm gì...">
    				</div>
    				<button type="submit" class="btn btn-default">Tìm kiếm</button>
    			</form>
    		<ul class="nav navbar-nav">
				<li><a href="home/man-watch/${user.username}.htm" >Đồng hồ nam</a></li>
				<li><a href="home/woman-watch/${user.username}.htm">Đồng hồ nữ</a></li>
				<li><a href="home/children-watch/${user.username}.htm">Đồng hồ trẻ em</a></li>
    		</ul>
    			<ul class="nav navbar-nav navbar-right">
    				<li><a href="cart/index/${user.username}.htm"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
    				<li class="dropdown">
    				
    					<c:choose>
    						<c:when test="${user.username==null}">
    							<a href="user/login.htm"> Đăng nhập</a>
    						</c:when>
    						<c:otherwise>
	    						<a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-user"></i> ${user.username}<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="cart/order/${user.username}.htm"><i class="fa fa-reorder"></i> Đơn hàng</a></li>
						          <li><a href="user/userinfo/${user.username}.htm"><i class="fa fa-user-md"></i> Thông tin tài khoản</a></li>
						          <li><a href="home/logout.htm"><i class="fa fa-sign-out"></i> Đăng xuất</a></li>
						        </ul>
    						</c:otherwise>
    					</c:choose>
    					
    				</li>
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

    <div><hr></div>

    <div class="container">
    <div class="row">
       
       <div class="col-md-8 col-md-push-2">

<div class="panel panel-default"  style="margin-top: 30px;">
  <div class="panel-heading text-center">  <h4 >Thông tin người dùng</h4></div>
   <div class="panel-body">
       
    <div class="box box-info">
        
            <div class="box-body">
                     <div class="col-sm-6">
                     <div  align="center"> <img alt="User Pic" src="https://cdn1.imggmi.com/uploads/2019/11/17/088b54546d3ca69c0567685fc79a6b91-full.jpg" class="img-circle img-responsive" style="max-width: 100px;"> 
                
                <input id="profile-image-upload" class="hidden" type="file">
              <div style="color:#999;" >Ảnh đại diện</div>
                <!--Upload Image Js And Css-->
                 
                     
              </div>
              
              <br>
    
              <!-- /input-group -->
            </div>
            <div class="col-sm-6">
            <h4 style="color:#00b1b1;">Username: ${user.username}</h4></span>
              <span><p>Họ và tên: ${user.ho} ${user.ten}</p></span>            
            </div>
            <div class="clearfix"></div>
            <hr style="margin:5px 0 5px 0;">
    
       <div class="col-md-10 col-md-push-1">      
      <p style="color:red;">${message}</p>
        <form:form name="qryform" id="qryform" method="post" action="user/updateuser/${user.maKH}.htm" modelAttribute="user">
            <form:input path="maKH" class="form-control" type="hidden" name="maKH"/>
            <form:input path="username" type="hidden" class="form-control" placeholder="Tên đăng nhập..." name="username"/>
            
            <div class="form-group">
                  <label>Password:</label>
                  <form:errors path="password" style="color:red;"/>
                  <form:input path="password" type="password" class="form-control" placeholder="Mật khẩu..." name="password"/>
            </div>
                
            <div class="form-group">
                  <label>Họ:</label>
                  <form:errors path="ho" style="color:red;"/>
                  <form:input path="ho" type="text" class="form-control" placeholder="Họ..." name="ho"/>
            </div>
            <div class="form-group">
                  <label>Tên:</label>
                  <form:errors path="ten" style="color:red;"/>
                  <form:input path="ten" type="text" class="form-control" placeholder="Tên..." name="ten"/>
            </div>
            <div class="form-group">
                  <label>Địa chỉ Email:</label>
                  <form:errors path="email" style="color:red;"/>
                  <form:input path="email" type="text" class="form-control" placeholder="Địa chỉ Email..." name="email"/>
            </div>
            <div class="form-group">
                  <label>Số Điện Thoại:</label>
                  <form:errors path="sDT" style="color:red;"/>
                  <form:input path="sDT" type="text" class="form-control" placeholder="Số Điện Thoại..." name="sDT"/>
            </div>
                 
                 
            <button type="submit" class="btn btn-primary" style="margin:auto;display:block;">Cập nhật</button>
        </form:form>

	</div> 
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
       
            
    </div> 
    </div>
</div>  
    <script>
        $(function() {
        $('#profile-image1').on('click', function() {
            $('#profile-image-upload').click();
            });
        });       
    </script> 
       
    
       
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
				          <li><a href="about.html">Thông tin chung</a></li>
				          <li><a href="contact.html">Hỗ trợ khách hàng</a></li>
				          <li><a href="help.html">Trợ giúp</a></li>
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
				          <li><a href=""><i class="fa fa-facebook-square"></i> Facebook</a></li>
				          <li><a href=""><i class="fa fa-instagram"> Instagram</i></a></li>
				          <li><a href=""><i class="fa fa-twitter-square"> Twitter</i></a></li>
				          <li><a href=""><i class="fa fa-linkedin-square"> LinkedIn</i></a></li>
				    </ul>  
    			</div>

    		</div>
    	</div>
    </div>
    <div><hr></div>
    <div class="text-center container">
    	<div><a href="home/index.htm"><img class="center" src="images/logo.png"></a></div>
    	<div><h4>© 2019 - Bản quyền thuộc về Vũ Dương</h4></div>
    </div>
	
	

</body>
</html>