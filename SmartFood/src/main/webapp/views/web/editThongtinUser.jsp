<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="editUrl" value="/chinh-sua-thong-tin" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa thông tin</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value='/template/web/thongtinuser/assets/css/thongtinuser.css'/>">
</head>

<body>
    <div class="main">

        <div class="container-fluid">

            <header class="header bg-red">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="#">SmartFood</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
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
                            <input class="form-control mr-sm-2" type="search" placeholder="Món ăn, cửa hàng,..."
                                aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
                        </form>
                    </div>
                </nav>
            </header>

            <div class="bodier">

                <div class="row bg-wrap">

                    <div class="col-sm-4 verticalLine mt-5 mb-3 ">
                        <div class="card mx-auto"  style="width: 20rem;">
                            <ul class="list-group list-group-flush bg-medium-red">
                                <li class="list-group-item bg-red h3 text-light">${USERMODEL.nameCus}</li>
                                <li class="list-group-item bg-red h5 text-light"><a href="#">🖊 Sửa thông tin</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-8 bg-medium-red">
                        <div class="h1 text-center">Hồ sơ</div>
                        <div class="row m-4 d-flex justify-content-center">

                            <div class="col-sm-6">
                                <form action="<c:url value='/thong-tin'/>" id="form-info-edit" method="post">
                                    <div class="form-group">
                                        <label for="fullname">Họ Tên</label>
                                        <input type="text" class="form-control" id="fullname" name="nameCus" value="${USERMODEL.nameCus}" readonly="readonly">
                                    </div>

                                    <div class="form-group">
                                        <label for="username">Tên đăng nhập</label>
                                        <input type="text" class="form-control" id="username" name="username" value="${USERMODEL.username}" readonly="readonly">
                                    </div>

                                    <div class="form-group">
                                        <label for="phoneNumber">Số điện thoại</label>
                                        <input type="number" class="form-control" id="phoneNumber" name="phone" value="${USERMODEL.phone}" >
                                    </div>

                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" name="email" value="${USERMODEL.email}" id="email">
                                    </div>

                                    <div class="form-group">
                                        <label for="address">Địa chỉ</label>
                                        <input type="text" class="form-control" name="address_" value="${USERMODEL.address_}" id="address">
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Mật khẩu</label>
                                        <input type="password" class="form-control" name="password" id="password">
                                    </div>

                                    <div class="form-group">
                                        <label for="confirm-password">Xác nhận mật khẩu</label>
                                        <input type="password" class="form-control" id="confirm-password">
                                    </div>
									<input type="hidden" value="${USERMODEL.idCus}" id="idCus" name="idCus">
                                    <button type="submit" class="btn bg-red" id="btn-confirm-edit">Xác nhận thay đổi</button>
                                </form>
                            </div>

                        </div>
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

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
        integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
        crossorigin="anonymous"></script>
    <%-- <script src="<c:url value='/template/web/thongtinuser/assets/mainSuaThongTin.js'/>"></script> --%>

</body>
</html>