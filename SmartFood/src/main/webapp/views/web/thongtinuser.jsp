<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin cá nhân</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="/template/web/thongtinuser/assets/css/thongtinuser.css"/>">
	
	    <!-- Footer -->
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="<c:url value="/template/web/Header+footer/assets/Footer.css"/>">
</head>

<body>
    <div class="main">

        <div class="container-fluid">

            <header class="header bg-red">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="<c:url value='trang-chu'/>">SmartFood</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="<c:url value='trang-chu'/>">Trang chủ<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled"></a>
                            </li>
                        </ul>
				        <c:if test="${empty USERMODEL}">
					        <div class="Login">
					            <button type="button" class="btn btn-primary" onclick="location.href='<c:url value='dang-nhap'/>'" >Đăng nhập</button>
					            <button type="button" class="btn btn-primary" onclick="location.href='<c:url value='dang-ky'/>'" >Đăng ký</button>
					        </div>
				        </c:if>
				        
				        <c:if test="${not empty USERMODEL}">
				          <div class="dropdown">
							  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
							    Xin chào, ${USERMODEL.nameCus}
							  </button>
							  <div class="dropdown-menu">
							    <a class="dropdown-item" href="<c:url value="/thong-tin"/>">Thông tin cá nhân</a>
							    <a class="dropdown-item" href="<c:url value="/gio-hang"/>">Giỏ hàng</a>
							  	<a class="dropdown-item" href="<c:url value="/lich-su-mua-hang"/>">Lịch sử mua hàng</a>
							  	<a class="dropdown-item" href="<c:url value="/dang-xuat"/>">Đăng xuất</a>
							  </div>
							</div>
				        </c:if>			
                    </div>
                </nav>
            </header>

            <div class="bodier">

                <div class="row bg-wrap">

                    <div class="col-sm-4 verticalLine mt-5 mb-3 ">
                        <div class="card mx-auto" style="width: 20rem;">
                            <ul class="list-group list-group-flush bg-medium-red">
                                <li class="list-group-item bg-red h3 text-light">${USERMODEL.nameCus}</li>
                                <li class="list-group-item bg-red h5 text-light"><a href="<c:url value='/thong-tin?action=edit'/>" id="btn-edit-info">🖊 Sửa thông tin</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-8 bg-medium-red">
                        <div class="h1 text-center">Hồ sơ</div>
                        <div class="row m-4 d-flex justify-content-center">

                            <div class="col-sm-6">
                                <form id="form-info">
                                    <div class="form-group">
                                        <h5>
                                            <label for="fullname">Họ Tên: </label>
                                            <span id="fullname">${USERMODEL.nameCus}</span>
                                        </h5>
                                    </div>

                                    <div class="form-group">
                                        <h5>
                                            <label for="username">Tên đăng nhập: </label>
                                            <span id="username">${USERMODEL.username}</span>
                                        </h5>
                                    </div>

                                    <div class="form-group">
                                        <h5>
                                            <label for="phoneNumber">Số điện thoại: </label>
                                            <span id="phoneNumber">${USERMODEL.phone}</span>
                                        </h5>
                                    </div>

                                    <div class="form-group">
                                        <h5>
                                            <label for="email">Email: </label>
                                            <span id="email">${USERMODEL.email}</span>
                                        </h5>
                                    </div>

                                    <div class="form-group">
                                        <h5>
                                            <label for="address">Địa chỉ: </label>
                                            <span id="address">${USERMODEL.address_}</span>
                                        </h5>
                                    </div>

                                </form>
                            </div>

                        </div>
                    </div>

                </div>

            </div>

            <footer class="footer bg-red">
                <div class="Footer">
	            <div class="app">
	                <button class="shop-app">
	                    <i class="fas fa-shopping-bag"></i>   
	                    <div class="data">
	                        EXPLORE IT <br><b>AppGallery</b>
	                    </div>
	                </button>
	                <button class="shop-app">
	                    <i class="fab fa-windows"></i>
	                    <div class="data">
	                        Download from <br><b>Window Store</b>
	                    </div>
	                </button>
	                <button class="shop-app">
	                    <i class="fab fa-google-play"></i>
	                    <div class="data">
	                        GET IT ON <br><b>Google Play</b>
	                    </div>
	                </button>
	                <button class="shop-app">
	                    <i class="fab fa-apple"></i>
	                    <div class="data">
	                        Avalible on the <br><b>App Store</b>
	                    </div>
	                </button>
	            </div>
	            <div class="infor" >
	                <i class="far fa-copyright">2021 All rights reserved</i>
	                <div class="list">
	                    <a href="#home">Giới Thiệu</a>
	                    <a href="#about">Tính Năng</a>
	                    <a href="#shop">Định Giá</a>
	                    <a href="#services">Bộ Sưu Tập</a>
	                    <a href="#plan">Team</a>
	                </div>
	                <a href="<c:url value="/dang-ky?action=shop"/>"><b>Tham gia với smart Food</b></a>
	            </div>
	        	</div>
            </footer>

        </div>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
        integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
        crossorigin="anonymous"></script>
    <script src="<c:url value="/template/web/thongtinuser/assets/mainThongTin.js"/>"></script>
</body>

</html>