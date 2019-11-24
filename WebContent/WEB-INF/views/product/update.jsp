<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<base href="${pageContext.servletContext.contextPath}/">
		<meta charset="utf-8"/>
		<title>Sửa sản phẩm</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">  
		<script type="text/javascript" src="vendor/bootstrap.js"></script>
		<script type="text/javascript" src="js/1.js"></script>
		<link rel="stylesheet" href="vendor/bootstrap.css">
		<link rel="stylesheet" href="vendor/font-awesome.css">
	 	<link rel="stylesheet" href="css/index.css">
	    <link rel="stylesheet" href="css/login.css">
   		<link rel="stylesheet" href="css/admin.css">
	    
	</head>
	<body>

	<!-- header -->
    <nav class="navbar navbar-default navbar-inverse navbar-fixed-top header-web" role="navigation">
    	<div class="container-fluid header-web2">
    		<!-- Brand and toggle get grouped for better mobile display -->
    		<div class="navbar-header">
                <button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
                    MENU
                </button>
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
    			<form class="navbar-form navbar-left" role="search">
    				<div class="form-group">
    					<input type="text" class="form-control" placeholder="Bạn tìm gì...">
    				</div>
    				<button type="submit" class="btn btn-default">Tìm kiếm</button>
    			</form>
    		
    			<ul class="nav navbar-nav navbar-right">
    				
    				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-user"></i> Tài khoản<span class="caret"></span></a>
						<ul class="dropdown-menu">
				         
				          <li><a href="info-user.html"><i class="fa fa-user-md"></i> Thông tin tài khoản</a></li>
				          <li><a href="user/login.htm"><i class="fa fa-sign-out"></i> Đăng xuất</a></li>
				        </ul>
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
    
    <div class="container" style="margin-top: 50px;">

    <div class="form-sec col-xs-12 col-sm-12 col-md-4 col-lg-4 col-lg-push-4 col-md-push-4">
        <h4 class="text-center">Sửa sản phẩm</h4>
        <h4 class="text-center"><img class="img-responsive" src="${product.anhSP}"/></h4>
        
      	<p style="color:red;">${message}</p>
        <form:form method="post" action="product/update/${product.maSP}.htm" modelAttribute="product" enctype="multipart/form-data">
        	<div class="form-group">
                <label>Mã SP:</label>
                <form:errors path="maSP" style="color:red;"/>
                <form:input path="maSP" type="text" class="form-control" readonly="true" placeholder="Tên sản phẩm..."/>
            </div>
            <div class="form-group">
                <label>Tên sản phẩm:</label>
                <form:errors path="tenSP" style="color:red;"/>
                <form:input path="tenSP" type="text" class="form-control" placeholder="Tên sản phẩm..."/>
            </div>
            <div class="form-group">
                <label>Ảnh sản phẩm:</label>
                <form:errors path="anhSP" style="color:red;"/>
                <form:input path="anhSP" type="hidden" class="form-control" placeholder="Ảnh sản phẩm..."/>
                <input type="file" name="photo" class="form-control" placeholder="Ảnh sản phẩm..."/>
                
            </div>
            <div class="form-group">
                <label>Loại sản phẩm:</label>
                <form:select class="form-control" path="type.maLoaiSP" items="${types}" itemValue="maLoaiSP" itemLabel="tenLoaiSP"></form:select>
            </div>
                
            <div class="form-group">
                <label>Giá:</label>
                <form:errors path="giaSP" style="color:red;"/>
                <form:input path="giaSP" type="text" class="form-control" placeholder="Giá sản phẩm..."/>
            </div>
            <div class="form-group">
                <label>Ngày tạo:</label>
                <span style="color:red;">${message1}</span>
                <%-- <form:errors path="ngayTaoSP" style="color:red;"/> --%>
                <form:input path="ngayTaoSP" type="text" class="form-control" placeholder="Ngày tạo sản phẩm..."/>
            </div>
            <div class="form-group">
                <label>Mô tả sản phẩm:</label>
                <form:errors path="moTaSP" style="color:red;"/>
                <form:textarea rows="5" path="moTaSP" type="text" class="form-control" placeholder="Mô tả sản phẩm..."/>
            </div>
            <div class="form-group">
                <label>Số lượng:</label>
                <form:errors path="soLuongSP" style="color:red;"/>
                <form:input path="soLuongSP" type="text" class="form-control" placeholder="Số lượng sản phẩm..."/>
            </div>
            
            <div class="form-group">
                <label>Hãng sản xuất:</label>
                <form:errors path="hangSX" style="color:red;"/>
                <form:input path="hangSX" type="text" class="form-control" placeholder="Hãng sản xuất..."/>
            </div>     
                 
            <button type="submit" class="btn btn-primary" style="margin:auto;display:block;">Cập nhật</button>
        </form:form>
      </div>


    </div>

	<style type="text/css">
	    .form-sec{ background:#ccc; padding:15px; background: #f8f9fa;padding: 15px;box-shadow: 0 0 4px #ccc;}
	</style>
    
     <!-- day la footer -->
    <div style=" margin-top: 50px"><hr></div>
    <div class="container divfooter" style="background-color: white;">
            
    <div class="text-center container">
        <div><a href="home/index.htm"><img class="center" src="images/logo.png"></a></div>
        <div><h4>© 2019 - Bản quyền thuộc về Vũ Dương</h4></div>
    </div>
    </div>


</body>
</html>