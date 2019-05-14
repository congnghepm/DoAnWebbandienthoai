<%--
  Created by IntelliJ IDEA.
  User: Kim Dung
  Date: 5/10/2019
  Time: 2:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Feedback</title>
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
                        <a href="index.jsp" class="logo">
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
                            <a href="productviewed.jsp">
                                <i class="fa fa-heart-o"></i>
                                <span>Đã xem</span>
                                <div class="qty">2</div>
                            </a>
                        </div>
                        <!-- /Wishlist -->

                        <!-- Cart -->
                        <div class="dropdown">
                            <a href="blank.jsp" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
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
                <li ><a href="index.jsp">Home</a></li>
                <li><a href="category.jsp?hangSX=iPhone">Iphone</a></li>
                <li><a href="category.jsp?hangSX=Samsung">Samsung</a></li>
                <li><a href="category.jsp?hangSX=Xiaomi">Xiaomi</a></li>
                <li><a href="category.jsp?hangSX=Huawei">Huawei</a></li>
                <li><a href="category.jsp?hangSX=Nokia">Nokia</a></li>
                <li><a href="category.jsp?hangSX=OPPO">Oppo</a></li>
                <li><a href="category.jsp?hangSX=Vsmart">Vsmart</a></li>
            </ul>
            <!-- /NAV -->
        </div>
        <!-- /responsive-nav -->
    </div>
    <!-- /container -->
</nav>
<!-- /NAVIGATION -->

<!-- NEWSLETTER -->
<!-- 	<div id="newsletter" class="section"> -->
<!-- container -->
<div class="container">
    <!-- row -->
    <div class="row">
        <div class="col-md-12">
            <div class="newsletter">
                <p style="margin-top: 10px;"><strong>ĐỂ LẠI TIN NHẮN GÓP Ý</strong></p>

                <form>
                    <div class="form-group">
                        <label for="HoTen">Xin mời nhập họ tên</label>
                        <input type="text" class="form-control" id="HoTen" >
                        <label for="SDT">Xin mời nhập số điện thoại</label>
                        <input type="text" class="form-control" id="SDT" >
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Hãy để lại tin nhắn cho chúng tôi</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary mb-2">Gửi tin nhắn</button>
                </form>
            </div>
        </div>
    </div>
    <!-- /row -->
</div>
<!-- /container -->
<!-- </div> -->
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
                            <li><a href="feedback.jsp">Để lại góp ý</a></li>

                            <li><a href="blank.jsp">Xem giỏ hàng</a></li>
                            <li><a href="checkout.jsp">Đơn hàng</a></li>
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
