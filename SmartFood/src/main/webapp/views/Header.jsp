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
    <link rel="stylesheet" href="<c:url value="/template/web/Header+footer/assets/Header.css"/>">
    <script src="<c:url value="/template/web/Header+footer/assets/Header.js"/>" type="text/javascript"></script>
  </head>
    <body>
      <header class="Header">
        <a href="#" class="logo"> 
            <img src="<c:url value="/template/web/Header+footer/assets/Header.js"/>"> 
            Smart food
        </a>
        <nav class="Navbar">
            <button href="#home">Thông Báo <i class="fas fa-bell"></i></button>
            <button href="#about">Hỗ Trợ <i class="far fa-question-circle"></i></button>
            <select name="cars" id="cars">
                <option value="Tiengviet">Tiếng Việt</option>
                <option value="English">English</option>
            </select>
        </nav>
        <div class="dropdown">
            <button onclick="myFunction()" class="dropbtn">Xin chào ....<i class="fas fa-caret-down"></i></button>
            <div id="myDropdown" class="dropdown-content">
                <a href="#">TÔI LÀ AI</a>
                <a href="#"><i class="far fa-user"></i> Thông tin cá nhân</a>
                <a href="#"><i class="fas fa-history"></i> Lịch Sử mua hàng</a>
                <a href="#"><i class="far fa-comment-dots"></i> Đóng góp ý kiến</a>
                <a href="#"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
            </div>
          </div>
       </header>
       <div class="background-header">
           <img src="<c:url value="/template/web/Header+footer/assets/header.png"/>" alt="">
       </div>
        
    </body>
</html>