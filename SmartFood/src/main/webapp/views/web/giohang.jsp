<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gio Hang</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="/template/web/giohang/assets/css/giohang.css"/>">
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
                    <div class="col-sm-8">
                        <div class="h1 text-center">Giỏ Hàng</div>
                        <div class="row">
							<c:forEach var='item' items='${cart.listResult}'>
	                            <div class="col-sm-6">
	                                <div class="card mb-3 bg-medium-red" style="max-width: 540px;">
	                                    <div class="row no-gutters">
	                                        <div class="col-md-4">
	                                            <img class="foodimg" src="<c:url value="/template/web/foodImage/${item.image}"/>" alt="foodImg">
	                                        </div>
	                                        <div class="col-md-8">
	                                            <div class="card-body">
	                                                <h5 class="card-title">${item.name_}</h5>
	                                                <p class="card-text">${item.address_}</p>
	                                                <p class="card-text"><small class="text-muted"><span id="Money">${item.price}</span><span>VNĐ</span></small></p>
	                                                <form action="<c:url value="/gio-hang"/>" id="formMinus${item.iDFood}" method="post">
	                                                	<input type="hidden" name="idFood" value="${item.iDFood}">
	                                                	<input type="hidden" name="idBill" value="${item.iDBill}">
	                                                	<input type="hidden" name="quantity" value="${item.quantity}">
	                                                	<input type="hidden" name="action" value="minus">
	                                                </form>
	                                                <button type="submit" form="formMinus${item.iDFood}" class="btn btn-number-dec">-</button>
	                                                <span class="h4 spacer_left_right" id="number-product">${item.quantity}</span>

	                                                <button type="submit" form="formAdd${item.iDFood}" class="btn btn-number-inc">+</button>
                                        			<form action="<c:url value="/gio-hang"/>" id="formAdd${item.iDFood}" method="post">
	                                                	<input type="hidden" name="idFood" value="${item.iDFood}">
	                                                	<input type="hidden" name="idBill" value="${item.iDBill}">
	                                                	<input type="hidden" name="action" value="add">
	                                                </form>
	                                                <form action="<c:url value="/gio-hang"/>" id="formDelete" method="post">
	                                                	<button type="submit" class="btn bg-red" id="delete-product">Xóa</button>
	                                                	<input type="hidden" name="idFood" value="${item.iDFood}">
	                                                	<input type="hidden" name="idBill" value="${item.iDBill}">
	                                                	<input type="hidden" name="action" value="delete">
	                                            	</form>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
                            </c:forEach>


                        </div>
                    </div>
					
                    <div class="col-sm-4 verticalLine mt-3 mb-3 ">
                        <div class="card mx-auto" style="width: 20rem;">
                            <ul class="list-group list-group-flush bg-medium-red">
                                <li class="list-group-item bg-red h5 text-light">🏠 ${USERMODEL.nameCus}: ${USERMODEL.address_}</li>
                                <!-- <li class="list-group-item bg-red h5 text-light">⏱ 30 mins</li> -->
                                <li class="list-group-item bg-red h5 text-light">📞 ${USERMODEL.phone}</li>
                            </ul>
                        </div>

                        <div class="card mx-auto mt-3" style="width: 20rem;">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item h6">Tạm tính: <span id="tempMoney"></span><span>VNĐ</span></li>
                                <li class="list-group-item h6">Phí vận chuyển: <span id="shipMoney">15000</span><span>VNĐ</span></li>
                                <li class="list-group-item h6">Tổng: <span id="totalMoney"></span><span>VNĐ</span></li>
                            </ul>
                        </div>

                        <div class="d-flex flex-row justify-content-center mt-3">
                            <button type="button" class="btn bg-red text-light" id="btn-thanhtoan" onclick="location.href='<c:url value='/thanh-toan'/>'">Thanh toán</button>
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
    <script src="<c:url value="/template/web/giohang/assets/main.js"/>"></script>
</body>

</html>