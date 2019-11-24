<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<base href="${pageContext.servletContext.contextPath}/">
		<meta charset="utf-8"/>
		<title>${product.tenSP}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">  
		<script type="text/javascript" src="vendor/bootstrap.js"></script>
		<script type="text/javascript" src="js/1.js"></script>
		<link rel="stylesheet" href="vendor/bootstrap.css">
		<link rel="stylesheet" href="vendor/font-awesome.css">
	 	<link rel="stylesheet" href="css/index.css">
	    <link rel="stylesheet" href="css/login.css">
	    <link rel="stylesheet" href="css/single.css">
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
				<li><a href="home/man-watch/${user.username}.htm">Đồng hồ nam</a></li>
				<li><a href="home/woman-watch/${user.username}.htm">Đồng hồ nữ</a></li>
				<li><a href="home/children-watch/${user.username}.htm">Đồng hồ trẻ em</a></li>
    		</ul>
    			<ul class="nav navbar-nav navbar-right">
    				<c:choose>
    						<c:when test="${user.username==null}">
    							
    						</c:when>
    						<c:otherwise>
	    						<li><a href="cart/index/${user.username}.htm"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
    						</c:otherwise>
    				</c:choose>
    					
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

    
    <div class="container" style="background-color: white">
    <div class="row">
      <div class="col-lg-12">
        <div class="card mb-10">
          <div class="card-header">
            <nav class="header-navigation">
              <!-- <a href="#" class="btn btn-link">Back to the list</a> -->

              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="home/index/${user.username}.htm">Trang chủ</a></li>
                <li class="breadcrumb-item active" aria-current="page">${product.tenSP}</li>
              </ol>

              <!-- <div class="btn-group">
                <a href="#" class="btn btn-link btn-share">Share</a>
                <a href="#" class="btn btn-link">Sell item like this</a>
              </div> -->
            </nav>
          </div>
          <div class="card-body store-body">
            <div class="product-info">
              <div class="product-gallery">
                <!-- <div class="product-gallery-thumbnails">
                  <ol class="thumbnails-list list-unstyled">
                    <li><img src="https://via.placeholder.com/350x350/ffcf5b" alt=""></li>
                    <li><img src="https://via.placeholder.com/350x350/f16a22" alt=""></li>
                    <li><img src="https://via.placeholder.com/350x350/d3ffce" alt=""></li>
                    <li><img src="https://via.placeholder.com/350x350/7937fc" alt=""></li>
                    <li><img src="https://via.placeholder.com/350x350/930000" alt=""></li>
                  </ol>
                </div> -->
                <div class="product-gallery-featured">
                  <img src="${product.anhSP}" alt="" >
                </div>
              </div>
              <div class="product-seller-recommended">
                <!-- <h3 class="mb-5">More from David's Store</h3> -->
                <!-- <div class="recommended-items card-deck">
                  <div class="card">
                    <img src="https://via.placeholder.com/157x157" alt="" class="card-img-top">
                    <div class="card-body">
                      <h5 class="card-title">U$ 55.00</h5>
                      <span class="text-muted"><small>T-Shirt Size X - Large - Nickony Brand</small></span>
                    </div>
                  </div>
                  <div class="card">
                    <img src="https://via.placeholder.com/157x157" alt="" class="card-img-top">
                    <div class="card-body">
                      <h5 class="card-title">U$ 55.00</h5>
                      <span class="text-muted"><small>T-Shirt Size X - Large - Nickony Brand</small></span>
                    </div>
                  </div>
                  <div class="card">
                    <img src="https://via.placeholder.com/157x157" alt="" class="card-img-top">
                    <div class="card-body">
                      <h5 class="card-title">U$ 55.00</h5>
                      <span class="text-muted"><small>T-Shirt Size X - Large - Nickony Brand</small></span>
                    </div>
                  </div>
                  <div class="card">
                    <img src="https://via.placeholder.com/157x157" alt="" class="card-img-top">
                    <div class="card-body">
                      <h5 class="card-title">U$ 55.00</h5>
                      <span class="text-muted"><small>T-Shirt Size X - Large - Nickony Brand</small></span>
                    </div>
                  </div>
                </div> -->
                <!-- /.recommended-items-->
                <!-- <p class="mb-5 mt-5"><a href="#">See all ads from this seller</a></p> -->
                <div class="product-description mb-5">
                  

                  <h2 class="mb-5">Thông tin sản phẩm</h2>
                  <p>${product.moTaSP}</p>
                 </div>

                <!-- <div class="product-faq mb-5">
                  <h2 class="mb-3">Questions and Answers</h2>
                  <p class="text-muted">What information do you need?</p>
                  <div class="main-questions d-inline" data-container="body" data-toggle="popover" data-placement="right" data-content="Are you in doubt? these shortcuts can help you!">
                    <a href="#" class="btn btn-outline-primary">Cost and Delivery time</a>
                    <a href="#" class="btn btn-outline-primary">Warranty</a>
                    <a href="#" class="btn btn-outline-primary">Payment options</a>
                  </div>
                </div> -->
                <div class="product-comments">
                  <h3 class="mb-2">Bình luận</h3>
                  <form action="" class="form-inline mb-5">
                    <textarea name="" id="" cols="50" rows="2" class="form-control mr-4" placeholder="Viết bình luận..."></textarea>
                    <button class="btn btn-lg btn-primary" style="margin-left: 20px">Gửi</button>
                  </form>
                 <!--  <h5 class="mb-5">Lastest Questions</h5>
                 <ol class="list-unstyled last-questions-list">
                   <li><i class="fa fa-comment"></i> <span>Hello david, can i pay with credit card?</span></li>
                   <li><i class="fa fa-comment"></i> <span>can i send it to another address?</span></li>
                 </ol> -->
                </div>
              </div>
            </div>
            <div class="product-payment-details">
              <p class="last-sold text-muted"><small>Còn ${product.soLuongSP} sản phẩm</small></p>
              <h4 class="product-title mb-2" style="color: darkblue;">${product.tenSP}</h4>
              <h2 class="product-price display-4 text-center" style="color: darkred">${product.giaSP}₫</h2>
              <br>
              <h3 class="mb-5" style="color: gray;">Thông số kỹ thuật</h3>
                  <table class="table table-hover table-bordered">
                      
                        <tr>
                          <th scope="col">Tên sản phẩm</th>
                          <td scope="row">${product.tenSP}</td>
                        </tr>
                        <tr>
                          <th scope="col">Loại sản phẩm</th>
                          <td scope="row">${product.type.tenLoaiSP}</td>
                        </tr>
                        <tr>
                          <th scope="col">Hãng sản xuất</th>
                          <td scope="row">${product.hangSX}</td>
                        </tr>
                       
                    </table>
              <!-- <p class="text-success"><i class="fa fa-credit-card"></i> 12x or  5x $ 5.00</p>
              <p class="mb-0"><i class="fa fa-truck"></i> Delivery in all territory</p>
              <div class="text-muted mb-2"><small>know more about delivery time and shipping forms</small></div> -->
              <label for="quant">Số lượng</label>
              <c:set var="soluong" scope="session" value="1"/>
              <input type="number" name="soluong" min="1" id="soluong" class="form-control mb-5 input-lg" value="1"> 
              
					    <c:choose>
    						<c:when test="${user.username==null}">
	    						<form:form action="user/login.htm">
	    							<button type="submit"  class="btn btn-default addcart">+<i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
	    						</form:form>
    						</c:when>
    						<c:otherwise>
	    						<form:form action="home/addtocart/${p.maSP}/${user.username}/${soluong}.htm" method="post">
		    						<button type="submit"  class="btn btn-default addcart">+<i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
	    						</form:form>
    						</c:otherwise>
    					</c:choose>	 
              <!-- <button class="btn btn-primary btn-lg btn-block"></button>
               -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <hr>
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
        <div><a href="home.html"><img class="center" src="images/logo.png"></a></div>
        <div><h4>© 2019 - Bản quyền thuộc về Vũ Dương</h4></div>
    </div>

</body>
</html>