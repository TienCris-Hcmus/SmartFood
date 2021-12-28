<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dang ky Shop</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="/template/web/DangKy_NewShop/assets/css/dangkyshop.css"/>">
    <link rel="stylesheet" href="<c:url value="/template/web/DangKy_NewShop/assets/css/style.css"/>">
	
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
                        
                    </div>
                </nav>
            </header>

            <div class="bodier bg-wrap">

                <div class="row">
                    <div class="col-sm-7">
                        <img class="bg-signup-login" src="<c:url value="/template/web/DangKy_NewShop/assets/image/bgSignup_Login.png"/>" alt="">
                    </div>
                    <div class="col-sm-5 d-flex justify-content-center">
                        <form action="<c:url value="dang-ky?action=submitShop"/>" method="POST" class="form" id="form_signup_shop">
                            <div class="form-group">
                                <label for="shopname" class="form-label">Tên Shop</label>
                                <input id="shopname" name="shopname" type="text" class="form-control" required>
                                <span class="form-message"></span>
                            </div>

                            <div class="form-group">
                                <label for="phone" class="form-label">Số điện thoại</label>
                                <input id="phone" name="phone" type="number" class="form-control" required>
                                <span class="form-message"></span>
                            </div>

                            <div class="spacer"></div>

                            <button class="form-submit">Đăng ký</button>
                        </form>
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
    <script src="<c:url value="/template/web/DangKy_NewShop/main.js"/>"></script>
</body>

</html>