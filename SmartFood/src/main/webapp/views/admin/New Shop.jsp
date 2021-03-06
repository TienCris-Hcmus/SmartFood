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
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/New Shop.css"/>">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
    <body>
        <!-- code header -->
        <div class="row">
          <div class="col-3">
            <div class=Logo>
              <img src="<c:url value="template/admin/assets/img/SmartFood logo.png"/>" alt="">
              <h2>Admin</h2>
            </div>
            <div class="Menu">
              <a href="<c:url value="/admin-report?action=list"/>"><i class="fas fa-address-book"></i>Report</a>
              <%-- <a href="<c:url value="/admin-account?action=list"/>"><i class="fas fa-address-book"></i>Account List</a> --%>
              <a href="<c:url value="/admin-shop?action=list"/>"><i class="fas fa-address-book"></i>Shop List</a>
              <a href="<c:url value="/admin-newshop?action=list"/>"><i class="fas fa-address-book"></i><b>New Shop</b></a>
            </div>
          </div>
          <div class="col">
            <div class="right">
              <div class="Title">
                <h1>Add Shop</h1>
                <button onclick="location.href='<c:url value="/dang-xuat?action=adminLogout"/>'">Log Out <i class="fas fa-sign-out-alt"></i></button>
              </div>
<!--               <div class="search">
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
              </div> -->
              <div class="content">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col">STT</th>
                      <th scope="col">T??n Qu??n</th>
                      <th scope="col">S??? ??i???n Tho???i</th>
                      <th scope="col">Duy???t</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<c:forEach var="item" items="${list.listResult}" varStatus="loop">
	                    <tr>
	                      <td>${loop.index+1}</td>
	                      <td>${item.storeName}</td>
	                      <td>${item.phone}</td>     
	                      <td><a class="btn btn-sm btn-primary btn-edit"
							data-toggle="tooltip" href='<c:url value="/admin-newshop?action=duyet&id=${item.id}"/>'><span class="glyphicon glyphicon-ok"></span></a>
							</td>                 
	                    </tr>
                    </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
       <!-- code footer -->
       
    </body>
</html>
