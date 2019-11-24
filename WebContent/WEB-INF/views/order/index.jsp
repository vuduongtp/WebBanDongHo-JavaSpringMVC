<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<base href="${pageContext.servletContext.contextPath}/">
		<meta charset="utf-8"/>
		<title>Quản lý đơn hàng</title>
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
    			<c:set var="timkiem" scope="session" value=""/>
    			<form class="navbar-form navbar-left" role="search" action="home/search.htm">
    				<div class="form-group">
    					<input type="text" name="timkiem" value="${timkiem}" class="form-control" placeholder="Bạn tìm gì...">
    				</div>
    				<button type="submit" class="btn btn-default">Tìm kiếm</button>
    			</form>
    		
    			<ul class="nav navbar-nav navbar-right">
    				
    				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-user"></i> Admin<span class="caret"></span></a>
						<ul class="dropdown-menu">
				         
				          <li><a href="user/userinfo/${user.username}.htm"><i class="fa fa-user-md"></i> Thông tin tài khoản</a></li>
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

<h2 class="text-center" style="color: darkblue;margin-top: 50px;">QUẢN LÝ WEBSITE</h2>
    
<div class="container main-container" >
<div class="col-md-2 sidebar">
    <div class="row">
        <div class="" style="margin-left: 30px; margin-bottom: 15px; font-size: 16px;"><a href="home.html"><i class="glyphicon glyphicon-home"></i></a> / Admin / Quản lý đơn hàng</div>
    <!-- uncomment code for absolute positioning tweek see top comment in css -->
    <div class="absolute-wrapper"> </div>
    <!-- Menu -->
    <div class="side-menu">
        <nav class="navbar navbar-default" role="navigation">
            <!-- Main Menu -->
            <div class="side-menu-container">
                <ul class="nav navbar-nav">
                    <li><a href="admin/user.htm"><span class="glyphicon glyphicon-user"></span> Quản lý khách hàng</a></li>
                    <li><a href="product/index.htm"><span class="glyphicon glyphicon-lock"></span> Quản lý sản phẩm</a></li>
                    <li class="active"><a href="order/index.htm"><span class="glyphicon glyphicon-paste"></span> Quản lý đơn hàng</a></li>

                    <!-- Dropdown-->
                    <li class="panel panel-default" id="dropdown">
                        <a data-toggle="collapse" href="#dropdown-lvl1">
                            <span class="glyphicon glyphicon-user"></span> Tài khoản <span class="caret"></span>
                        </a>

                        <!-- Dropdown level 1 -->
                        <div id="dropdown-lvl1" class="panel-collapse collapse">
                            <div class="panel-body">
                                <ul class="nav navbar-nav">
                                    <li><a href="info-user.html"><i class="fa fa-user-md"></i> Thông tin tài khoản</a></li>
                                    <li><a href="user/login.htm"><i class="fa fa-sign-out"></i> Đăng xuất</a></li>

                                    <!-- Dropdown level 2 -->
                                    <!-- <li class="panel panel-default" id="dropdown">
                                        <a data-toggle="collapse" href="#dropdown-lvl2">
                                            <span class="glyphicon glyphicon-off"></span> Sub Level <span class="caret"></span>
                                        </a>
                                        <div id="dropdown-lvl2" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <ul class="nav navbar-nav">
                                                    <li><a href="#">Link</a></li>
                                                    <li><a href="#">Link</a></li>
                                                    <li><a href="#">Link</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </li> -->
                                </ul>
                            </div>
                        </div>
                    </li>

                    <!-- <li><a href="#"><span class="glyphicon glyphicon-signal"></span> Link</a></li> -->

                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>

    </div>
</div>          </div>
        <div class="col-md-10 content">
              <div class="panel panel-default">
    <div class="panel-heading text-center" style="font-size: 20px;">
        Quản lý Đơn Hàng
    </div>


    <div class="panel-body ">
        
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <c:forEach var="hd" items="${hd}" varStatus="status">  
            <table class="table table-hover table-bordered table-responsive" style="margin-top: 25px;">
            
                <thead style="border: solid 2px blue; color:red;">               
                    <tr style="border: solid 2px blue; color:red;">
                    	<th>STT</th>
                        <th>Mã đơn hàng</th>
                        <th>Ngày tạo</th>
                        <th class="text-center">Trạng thái</th>
                        <th class="text-center"></th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody style="border-left:  solid 2px blue; border-right:  solid 2px blue ">
                	<tr>
                        <th>${status.index+1}</th>
                        <th>  ${hd.maHD}  </th>
                        <th>${hd.ngay}</th>
                        <th class="text-center">${hd.trangThai}</th>
                        <c:choose>
    						<c:when test="${hd.trangThai=='Cancelled'}">
    							<td class="col-sm-1 col-md-1">
			                        <a href="order/upstore/${hd.maHD}.htm"><button type="button" class="btn btn-primary">
			                            <span class="glyphicon glyphicon-refresh"></span> Phục hồi
			                        </button></a>
			                    </td>
    						</c:when>
    						<c:when test="${hd.trangThai=='Completed'}">
    							<td></td>
    						</c:when>
    						<c:otherwise>	
	    						<td class="col-sm-1 col-md-1">
			                        <a href="order/delete/${hd.maHD}.htm"><button type="button" class="btn btn-danger">
			                            <span class="glyphicon glyphicon-remove"></span> Huỷ
			                        </button></a>
			                    </td>
    						</c:otherwise>
    					</c:choose>
                        <c:choose>
    						<c:when test="${hd.trangThai=='Confirmed'}">
    							
    							<td class="col-sm-1 col-md-1">
			                        <a href="order/complete/${hd.maHD}.htm"><button type="button" class="btn btn-success">
			                            <span class="glyphicon glyphicon-ok"></span> Đã giao
			                        </button></a>
			                    </td>
    						</c:when>
    						<c:otherwise>	
	    						<th></th>
    						</c:otherwise>
    					</c:choose>
                        
                   </tr>
                </tbody>
                
                <thead style="border-left:  solid 2px blue; border-right:  solid 2px blue;color:#800000;">
                    <tr>
                        <td>   </td>
                        <th>Sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Số lượng</th>
                        <th class="text-center">Giá</th>
                        <th class="text-center" >Số tiền</th>
                    </tr>
                </thead>
                <tbody style="border:  solid 2px blue"> 
                 <c:forEach var="c" items="${hd.ctHoaDons}" varStatus="status">                
                    <tr>
                        <td>   </td>
                    	<td>${status.index+1}</td>
                        <td class="col-sm-8 col-md-6">
	                        <div class="media">
	                            <a class="thumbnail pull-left" href="home/singleproduct/${c.product.maSP}/${user.username}.htm"> <img class="media-object" src="${c.product.anhSP}" style="width: 70px; height: 70px;"> </a>
	                            <div class="media-body" style="padding-top: 20px; padding-left: 10px;">
	                                <h4 class="media-heading"><a href="home/singleproduct/${c.product.maSP}/${user.username}.htm">${c.product.tenSP}</a></h4>
	                            </div>
	                        </div>
                    	</td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">${c.soLuong}</td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${c.product.giaSP} đ</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${c.soTien} đ</strong></td>
                    </tr>
                    
                   
				</c:forEach>
				 <tr>
                        <td>   </td>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th style="color:blue;">Tổng tiền</th>
                        <th style="color:blue;">${hd.soTien} đ</th>
                    </tr>
                </tbody>  
            </table>

            </c:forEach>
            
        </div>
    
    </div>


</div>
</div>
</div>

    <script type="text/javascript">
        $(function () {
            $('.navbar-toggle-sidebar').click(function () {
                $('.navbar-nav').toggleClass('slide-in');
                $('.side-body').toggleClass('body-slide-in');
                $('#search').removeClass('in').addClass('collapse').slideUp(200);
            });

            $('#search-trigger').click(function () {
                $('.navbar-nav').removeClass('slide-in');
                $('.side-body').removeClass('body-slide-in');
                $('.search-input').focus();
            });
        });
    </script>
    
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