<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmartFood</title>
    
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	<script src="<c:url value="/template/paging/jquery.twbsPagination.js"/>" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <link href="<c:url value="/template/web/body/assets/css/body.css"/>" rel="stylesheet" type="text/css" media="all"/>
    <!-- Footer -->
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="<c:url value="/template/web/Header+footer/assets/Footer.css"/>">


</head>

<body>
	<form action="<c:url value='trang-chu'/>" id="formSubmit" method="get">
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
                                <a class="nav-link" href="<c:url value='trang-chu'/>">Trang ch???<span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled"></a>
                            </li>
                        </ul>
				        <c:if test="${empty USERMODEL}">
					        <div class="Login">
					            <button type="button" class="btn btn-primary" onclick="location.href='<c:url value='dang-nhap'/>'" >????ng nh???p</button>
					            <button type="button" class="btn btn-primary" onclick="location.href='<c:url value='dang-ky'/>'" >????ng k??</button>
					        </div>
				        </c:if>
				        
				        <c:if test="${not empty USERMODEL}">
				          <div class="dropdown">
							  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
							    Xin ch??o, ${USERMODEL.nameCus}
							  </button>
							  <div class="dropdown-menu">
							    <a class="dropdown-item" href="<c:url value="/thong-tin"/>">Th??ng tin c?? nh??n</a>
							    <a class="dropdown-item" href="<c:url value="/gio-hang"/>">Gi??? h??ng</a>
							    <a class="dropdown-item" href="<c:url value="/lich-su-mua-hang"/>">L???ch s??? mua h??ng</a>
							    <a class="dropdown-item" href="<c:url value="/dang-xuat"/>">????ng xu???t</a>
							  </div>
							</div>
				        </c:if>			
                    </div>
                </nav>
            </header>

            <div class="bodier">

                <div class="bg-smartfood">
                    <div class="card mb-3">
                        <img src="<c:url value="/template/web/body/assets/image/bgsmartfood.png"/>" class="card-img-top" alt="SmartFood Backround">
                    </div>
                </div>

                <div class="row bg-wrap">

                    <div class="col-sm-2 random mt-3">
                        <div class="card" style="width: 14rem;">
                            <span class="card-text bg-red h3 text-center text-light p-2">H??m nay ??n g??</span>
                            <img src="<c:url value="/template/web/body/assets/image/imgRandom.jpg"/>" class="img-fluid" alt="Random Background">
                            <div class="card-body bg-medium-red text-center">
<%--                             	<form action="<c:url value='trang-chu'/>" id="randomForm" method="get">
                            		<input type="hidden" value="true" id="random" name="random"/>
                            	</form>
                                <!-- <button type="submit" form="randomForm" class="btn bg-red" >Random</button> --> --%>
                                <button type="button" class="btn bg-red" onclick="location.href='<c:url value='trang-chu?action=random'/>'" >Random</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8 sanpham mt-3">
                    	<form action="<c:url value='trang-chu'/>" id="searchForm" method="get">
	                        <div class="row justify-content-center">
	                            <div class="input-group mb-3 col-sm-8 ">
	                                <div class="input-group-prepend">
	                                    <button class="input-group-text bg-red">????</button>
	                                </div>
	                                
		                                <input type="text" name="search" class="form-control border-item"
		                                    aria-label="Amount (to the nearest dollar)" placeholder="B???n mu???n ??n g???">
		                                <div class="input-group-append">
		                                    <button class="input-group-text bg-red" >T??m ki???m</button>
		                                </div>
	                                
	                            </div>
	                        </div>
						</form>
                         <div class="row">
                         	<c:forEach var="item" items="${model.listResult}">
                            <div class="col-sm-3 mb-3">
                                <a href="<c:url value="chi-tiet-mon-an?id=${item.idFood}"/>" class="card border-food">
                                    <img src="<c:url value="/template/web/foodImage/${item.image}"/>" class="foodimg" alt="..."> 
                               
                                    <div class="card-body">
                                        <h5 class="card-title">${item.name_}</h5>
                                        <p class="card-text">${item.price}VN??</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">${item.storeName}</small>
                                    </div>
                                </a>
                            </div>
                            </c:forEach>
                        </div>

                        <div class="d-flex justify-content-center">
                            <!-- <ul class="pagination" id="pagination"></ul> -->
                            <!-- <input type="hidden" value="" id="page" name="page" /> 
                            <input type="hidden" value="" id="maxPageItem" name="maxPageItem" />
							<input type="hidden" value="" id="type" name="type" /> -->
                        </div> 
                    </div>

                    <div class="col-sm-2 trending mt-3">
                        <div class="card" style="width: 14rem;">
                            <div class="card-header bg-red text-center text-light h3">
                                Xu h?????ng
                            </div>
                            <ul class="list-group list-group-flush">
                            	<c:forEach var="trend" items="${trend.listResult}">
	                                <li class="list-group-item bg-medium-red">${trend.name_}</li>
                            	</c:forEach>
                            </ul>
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
	                    <a href="#home">Gi???i Thi???u</a>
	                    <a href="#about">T??nh N??ng</a>
	                    <a href="#shop">?????nh Gi??</a>
	                    <a href="#services">B??? S??u T???p</a>
	                    <a href="#plan">Team</a>
	                </div>
	                <a href="<c:url value="/dang-ky?action=shop"/>"><b>Tham gia v???i smart Food</b></a>
	            </div>
	        	</div>
            </footer>

        </div>

    </div>
    </form>   
	<%-- <script src="<c:url value="/template/paging/jquery.twbsPagination.js" />"></script> --%>
<!--     <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"
        integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2"
        crossorigin="anonymous"></script> -->
    <script src="<c:url value="/template/web/body/assets/main.js"/>"></script>
    
    <!-- <script type="text/javascript">
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: 5,
            visiblePages: 3,
            onPageClick: function (event, page) {
                console.info(page + ' (from options)');
            }
        }).on('page', function (event, page) {
            console.info(page + ' (from event listening)');
        });
    }); -->
</body>
</html>