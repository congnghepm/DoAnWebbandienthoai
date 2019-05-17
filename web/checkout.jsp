<%@ page import="model.Cart" %>
<%@ page import="java.util.Map" %>
<%@ page import="model.Item" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %><%--
  Created by IntelliJ IDEA.
  User: Kim Dung
  Date: 5/10/2019
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkout</title>
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

    <script>
        function check() {
            var ndtimkiem = document.getElementById("ndtimkiem");

            if(ndtimkiem.value!="")
            {
                var x = document.getElementById("search");
                x.removeAttribute("disabled");
            }

        }
    </script>

    <script>
        function myFunction() {
            var span = document.getElementById("ndtimkiem");

            if(span.value == "")
            {
                alert("Bạn chưa nhập từ khóa tìm kiếm!");
            }

        }
    </script>
    <!--kiem tra dinh dang email  -->
    <script type="text/javascript">
        function checkEmail(str)
        {
            var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            /*  if(!re.test(str))
                 alert("Please enter a valid email address"); */
            if(!re.test(str))
            {
                var span = document.getElementById("statusemail");
                span.textContent = "Email không đúng định dạng!";
                return true;
            }
        }
    </script>
    <!-- kiem tra dinh dang SDT -->
    <script type="text/javascript">
        function checkSDT(str)
        {
            var phonenumberRegex = /^[0-9]+$/;

            if(!phonenumberRegex.test(str))
            {
                var span = document.getElementById("statusdienthoai");
                span.textContent = "Số điện thoại không hợp lệ!";
                return true;
            }
            if(str.length!=10)
            {
                var span = document.getElementById("statusdienthoai");
                span.textContent = "Yêu cầu số điện thoại là 10 số!";
                return true;
            }
        }
    </script>
</head>
<body>

<%
    Cart cart = (Cart) session.getAttribute("cart");
    if(cart ==null)
    {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
%>


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
                        <form action="SanPhamServlet" method="get" name="Search" id="FormSearch" method="get">

                            <input class="input" name="ndtimkiem" id="ndtimkiem" placeholder="Nhập thông tin tìm kiếm" onkeyup="check()">
                            <button onclick="myFunction()" type="submit" class="search-btn" disabled id="search">Tìm kiếm</button>
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
                        <div>
                            <a href="blank.jsp">
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


<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <h3 class="breadcrumb-header">Đặt hàng</h3>

            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <form action="BillServlet" method="post">
        <div class="row">

            <div class="col-md-7">
                <!-- Billing Details -->
                <div class="billing-details">
                    <div class="section-title">
                        <h3 class="title">Thông tin khách hàng</h3>
                    </div>

                    <div class="form-group">
                        <input class="input" type="text" name="hoten" placeholder="Họ tên" required>
                    </div>
                    <div class="form-group">
                        <input class="input" type="email" name="email" placeholder="Email" onblur="if(!checkEmail(this.value)) checkExistEmail()" required>
                    </div>

                    <div class="form-group">
                        <span style="color:red;" id="statusemail"></span>
                    </div>

                    <div class="form-group">
                        <input class="input" type="text" name="address" placeholder="Địa chỉ" required>
                    </div>

                    <div class="form-group">
                        <input class="input" type="tel" name="tel" placeholder="Số điện thoại" onblur="if(!checkSDT(this.value)) checkExistSDT()" required>
                    </div>
                    <div class="form-group">
                        <span style="color:red;" id="statusdienthoai"></span>
                    </div>


                </div>
                <!-- /Billing Details -->

                <!-- Shiping Details -->
                <div class="shiping-details">
                    <div class="section-title">
                        <h3 class="title">Địa chỉ giao hàng</h3>
                    </div>
                    <div class="input-checkbox">
                        <input type="checkbox" id="shiping-address">
                        <label for="shiping-address">
                            <span></span>
                            Giao hàng tới địa chỉ khác?
                        </label>
                        <div class="caption">

                            <div class="form-group">
                                <input class="input" type="text" name="hoten2" placeholder="Họ tên" >
                            </div>
                            <div class="form-group">
                                <input class="input" type="email" name="email2" placeholder="Email" >
                            </div>
                            <div class="form-group">
                                <input class="input" type="text" name="address2" placeholder="Địa chỉ">
                            </div>

                            <div class="form-group">
                                <input class="input" type="tel" name="tel2" placeholder="Số điện thoại" >
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Shiping Details -->

                <!-- Order notes -->
                <div class="order-notes">
                    <textarea class="input" placeholder="Yêu cầu khác"></textarea>
                </div>
                <!-- /Order notes -->
            </div>

            <!-- Order Details -->
            <div class="col-md-5 order-details">
                <div class="section-title text-center">
                    <h3 class="title">Đơn hàng</h3>
                </div>


                <div class="order-summary">

                    <div class="order-col">
                        <div><strong>SẢN PHẨM</strong></div>
                        <div><strong>THANH TOÁN</strong></div>
                    </div>
                    <%for (Map.Entry<Integer, Item> list: cart.getCartItems().entrySet()){%>
                    <%
                        double giaban = list.getValue().getSanPham().getGiaBan();
                        int sl = list.getValue().getQuantity();
                        double tongtien = giaban*sl;
                    %>
                    <div class="order-products">
                        <div class="order-col">
                            <div><%=list.getValue().getSanPham().getTenSP()%></div>
                            <div><%= java.text.NumberFormat.getNumberInstance(java.util.Locale.GERMANY).format(tongtien)%>đ</div>
                        </div>

                    </div>
                    <%
                        }
                    %>

                    <div class="order-col">
                        <div>Phí ship</div>
                        <div><strong>FREE</strong></div>
                    </div>
                    <div class="order-col">
                        <div><strong>TỔNG TIỀN</strong></div>
                        <div><strong class="order-total"><%=NumberFormat.getNumberInstance(Locale.GERMANY).format(cart.totalCart())%>đ</strong></div>
                    </div>
                </div>

                <div class="payment-method">
                    <div class="input-radio">
                        <input type="radio" name="payment" id="payment-1">
                        <label for="payment-1">
                            <span></span>
                            Thanh toán bằng tiền mặt
                        </label>

                    </div>
                    <div class="input-radio">
                        <input type="radio" name="payment" id="payment-2">
                        <label for="payment-2">
                            <span></span>
                            Thanh toán bằng thẻ tín dụng
                        </label>

                    </div>

                </div>
                <div class="input-checkbox">
                    <input type="checkbox" id="terms">
                    <label for="terms">
                        <span></span>
                        Tôi đã đọc và đồng ý <a href="#">điều khoản và quy định</a>
                    </label>
                </div>

            </div>
            <!-- /Order Details -->
            <div style="margin-top: 40px">
                <a href="#" ><button class="primary-btn order-submit" type="submit">Đặt hàng</button></a>
            </div>

        </div>
        </form>
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
                    <p>Sign Up for the <strong>NEWSLETTER</strong></p>
                    <form>
                        <input class="input" type="email" placeholder="Enter Your Email">
                        <button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
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

                </div><div class="footer">
                <h3 class="footer-title">Dịch vụ</h3>
                <ul class="footer-links">
                    <li><a href="feedback.jsp">Để lại góp ý</a></li>

                    <li><a href="blank.jsp">Xem giỏ hàng</a></li>
                    <li><a href="checkout.jsp">Đơn hàng</a></li>
                    <li><a href="#">Giúp đỡ</a></li>
                </ul>
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
