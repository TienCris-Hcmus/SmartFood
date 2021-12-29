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
    
    <!-- Header của Trung  -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link href="<c:url value="/template/web/body/assets/css/body.css"/>" rel="stylesheet" type="text/css" media="all"/>
  
  	<!-- Quang template  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link rel="stylesheet" href="<c:url value="/template/web/foodDetail/product details.css"/>">
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
							    <a class="dropdown-item" href="<c:url value="/dang-xuat"/>">Đăng xuất</a>
							  	<a class="dropdown-item" href="<c:url value="/lich-su-mua-hang"/>">Lịch sử mua hàng</a>
							  </div>
							</div>
				        </c:if>			
                    </div>
                </nav>
            </header>

        <div class="row">
            <div class="col-3">   
                    <a href="#"><i class="fas fa-info-circle"></i> Chi Tiết Sản Phẩm</a>
                    <a href="#"><i class="far fa-comment-dots"></i> Báo cáo</a>
              </div>  
              <div class="col-9">
                  <div class="Title">
                    <b>Chi Tiết Sản Phẩm</b>
                  </div>
                  <div class="product-detail">
                      <div class="row">
                          <div class="col-6">
                            <img src="<c:url value="/template/web/foodImage/${food.image}"/>" alt="">
                            <p><b>Mô Tả</b><br>${food.describe}</p>
                          </div>
                          <div class="col">
                              <b>${food.name_}</b>
                              <a href="#"><i class="fas fa-home"></i> Cửa hàng :${food.storeName}</a>
                             <div class="buy">
                                 <div class="total"><p id="value">${food.price}</p></div>
                                 <div class="number">
	                                 <form id="formAdd" action="<c:url value="/gio-hang?action=addFood"/>" method="POST">
	                                     <button type="button" onclick="Sub()">
	                                         -
	                                     </button>
	                                     <input type="text" name="quantity" value="1" id="number">
	                                     <input type="hidden" name="idFood" value="${food.idFood}">
	                                     <button type="button" onclick="add()">
	                                         +
	                                     </button>
                                     </form>
                                 </div>
                                 <button type="submit"form="formAdd">Thêm vào giỏ hàng</button>
                             </div>
                          </div>
                    </div>
                  </div>
              </div>
        </div>
        <script>
            let a=document.getElementById("number");
            let b=document.getElementById("value");
            function add(){
                a.innerHTML=Number(a.value++);
                b.innerHTML=Number(a.value *25000)
                return;
            }
            function Sub(){
                a.innerHTML=Number(a.value--);
                b.innerHTML=Number(a.value*25000)
                return;
            }
        </script>
    </body>
</html>