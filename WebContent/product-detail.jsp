<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Product"%>
<%@page import="get.GetProduct"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>E Store - eCommerce HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="eCommerce HTML Template Free Download" name="keywords">
<meta content="eCommerce HTML Template Free Download" name="description">

<!-- Favicon -->
<link href="./client/static/img/favicon.ico" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="./client/static/lib/slick/slick.css" rel="stylesheet">
<link href="./client/static/lib/slick/slick-theme.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="./client/static/css/style.css" rel="stylesheet">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
		
	 	
	<!-- Product Detail Start -->
	<div class="product-detail">
		<div class="container-fluid">
			<div class="row" >
				<div class="col-lg-12">
					<div class="product-detail-top">
						<div class="row align-items-center" style="background-color: #F2F2F2;">
							<div class="col-md-3"></div>
							<div class="col-md-3" style="background-color: white; margin: 10px 0px;">
								<div class="product-slider-single normal-slider" >
									<img src="${product.getImgFirst() }" alt="Product Image" width="250px" height="300px" >
									<img src="${product.getImgLast() }" alt="Product Image" width="250px" height="300px" >
								</div>
								<div class="product-slider-single-nav normal-slider">
									<div class="slider-nav-img">
										<img src="${product.getImgFirst() }" alt="Product Image"  >
									</div>
									<div class="slider-nav-img">
										<img src="${product.getImgLast() }" alt="Product Image" >
									</div>

								</div>
							</div>
							<div class="col-md-1"></div>
							<div class="col-md-5">
								<div class="product-content">
									<div class="title">
										<h2>${product.getName()}</h2>
									</div>
									<div class="price">
										<h4>Giá:</h4>
										<fmt:formatNumber var="price" type="number" pattern="###,###,###" value="${product.getPrice() }"/>
										<p>
										${price }VNĐ
										</p>
									</div>
									<form action="${pageContext.request.contextPath }/AddToCartController?cart=open&command=add&productID=${product.getProductID()}" method="post">
										<div class="quantity">
											<h4>Số lượng:</h4>
											<div class="qty">
												<button class="btn-minus" type="button">
													<i class="fa fa-minus"></i>
												</button>
												<input type="text" value="1" name="quantity"/>
												<button class="btn-plus" type="button">
													<i class="fa fa-plus"></i>
												</button>
											</div>
										</div>
										<div class="action">
										<c:choose>
										<c:when test="${!empty user}">
											<button class="btn" type="submit" href="" style="border: solid 3px #FF6F61"><i
												class="fa fa-shopping-cart"></i>Thêm vào giỏ
											</button>
										</c:when>
										<c:otherwise>
											<button class="btn" onclick="handle()" type="button" style="border: solid 3px #FF6F61"> 
											<i class="fa fa-shopping-cart"></i>
											Thêm vào giỏ
											</button>										
										</c:otherwise>
										</c:choose>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="row product-detail-bottom">
						<div class="col-lg-3"></div>
						<div class="col-lg-6" style="text-align: center">
							<hr style="border-top: solid 2px ">
							<h3>Mô tả sản phẩm<h3>
							<hr style="border-top: solid 2px ">
							<div id="description" class="container tab-pane active">
								<h5 style="text-align: left;">${product.getDescription() }</h5>
							</div>
							
						</div>
						<div class="col-lg-3"></div>
					</div>
				</div>
			</div>
		</div>
		
			<script type="text/javascript">
			function handle() {
				if(confirm("Đăng nhập để tiếp tục")){
		        	window.location = "signin.jsp";
		        }
			 	else{
			 		window.location = "index.jsp";
			 	}	 	
			}
			 			
			 </script>
		
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Product Detail End -->
	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="./client/static/lib/easing/easing.min.js"></script>
	<script src="./client/static/lib/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="./client/static/js/main.js"></script>
</body>
</html>