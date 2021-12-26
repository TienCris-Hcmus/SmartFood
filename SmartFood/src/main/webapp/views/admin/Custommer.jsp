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
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/Custommer.css"/>">
  </head>
    <body>
        <!-- code header -->
        <div class="row">
          <div class="col-3">
            <div class=Logo>
              <img src="<c:url value="/template/admin/assets/img/SmartFood logo.png"/>" alt="">
              <h2>Admin</h2>
            </div>
            <div class="Menu">
              <a href="<c:url value="/admin-report?action=list"/>"><i class="fas fa-address-book"></i>Report</a>
              <a href="<c:url value="/admin-account?action=list"/>"><i class="fas fa-address-book"></i><b>Account List</b></a>
              <a href="<c:url value="/admin-shop?action=list"/>"><i class="fas fa-address-book"></i>Shop List</a>
              <a href="<c:url value="/admin-newshop?action=list"/>"><i class="fas fa-address-book"></i>New Shop</a>
            </div>
          </div>
          <div class="col">
            <div class="right">
              <div class="Title">
                <h1>Shop</h1>
                <button src="#">Log Out <i class="fas fa-sign-out-alt"></i></button>
              </div>
              <div class="search">
                <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <button class="repeat">
                  Active/Disable
                  <i class="fas fa-redo"></i>
                </button>
                <button class="delete">
                  Delete
                  <i class="fas fa-trash-alt"></i>
                </button>
                <button class="add">
                  ADD
                  <i class="fas fa-user-plus"></i>
                </button>
              </div>
              <div class="content">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th scope="col"><input type="checkbox"></th>
                      <th scope="col">Shop ID</th>
                      <th scope="col">Tên Quán</th>
                      <th scope="col">Day</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>1</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td>                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>2</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>3</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>4</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>5</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>6</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>7</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>8</td>
                      <td>Cơm B4</td>
                      <td></td>01/01/2021</td> 
                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>9</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>10</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>11</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>12</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>13</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>14</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>15</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>16</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>17</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>18</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>19</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>20</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                     
                    </tr>
                    <tr>
                      <th scope="row"> <input type="checkbox"></th>
                      <td>21</td>
                      <td>Cơm B4</td>
                      <td>01/01/2021</td> 
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
       <!-- code footer -->
       
    </body>
</html>
