<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <title>Smart Food</title>
    <!-- font awesome cdn link  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="<c:url value="/template/web/history/history.css"/>">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	<script src="<c:url value="/template/paging/jquery.twbsPagination.js"/>" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <link href="<c:url value="/template/web/body/assets/css/body.css"/>" rel="stylesheet" type="text/css" media="all"/>

	<link href="<c:url value="/template/web/body/assets/css/body.css"/>" rel="stylesheet" type="text/css" media="all"/>
    
  </head>
    <body>
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
    
        <div class="row">
            <div class="col-3">   
                    <a href="#"><i class="fas fa-history"></i> Lịch Sử mua hàng</a>
              </div>  
              <div class="col-9">
                  <div class="Title">
                  </div>
                  <div class="history-table">
                    <table class="table table-hover">
                        <thead>
                            <th scope="col"><input type="checkbox"></th>
                            <th scope="col">Mặt Hàng</th>
                            <th scope="col">Quán Ăn</th>
                            <th scope="col">Số Lượng</th>
                            <th scope="col">Đơn giá</th>
                            <th scope="col">Thời gian mua</th>
                        </thead>
                        <tbody>
                        	<c:forEach var="item" items="${list.listResult}">
	                            <tr>
	                                <th scope="col"><input type="checkbox"></th>
	                                <td>${item.nameFood}</td>
	                            	<td>${item.nameStore}</td>
	                                <td>${item.quantity}</td>
	                                <td>${item.price}</td>
	                                <td>${item.dateAdded}</td>
	                            </tr>
                            </c:forEach>
                        </tbody>
                      </table>
                  </div>
              </div>
        </div>
        

    </body>
</html>