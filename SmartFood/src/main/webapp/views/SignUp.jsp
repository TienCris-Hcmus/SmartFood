<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Sign up for SmartFood</title>

            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
            <link rel="stylesheet" href="<c:url value=" /template/web/login_signup/assets/css/SignUp_LogIn.css "/>">
            <link rel="stylesheet" href="<c:url value=" /template/web/login_signup/assets/css/style.css "/>">
        </head>

        <body>
            <div class="main">
                <div class="container-fluid">
                    <header class="header bg-red">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a class="navbar-brand" href="#">SmartFood</a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="#">Trang chủ<span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link disabled">Disabled</a>
                                    </li>
                                </ul>
                                <form class="form-inline my-2 my-lg-0">
                                    <input class="form-control mr-sm-2" type="search" placeholder="Món ăn, cửa hàng,..." aria-label="Search">
                                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
                                </form>
                            </div>
                        </nav>
                    </header>

                    <div class="bodier bg-wrap">

                        <div class="row">
                            <div class="col-sm-7">
                                <img class="bg-signup-login" src="<c:url value=" /template/web/login_signup/assets/image/bgSignup_Login.png "/>" alt="">
                            </div>
                            <div class="col-sm-5 d-flex justify-content-center">
                                <!-- Form đăng ký -->
                                <form action="" method="POST" class="form" id="form-1">
                                    <h3 class="heading">Đăng ký tài khoản SmartFood</h3>
                                    <p class="desc">Cùng nhau thưởng thức món ngon ❤️</p>

                                    <div class="spacer"></div>

                                    <div class="form-group">
                                        <label for="fullname" class="form-label">Họ tên</label>
                                        <input id="fullname" name="fullname" type="text" placeholder="VD: Trần Trọng Trĩ" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="username" class="form-label">Tên đăng nhập</label>
                                        <input id="username" name="username" type="text" placeholder="VD: trongtri" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="email" class="form-label">Email</label>
                                        <input id="email" name="email" type="text" placeholder="VD: email@domain.com" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="phone" class="form-label">Số điện thoại</label>
                                        <input id="phone" name="phone" type="number" placeholder="VD: 0972218588" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="dob" class="form-label">Địa chỉ</label>
                                        <input id="dob" name="dob" type="text" placeholder="VD: Tòa B4, KTX khu B" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="password" class="form-label">Mật khẩu</label>
                                        <input id="password" name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="password_confirmation" class="form-label">Nhập lại mật khẩu</label>
                                        <input id="password_confirmation" name="password_confirmation" placeholder="Nhập lại mật khẩu" type="password" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <button class="form-submit">Đăng ký</button>
                                </form>
                            </div>
                        </div>

                    </div>

                    <footer class="footer bg-red">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            Thông tin website
                        </nav>
                    </footer>

                </div>

            </div>

            <script src="<c:url value=" /template/web/login_signup/assets/SignUp_LogIn.js "/>"></script>
            <%--<script src="../template/web/login_signup/assets/SignUp_LogIn.js"></script>--%>
            <script>
                var options = {
                    form: '#form-1',
                    formGroupSelector: '.form-group',
                    errorSelector: '.form-message',
                    rules: [
                        Validator.isRequired('#fullname'),
                        Validator.isUpperFirst('#fullname', 'Vui lòng viết hoa chữ cái đầu'),
                        Validator.isRequired('#username'),
                        Validator.isUsername('#username', 'Username không được có khoảng trắng, chỉ gồm các ký tự, ký số và dấu _, không bắt đầu bằng số'),
                        Validator.isRequired('#email'),
                        Validator.isEmail('#email'),
                        Validator.isRequired('#phone'),
                        Validator.isPhone('#phone', 'Vui lòng nhập đủ 10 số và bắt đầu bởi số 0'),
                        Validator.isRequired('#dob'),
                        Validator.isDate('#dob', 'Vui lòng nhập đúng định dạng dd/mm/yyyy'),
                        Validator.isPassword('#password', 6),
                        Validator.isPassword_Confirm('#password_confirmation', function() {
                            return document.querySelector('#form-1 #password').value;
                        }, 'Mật khẩu nhập lại không chính xác')
                    ],
                    onSubmit: function(data) {
                        console.log(data);
                    }
                };

                Validator(options);
            </script>
        </body>

        </html>