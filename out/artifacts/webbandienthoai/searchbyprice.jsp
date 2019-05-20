<%@ page import="dao.SanPhamDAOImpl" %>
<%@ page import="model.SanPham" %>
<%@ page import="model.KhuyenMai" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: Kim Dung
  Date: 5/14/2019
  Time: 11:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SearchByPrice</title>
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
                alert("Bạn chưa nhập từ khóa tìm kiếm!!");
            }

        }
    </script>
</head>
<body>

<%
    SanPhamDAOImpl spDAOImpl = new SanPhamDAOImpl();
    double min = Double.parseDouble(request.getParameter("min"));
    double max = Double.parseDouble(request.getParameter("max"));
    String hangSX = request.getParameter("hangSX");
    ArrayList<SanPham> dsSPTheoGiaBan = spDAOImpl.getListSPTheoGiaBan(min, max, hangSX);
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
                        <form action="SanPhamServlet" method="get" name="Search" id="FormSearch">

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
                        <%--<div>
                            <a href="productviewed.jsp">
                                <i class="fa fa-heart-o"></i>
                                <span>Đã xem</span>

                            </a>
                        </div>--%>
                        <!-- /Wishlist -->

                        <!-- Cart -->
                        <div>
                            <a href="blank.jsp">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Giỏ hàng</span>

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



<div class="container">
    <!-- responsive-nav -->

    <h4 style="margin-top: 30px">Số sản phẩm tìm thấy phù hợp: <span style="color: #843534"><%=dsSPTheoGiaBan.size()%></span> sản phẩm</h4>

    <div id="responsive-nav1">

        <ul class="main-nav nav navbar-nav">
            <li><a href="searchbyprice.jsp?min=2000000&max=4000000&hangSX=<%=request.getParameter("hangSX")%>">Từ 2 đến 4 triệu</a></li>
            <li><a href="searchbyprice.jsp?min=4000000&max=6000000&hangSX=<%=request.getParameter("hangSX")%>">Từ 4 đến 6 triệu</a></li>
            <li><a href="searchbyprice.jsp?min=6000000&max=8000000&hangSX=<%=request.getParameter("hangSX")%>">Từ 6 đến 8 triệu</a></li>
            <li><a href="searchbyprice.jsp?min=8000000&max=10000000&hangSX=<%=request.getParameter("hangSX")%>">Từ 8 đến 10 triệu</a></li>
            <li><a href="searchbyprice.jsp?min=10000000&max=30000000&hangSX=<%=request.getParameter("hangSX")%>">Trên 10 triệu</a></li>
        </ul>
    </div>
    <!-- /responsive-nav -->
</div>



<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <!-- Products tab & slick -->
            <div class="col-md-12">

                <div class="row">

                    <!-- product -->
                    <%


                        for(int i=0;i<dsSPTheoGiaBan.size();i++)
                        {
                            KhuyenMai km = spDAOImpl.getKhuyenMai(dsSPTheoGiaBan.get(i).getMaSP());
                            java.text.DecimalFormat df = new java.text.DecimalFormat("#.##");
                            String formatted = df.format(km.getGiaTri());
                    %>
                    <a href="product.jsp?maSP=<%=dsSPTheoGiaBan.get(i).getMaSP()%>">
                        <div class="col-md-3 col-xs-6">

                            <div class="product">
                                <div class="product-img">
                                    <img src="ImageServlet?maSP=<%=dsSPTheoGiaBan.get(i).getMaSP() %>" alt="">

                                    <div class="product-label">
                                        <span class="sale">-<%=formatted%>%</span>
                                    </div>
                                </div>

                                <div class="product-body">
                                    <p class="product-category"><%=dsSPTheoGiaBan.get(i).getHangSX()%></p>
                                    <h3 class="product-name"><a href="product.jsp?maSP=<%=dsSPTheoGiaBan.get(i).getMaSP()%>"><%=dsSPTheoGiaBan.get(i).getTenSP()%></a></h3>
                                    <h4 class="product-price"><%=java.text.NumberFormat.getNumberInstance(java.util.Locale.GERMANY).format(dsSPTheoGiaBan.get(i).getGiaBan())%>đ</h4>
                                    <div class="product-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>

                                </div>
                                <div class="add-to-cart">
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                                </div>
                            </div>

                        </div>
                    </a>
                    <%
                        }
                    %>
                </div>

            </div>
            <!-- Products tab & slick -->
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
                        <li><a href="feedback.jsp">Để lại góp ý</a></li>
                        <li><a href="blank.jsp">Xem giỏ hàng</a></li>
                        <li><a href="checkout.jsp">Đơn hàng</a></li>
                        <li><a href="#">Giúp đỡ</a></li>
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
