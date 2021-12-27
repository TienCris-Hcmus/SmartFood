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
    <link rel="stylesheet" href="<c:url value="/template/web/foodDetail/product details.css"/>">
    <script src="<c:url value="/template/web/Header+footer/assets/Header.js"/>" type="text/javascript"></script>
  </head>
    <body>
        <div class="row">
            <div class="col-3">   
                    <a href="#"><i class="far fa-user"></i> Thông tin cá nhân</a>
                    <a href="#"><i class="fas fa-history"></i> Lịch Sử mua hàng</a>
                    <a href="#"><i class="fas fa-info-circle"></i> Chi Tiết Sản Phẩm</a>
                    <a href="#"><i class="fas fa-history"></i> Lịch Sử mua hàng</a>
                    <a href="#"><i class="fas fa-money-check-alt"></i> Doanh Thu</a>
              </div>  
              <div class="col-9">
                  <div class="Title">
                    <b>Chi Tiết Sản Phẩm</b>
                  </div>
                  <div class="product-detail">
                      <div class="row">
                          <div class="col-6">
                            <img src="<c:url value="/template/web/foodDetail/bánh ướt.jpg"/>" alt="">
                            <b>Mô Tả</b>
                            <p>Bánh ướt là loại bánh tráng được làm bằng bột gạo có pha bột lọc, tráng mỏng hơn và dùng liền (nên gọi là bánh ướt chứ không phơi khô như bánh tráng). Bánh ướt có thể tự làm hoặc mua ngoài chợ. Thịt nướng thường là thịt heo ba chỉ thái mỏng, ướp tiêu, hành, nước mắm, ngũ vị hương, mè (vừng).</p>
                          </div>
                          <div class="col">
                              <b>Bánh Ướt</b>
                              <a href="#"><i class="fas fa-home"></i> Địa chỉ :........</a>
                              Thành Phần
                              <ul>
                                <li>Bột Gạo</li>
                                <li>Bột Năng</li>
                                <li>Bột Khoai Mỳ</li>
                                <li>Thịt Heo</li>
                                <li>Mộc Nhĩ</li>
                             </ul>
                             <div class="buy">
                                 <div class="total"><p id="value">25000</p></div>
                                 <div class="number">
                                     <button onclick="Sub()">
                                         -
                                     </button>
                                     <input type="text" value="1" id="number">
                                     <button onclick="add()">
                                         +
                                     </button>
                                 </div>
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