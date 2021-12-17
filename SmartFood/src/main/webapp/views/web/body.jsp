<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmartFood</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/body.css">
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

                <div class="bg-smartfood">
                    <div class="card mb-3">
                        <img src="./assets/image/bgsmartfood.png" class="card-img-top" alt="SmartFood Backround">
                    </div>
                </div>

                <div class="row bg-wrap">

                    <div class="col-sm-2 random mt-3">
                        <div class="card" style="width: 14rem;">
                            <span class="card-text bg-red h3 text-center text-light p-2">Hôm nay ăn gì</span>
                            <img src="./assets/image/imgRandom.jpg" class="img-fluid" alt="Random Background">
                            <div class="card-body bg-medium-red text-center">
                                <button type="button" class="btn bg-red">Random</button>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8 sanpham mt-3">
                        <div class="row justify-content-center">
                            <div class="input-group mb-3 col-sm-8 ">
                                <div class="input-group-prepend">
                                    <button class="input-group-text bg-red">🔍</button>
                                </div>
                                <input type="text" name="search-food" class="form-control border-item"
                                    aria-label="Amount (to the nearest dollar)" placeholder="Bạn muốn ăn gì?">
                                <div class="input-group-append">
                                    <button class="input-group-text bg-red">Tìm kiếm</button>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="card-deck mb-3">
                                <a href="#" class="card border-food">
                                    <img src="./assets/image/sanpham/banhuot.jpg" class="foodimg" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Bánh ướt</h5>
                                        <p class="card-text">25.000 NVĐ</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">Shop</small>
                                    </div>
                                </a>
                                <a href="#" class="card border-food">
                                    <img src="./assets/image/sanpham/banhxeo.jpg" class="foodimg" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Bánh xèo</h5>
                                        <p class="card-text">50.000 VNĐ</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">Shop</small>
                                    </div>
                                </a>
                                <a href="#" class="card border-food">
                                    <img src="./assets/image/sanpham/bunbo.jpg" class="foodimg" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Bún bò</h5>
                                        <p class="card-text">37.000 VNĐ</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">Shop</small>
                                    </div>
                                </a>
                                <a href="#" class="card border-food">
                                    <img src="./assets/image/sanpham/banhxeo.jpg" class="foodimg" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Bánh xèo</h5>
                                        <p class="card-text">50.000 VNĐ</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">Shop</small>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="row">
                            <div class="card-deck mb-3">
                                <a href="#" class="card border-food">
                                    <img src="./assets/image/sanpham/banhxeo.jpg" class="foodimg" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Bánh xèo</h5>
                                        <p class="card-text">50.000 VNĐ</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">Shop</small>
                                    </div>
                                </a>
                                <a href="#" class="card border-food">
                                    <img src="./assets/image/sanpham/gaxoimo.jpg" class="foodimg" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Cơm gà xối mỡ</h5>
                                        <p class="card-text">25.000 VNĐ</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">Shop</small>
                                    </div>
                                </a>
                                <a href="#" class="card border-food">
                                    <img src="./assets/image/sanpham/banhxeo.jpg" class="foodimg" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Bánh xèo</h5>
                                        <p class="card-text">50.000 VNĐ</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">Shop</small>
                                    </div>
                                </a>
                                <a href="#" class="card border-food">
                                    <img src="./assets/image/sanpham/xoiman.jpg" class="foodimg" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Xôi mặn</h5>
                                        <p class="card-text">12.000 VNĐ</p>
                                    </div>
                                    <div class="card-footer">
                                        <small class="text-muted">Shop</small>
                                    </div>
                                </a>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center">
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link bg-red text-light" href="#">Previous</a>
                                    </li>
                                    <li class="page-item"><a class="page-link bg-medium-red" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link bg-medium-red" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link bg-medium-red" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link bg-medium-red" href="#">4</a></li>
                                    <li class="page-item"><a class="page-link bg-medium-red" href="#">5</a></li>
                                    <li class="page-item"><a class="page-link bg-medium-red" href="#">...</a></li>
                                    <li class="page-item"><a class="page-link bg-red text-light" href="#">Next</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                    <div class="col-sm-2 trending mt-3">
                        <div class="card" style="width: 14rem;">
                            <div class="card-header bg-red text-center text-light h3">
                                Xu hướng
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item bg-medium-red">Bún bò huế</li>
                                <li class="list-group-item bg-medium-red">Cơm gà xối mỡ</li>
                                <li class="list-group-item bg-medium-red">Phở Hà Lội</li>
                            </ul>
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
</body>

</html>