<%--
  Created by IntelliJ IDEA.
  User: Kim Dung
  Date: 5/9/2019
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blank</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- HEADER -->
<header>
    <!-- TOP HEADER -->
    <div id="top-header">
        <div class="container">
            <ul class="header-links pull-left">
                <li><a href="#"><i class="fa fa-phone"></i> 0283896867</a></li>
                <li><a href="#"><i class="fa fa-envelope-o"></i> Smartphone@email.com</a></li>
                <li><a href="#"><i class="fa fa-map-marker"></i> 01 Võ Văn Ngân,Linh Chiểu,Thủ Đức</a></li>
            </ul>

        </div>
    </div>
    <!-- /TOP HEADER -->

    <!-- MAIN HEADER -->
    <div id="header">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- LOGO -->
                <div class="col-md-3">
                    <div class="header-logo">
                        <a href="#" class="logo">
                            <img src="./img/logo.png" alt="" style="margin-left: -50px">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form>

                            <input class="input" placeholder="Nhập thông tin tìm kiếm">
                            <button class="search-btn">Tìm kiếm</button>
                        </form>
                    </div>
                </div>
                <!-- /SEARCH BAR -->

                <!-- ACCOUNT -->
                <div class="col-md-3 clearfix">
                    <div class="header-ctn">
                        <!-- Wishlist -->
                        <div>
                            <a href="#">
                                <i class="fa fa-heart-o"></i>
                                <span>Đã xem</span>
                                <div class="qty">2</div>
                            </a>
                        </div>
                        <!-- /Wishlist -->

                        <!-- Cart -->
                        <div class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Giỏ hàng</span>
                                <div class="qty">3</div>
                            </a>

                        </div>
                        <!-- /Cart -->

                        <!-- Menu Toogle -->
                        <div class="menu-toggle">
                            <a href="#">
                                <i class="fa fa-bars"></i>
                                <span>Menu</span>
                            </a>
                        </div>
                        <!-- /Menu Toogle -->
                    </div>
                </div>
                <!-- /ACCOUNT -->
            </div>
            <!-- row -->
        </div>
        <!-- container -->
    </div>
    <!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<nav id="navigation">
    <!-- container -->
    <div class="container">
        <!-- responsive-nav -->
        <div id="responsive-nav">
            <!-- NAV -->
            <ul class="main-nav nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">Iphone</a></li>
                <li><a href="#">Samsung</a></li>
                <li><a href="#">Xiaomi</a></li>
                <li><a href="#">Huawei</a></li>
                <li><a href="#">Nokia</a></li>
                <li><a href="#">Oppo</a></li>
                <li><a href="#">Vsmart</a></li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->


<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">
                    <h3 class="title">GIỎ HÀNG </h3>
                </div>
            </div>
            <!-- /section title -->

            <div class="container">
                <table id="cart" class="table table-hover table-condensed">
                    <thead>
                    <tr>
                        <th style="width:50%">Tên sản phẩm</th>
                        <th style="width:10%">Giá</th>
                        <th style="width:8%">Số lượng</th>
                        <th style="width:22%" class="text-center">Thành tiền</th>
                        <th style="width:10%"> </th>
                    </tr>
                    </thead>
                    <tbody><tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-sm-2 hidden-xs"><img src="./img/product01.jpg" alt="Sản phẩm 1" class="img-responsive" width="100">
                                </div>
                                <div class="col-sm-10">
                                    <h4 class="nomargin">Philip S326</h4>

                                </div>
                            </div>
                        </td>
                        <td data-th="Price">$980.00 </td>
                        <td data-th="Quantity"><input class="form-control text-center" value="1" type="number">
                        </td>
                        <td data-th="Subtotal" class="text-center">$980.00 </td>
                        <td class="actions" data-th="">
                            <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
                            </button>
                            <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i>
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-sm-2 hidden-xs"><img src="./img/product02.jpg" alt="Sản phẩm 1" class="img-responsive" width="100">
                                </div>
                                <div class="col-sm-10">
                                    <h4 class="nomargin">Samsung Galaxy J6</h4>

                                </div>
                            </div>
                        </td>
                        <td data-th="Price">$980.00 </td>
                        <td data-th="Quantity"><input class="form-control text-center" value="1" type="number">
                        </td>
                        <td data-th="Subtotal" class="text-center">$980.00 </td>
                        <td class="actions" data-th="">
                            <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
                            </button>
                            <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i>
                            </button>
                        </td>
                    </tr>
                    </tbody><tfoot>
                <tr class="visible-xs">
                    <td class="text-center"><strong>Tổng 200.000 đ</strong>
                    </td>
                </tr>
                <tr>
                    <td><a href="http://hocwebgiare.com/" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
                    </td>
                    <td colspan="2" class="hidden-xs"> </td>
                    <td class="hidden-xs text-center"><strong>Tổng tiền $1960.00  </strong>
                    </td>
                    <td><a href="http://hocwebgiare.com/" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
                    </td>
                </tr>
                </tfoot>
                </table>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->



<!-- NEWSLETTER -->
<div id="newsletter" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <div class="newsletter">
                    <p>Đăng ký <strong>nhận tin khuyến mãi</strong></p>
                    <form>
                        <input class="input" type="email" placeholder="Điền email của bạn">
                        <button class="newsletter-btn"><i class="fa fa-envelope"></i> Đăng ký</button>
                    </form>
                    <ul class="newsletter-follow">
                        <li>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /NEWSLETTER -->

<!-- FOOTER -->
<footer id="footer">
    <!-- top footer -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Smartphone.com</h3>
                        <p>Thế giới di động của mọi nhà</p>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-map-marker"></i>01 Võ Văn Ngân,Linh Chiểu</a></li>
                            <li><a href="#"><i class="fa fa-phone"></i>0283896867</a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i>Smartphone@email.com</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Sản phẩm</h3>
                        <ul class="footer-links">
                            <li><a href="#">Khuyến mãi</a></li>
                            <li><a href="#">Bán chạy</a></li>
                            <li><a href="#">Mới ra mắt</a></li>

                        </ul>
                    </div>
                </div>

                <div class="clearfix visible-xs"></div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Chính sách</h3>
                        <ul class="footer-links">

                            <li><a href="#">Chính sách bảo hành</a></li>
                            <li><a href="#">Chính sách đổi trả</a></li>
                            <li><a href="#">Giao hàng và thanh toán</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer">
                        <h3 class="footer-title">Dịch vụ</h3>
                        <ul class="footer-links">
                            <li><a href="#">Để lại góp ý</a></li>
                            <li><a href="#">Xem giỏ hàng</a></li>
                            <li><a href="#">Sản phẩm vừa xem</a></li>
                            <li><a href="#">Giúp đỡ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /top footer -->

    <!-- bottom footer -->
    <div id="bottom-footer" class="section">
        <div class="container">
            <!-- row -->
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="footer-payments">
                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-credit-card"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
                    </ul>
                    <span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>
    <!-- /bottom footer -->
</footer>
<!-- /FOOTER -->

<!-- jQuery Plugins -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>


</body>
</html>
