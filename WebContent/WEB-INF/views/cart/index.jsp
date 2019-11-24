<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<base href="${pageContext.servletContext.contextPath}/">
		<meta charset="utf-8"/>
		<title>Giỏ hàng của bạn</title>
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

    <h4 class="text-center" style="color: darkblue;margin-top: 60px;">Giỏ hàng của bạn</h4>

<div class="container" style="margin-top: 0px; background-color: white;">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover table-bordered table-responsive" style="margin-top: 25px;">
                <thead>
                    <tr>
                    	<th>STT</th>
                        <th>Tên sản phẩm</th>
                        <th>Số lượng</th>
                        <th class="text-center">Giá</th>
                        <th class="text-center">Số tiền</th>
                        <th> </th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="c" items="${ct}" varStatus="status">
                    <tr>
                    	<td>${status.index+1}</td>
                        <td class="col-sm-8 col-md-6">
	                        <div class="media">
	                            <a class="thumbnail pull-left" href="home/singleproduct/${c.product.maSP}/${user.username}.htm"> <img class="media-object" src="${c.product.anhSP}" style="width: 70px; height: 70px;"> </a>
	                            <div class="media-body" style="padding-top: 20px; padding-left: 10px;">
	                                <h4 class="media-heading"><a href="home/singleproduct/${c.product.maSP}/${user.username}.htm">${c.product.tenSP}</a></h4>
	                            </div>
	                        </div>
                    	</td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <form action="cart/update/${c.maCTHD}.htm">
                        <input type="number" name="soLuong" min="1" class="form-control" value="${c.soLuong}"/> 
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${c.product.giaSP} đ</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${c.soTien} đ</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <a href="cart/delete/${c.maCTHD}.htm"><button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Xoá
                        </button></a></td>
                        <td><input type="submit" class="btn btn-info" value="Cập nhật"></td>
                    	</form>
                    </tr>
                 </c:forEach>
                 
                   
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h4>Tổng</h4></td>
                        <td class="text-right"><h5><strong>${tong} đ</strong></h5></td>
                        <td>   </td>
                        <td>   </td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h4>Khuyến mại</h4></td>
                        <td class="text-right"><h5><strong>0 đ</strong></h5></td>
                        <td>   </td>
                        <td>   </td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Tổng số tiền</h3></td>
                        <td class="text-right"><h4><strong>${tong} đ</strong></h4></td>
                        <td>   </td>
                        <td>   </td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="home/index/${user.username}.htm"><button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Tiếp tục mua hàng
                        </button></a></td>
                        <td>
                        <a href="cart/confirm/${mahd}/${tong}.htm"><button type="button" class="btn btn-success">
                            Đặt hàng <span class="glyphicon glyphicon-play"></span>
                        </button></a></td>
                        <td>   </td>
                        <td>   </td>
                    </tr>
                </tbody>
            </table>
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