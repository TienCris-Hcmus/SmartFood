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
        <link rel="stylesheet" href="<c:url value="/template/web/login_signup/assets/css/SignUp_LogIn.css "/>">
        <link rel="stylesheet" href="<c:url value="/template/web/login_signup/assets/css/style.css "/>">
        	
      	    <!-- Footer -->
	    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
	    <link rel="stylesheet" href="<c:url value="/template/web/Header+footer/assets/Footer.css"/>">

    	<link href="<c:url value="/template/web/body/assets/css/body.css"/>" rel="stylesheet" type="text/css" media="all"/>
		<!--Bootstrap  -->
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
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
                                <a class="nav-link" href="<c:url value='trang-chu'/>">Trang ch???<span class="sr-only">(current)</span></a>
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
                                <img class="bg-signup-login" src="<c:url value="/template/web/login_signup/assets/image/bgSignup_Login.png"/>" alt="">
                            </div>
                            <div class="col-sm-5 d-flex justify-content-center">
                                <!-- Form ????ng k?? -->
                                <form action="<c:url value="/dang-ky?action=submitCus"/>" method="POST" class="form" id="form-1">
                                    <h3 class="heading">????ng k?? t??i kho???n SmartFood</h3>
                                    <p class="desc">C??ng nhau th?????ng th???c m??n ngon ??????</p>

                                    <div class="spacer"></div>

                                    <div class="form-group">
                                        <label for="fullname" class="form-label">H??? t??n</label>
                                        <input id="fullname" required name="nameCus" type="text" placeholder="VD: Tr???n Tr???ng Tr??" class="form-control">
                                        <span class="form-message"></span>
                                    </div>
									
                                    <div class="form-group">
                                        <label for="username" class="form-label">T??n ????ng nh???p</label>
                                        <input id="username" required name="username" type="text" placeholder="VD: trongtri" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="email" class="form-label">Email</label>
                                        <input id="email" required name="email" type="text" placeholder="VD: email@domain.com" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="phone" class="form-label">S??? ??i???n tho???i</label>
                                        <input id="phone" required name="phone" type="number" placeholder="VD: 0972218588" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="dob" class="form-label">?????a ch???</label>
                                        <input id="dob" required name="address_" type="text" placeholder="VD: T??a B4, KTX khu B" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="password" class="form-label">M???t kh???u</label>
                                        <input id="password" required name="password" type="password" placeholder="Nh???p m???t kh???u" class="form-control">
                                        <span class="form-message"></span>
                                    </div>

                                    <div class="form-group">
                                        <label for="password_confirmation" class="form-label">Nh???p l???i m???t kh???u</label>
                                        <input id="password_confirmation" required name="password_confirmation" placeholder="Nh???p l???i m???t kh???u" type="password" class="form-control">
                                        <span class="form-message"></span>
                                    </div>
                                    
									<c:if test="${not empty message}">
                                        <div class="alert alert-danger">T??n t??i kho???n ???? t???n t???i</div>
                                    </c:if>
                                    
                                    <button type="submit" class="form-submit">????ng k??</button>
                                	
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
            

            <script>
                var options = {
                    form: '#form-1',
                    formGroupSelector: '.form-group',
                    errorSelector: '.form-message',
                    rules: [
                        Validator.isRequired('#fullname'),
                        Validator.isUpperFirst('#fullname', 'Vui l??ng vi???t hoa ch??? c??i ?????u'),
                        Validator.isRequired('#username'),
                        Validator.isUsername('#username', 'Username kh??ng ???????c c?? kho???ng tr???ng, ch??? g???m c??c k?? t???, k?? s??? v?? d???u _, kh??ng b???t ?????u b???ng s???'),
                        Validator.isRequired('#email'),
                        Validator.isEmail('#email'),
                        Validator.isRequired('#phone'),
                        Validator.isPhone('#phone', 'Vui l??ng nh???p ????? 10 s??? v?? b???t ?????u b???i s??? 0'),
                        Validator.isRequired('#dob'),
                        Validator.isDate('#dob', 'Vui l??ng nh???p ????ng ?????nh d???ng dd/mm/yyyy'),
                        Validator.isPassword('#password', 6),
                        Validator.isPassword_Confirm('#password_confirmation', function() {
                            return document.querySelector('#form-1 #password').value;
                        }, 'M???t kh???u nh???p l???i kh??ng ch??nh x??c')
                    ],
                    onSubmit: function(data) {
                        console.log(data);
                    }
                };

                Validator(options);
            </script>
            <script src="<c:url value="/template/web/login_signup/assets/SignUp_LogIn.js"/>"></script>
        </body>

        </html>