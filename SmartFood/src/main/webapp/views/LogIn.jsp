<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Login SmartFood</title>
			
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
			<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
			<script src="<c:url value="/template/paging/jquery.twbsPagination.js"/>" type="text/javascript"></script>
		    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
		        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
             <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
			<link rel="stylesheet" href="<c:url value="/template/web/login_signup/assets/css/SignUp_LogIn.css"/>"> 
            <link rel="stylesheet" href="<c:url value="/template/web/login_signup/assets/css/style.css "/>"> 
        	
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
                                <img class="bg-signup-login" src="<c:url value="/template/web/login_signup/assets/image/bgSignup_Login.png "/>" alt="">
                            </div>
                            <div class="col-sm-5 d-flex justify-content-center">
                                <form action="<c:url value='/dang-nhap'/>" class="form" id="form-1" method="post">
                                    <h3 class="heading">Đăng nhập tài khoản SmartFood</h3>
                                    <p class="desc">Cùng nhau thưởng thức món ngon ❤️</p>
                                    <c:if test="${not empty message}">
                                        <div class="alert alert-${alert}">${message}</div>
                                    </c:if>

                                    <div class="spacer"></div>

                                    <div class="form-group">
                                        <label for="username" class="form-label">Tên đăng nhập</label>
                                        <input id="username" name="username" type="text" placeholder="spacespeaker123" class="form-control" required>
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="password" class="form-label">Mật khẩu</label>
                                        <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control" required>
                                        <span class="form-message"></span>
                                    </div>

                                    <button type="button" class="btn bg-red text-light d-flex flex-row hv">Quên mật khẩu?</button>
                                    <button type="submit" class="form-submit">Đăng nhập</button>

                                    <div class="spacer"></div>

                                    <a class="another-form" href="<c:url value="/dang-ky"/>">Đăng ký</a>
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

            <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>

            <%-- <script src="<c:url value="/template/web/login_signup/assets/SignUp_LogIn.js"/>"></script> --%>
    <script>
        var options = {
            form: '#form-1',
            formGroupSelector: '.form-group',
            errorSelector: '.form-message',
            rules: [
                Validator.isRequired('#username'),
                Validator.isUsername('#username', 'Username không được có khoảng trắng, chỉ gồm các ký tự, ký số và dấu _, không bắt đầu bằng số'),
                Validator.isPassword('#password', 6)
            ],
            onSubmit: function (data) {
                console.log(data);
            }
        };

        Validator(options);
    </script> --%>
        </body>

        </html>