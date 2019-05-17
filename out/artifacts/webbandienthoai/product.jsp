<%--
  Created by IntelliJ IDEA.
  User: Kim Dung
  Date: 5/12/2019
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.SanPhamDAOImpl" %>
<%@ page import="model.SanPham" %>
<%@ page import="model.ThongSoKyThuat" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="model.KhuyenMai" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
<%@page import="controller.SanPhamServlet" %>
<%@ page import="model.Cart" %>
<html>
<head>
    <title>Product</title>
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


</head>
<body>

<%
    SanPhamDAOImpl spDAOImpl = new SanPhamDAOImpl();
    int maSP = (Integer.parseInt(request.getParameter("maSP")));
    ArrayList<Integer> listMaSP = new ArrayList<>();
    SanPham sp = spDAOImpl.getSP(maSP);
    ThongSoKyThuat tskt = spDAOImpl.getThongSoKyThuat(maSP);
    KhuyenMai km = spDAOImpl.getKhuyenMai(maSP);
    ArrayList<SanPham> dsSP = spDAOImpl.getListSanPham();

    Cart cart = (Cart) session.getAttribute("cart");
    if(cart==null)
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
                        <a href="#" class="logo">
                            <img src="./img/logo.png" alt="" style="margin-left: -50px">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form action="SanPhamServlet" method="get" name="Search" id="FormSearch" method="get">

                            <input class="input" name="ndtimkiem" id="ndtimkiem" placeholder="Nhập thông tin tìm kiếm"value="" onkeyup="check()">
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
                <ul class="breadcrumb-tree">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="active"><%=sp.getTenSP()%></li>
                </ul>
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
        <div class="row">
            <!-- Product main img -->
            <div class="col-md-5 col-md-push-2">
                <div id="product-main-img">

                    <%
                        for (int t =0 ;t<4;t++)
                        {
                    %>
                    <div class="product-preview">
                        <img src="ListImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>
                    <%
                        }
                    %>

                    <%--<div class="product-preview">
                        <img src="ImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>

                    <div class="product-preview">
                        <img src="ImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>

                    <div class="product-preview">
                        <img src="ImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>

                    <div class="product-preview">
                        <img src="ImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>--%>
                </div>
            </div>
            <!-- /Product main img -->

            <!-- Product thumb imgs -->
            <div class="col-md-2  col-md-pull-5">
                <div id="product-imgs">
                    <%
                        for (int t =0 ;t<4;t++)
                        {
                    %>
                    <div class="product-preview">
                        <img src="ListImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>
                    <%
                        }
                    %>

                    <%--<div class="product-preview">
                        <img src="ImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>

                   <div class="product-preview">
                        <img src="ImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>

                    <div class="product-preview">
                        <img src="ImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>

                    <div class="product-preview">
                        <img src="ImageServlet?maSP=<%=sp.getMaSP() %>" alt="">
                    </div>--%>
                </div>
            </div>
            <!-- /Product thumb imgs -->

            <!-- Product details -->
            <div class="col-md-5">
                <div class="product-details">
                    <h2><%=sp.getTenSP()%></h2>
                    <div>
                        <div class="product-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <a class="review-link" href="#">10 Đánh giá | Thêm đánh giá</a>
                    </div>
                    <div>
                        <%

                            double a =100-(km.getGiaTri());
                            double b = (sp.getGiaBan()*100)/a;

                        %>
                        <h3 class="product-price"><%=NumberFormat.getNumberInstance(Locale.GERMANY).format(sp.getGiaBan())%>đ<del class="product-old-price"><%=NumberFormat.getNumberInstance(Locale.GERMANY).format(b)%>đ</del></h3>
                    </div>
                    <h4>THÔNG SỐ KỸ THUẬT</h4>

                    <span style="font-weight: bold">Màn hình:</span>    <%=tskt.getManHinh()%><br>
                    <span style="font-weight: bold">Camera sau:</span>  <%=tskt.getCameraSau()%><br>
                    <span style="font-weight: bold">Camera trước:</span> <%=tskt.getCameraTruoc()%><br>
                    <span style="font-weight: bold">CPU:</span>         <%=tskt.getCPU()%><br>
                    <span style="font-weight: bold">RAM:</span>         <%=tskt.getRAM()%></><br>
                    <span style="font-weight: bold">Bộ nhớ trong:</span> <%=tskt.getBoNhoTrong()%><br>
                    <span style="font-weight: bold">Dung lượng pin:</span> <%=tskt.getDungLuongPin()%>


                    <div class="add-to-cart">
                        <div class="qty-label">
                            Số lượng
                            <div class="input-number">
                                <span class="qty-down">-</span>
                                <input type="number" value="1" name="soluong" id="soluong">
                                <span class="qty-up">+</span>

                            </div>
                            <%=sp.getSoLuongTon()%> sản phẩm có sẵn.
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <a href="checkout.jsp"><button class="add-to-cart-btn"> Mua ngay</button></a>
                        <a href="CartServlet?command=plus&maSP=<%=sp.getMaSP()%>"><button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</button></a>
                    </div>

            </div>
            </div>

            <!-- /Product details -->

            <!-- Product tab -->
            <div class="col-md-12">
                <div id="product-tab">
                    <!-- product tab nav -->
                    <ul class="tab-nav">
                        <li class="active"><a data-toggle="tab" href="#tab1">Mô tả</a></li>
                        <li><a data-toggle="tab" href="#tab2">Chi tiết</a></li>
                        <li><a data-toggle="tab" href="#tab3">Đánh giá (3)</a></li>
                    </ul>
                    <!-- /product tab nav -->

                    <!-- product tab content -->
                    <div class="tab-content">
                        <!-- tab1  -->
                        <div id="tab1" class="tab-pane fade in active">
                            <div class="row">
                                <div class="col-md-12">
                                    <p>Sau nhiều đồn đoán thì cuối cùng Samsung Galaxy A6+ (2018) đã chính thức được Samsung  giới thiệu với một chút đổi mới trong thiết kế cũng như về camera của máy.
                                        Thiết kế quen thuộc
                                        Lấy cảm hứng từ chiếc Samsung J7 Pro, Samsung Galaxy A6+ (2018) được hoàn thiện từ chất liệu kim loại nguyên khối và được tô điểm bởi 2 dải ăng ten chữ "U" nằm cách điệu trên và dưới ở mặt lưng máy.</p>
                                </div>
                            </div>
                        </div>
                        <!-- /tab1  -->

                        <!-- tab2  -->
                        <div id="tab2" class="tab-pane fade in">
                            <div class="row">
                                <div class="col-md-12">
                                    <p>Thiết kế quen thuộc
                                        Lấy cảm hứng từ chiếc Samsung J7 Pro, Samsung Galaxy A6+ (2018) được hoàn thiện từ chất liệu kim loại nguyên khối và được tô điểm bởi 2 dải ăng ten chữ "U" nằm cách điệu trên và dưới ở mặt lưng máy.</p>
                                </div>
                            </div>
                        </div>
                        <!-- /tab2  -->

                        <!-- tab3  -->
                        <div id="tab3" class="tab-pane fade in">
                            <div class="row">
                                <!-- Rating -->
                                <div class="col-md-3">
                                    <div id="rating">
                                        <div class="rating-avg">
                                            <span>4.5</span>
                                            <div class="rating-stars">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                        </div>
                                        <ul class="rating">
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div style="width: 80%;"></div>
                                                </div>
                                                <span class="sum">3</span>
                                            </li>
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div style="width: 60%;"></div>
                                                </div>
                                                <span class="sum">2</span>
                                            </li>
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div></div>
                                                </div>
                                                <span class="sum">0</span>
                                            </li>
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div></div>
                                                </div>
                                                <span class="sum">0</span>
                                            </li>
                                            <li>
                                                <div class="rating-stars">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                    <i class="fa fa-star-o"></i>
                                                </div>
                                                <div class="rating-progress">
                                                    <div></div>
                                                </div>
                                                <span class="sum">0</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- /Rating -->

                                <!-- Reviews -->
                                <div class="col-md-6">
                                    <div id="reviews">
                                        <ul class="reviews">
                                            <li>
                                                <div class="review-heading">
                                                    <h5 class="name">Huy Nguyễn</h5>
                                                    <p class="date">28-4-2019, 10:05 PM</p>
                                                    <div class="review-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o empty"></i>
                                                    </div>
                                                </div>
                                                <div class="review-body">
                                                    <p>Máy đẹp, mình dùng được 5 tháng chưa thấy lỗi gì. Nói chung là chất lượng tốt so với tầm giá. Rất yên tâm khi mua hàng tại điện máy xanh</p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="review-heading">
                                                    <h5 class="name">Hoài Anh</h5>
                                                    <p class="date">10-5-2019, 7:0 AM</p>
                                                    <div class="review-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o empty"></i>
                                                    </div>
                                                </div>
                                                <div class="review-body">
                                                    <p>Sản phẩm màn hình sắc nét , tràn viền nhìn đẹp mắt. Pin dùng được khoảng 4-6 tiếng. Máy mở khóa khuôn mặt cực kỳ nhanh le. Ram cũng ổn, ko lag hay giật..âm thanh nghe rõ có cái hok thích pin liền.</p>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="review-heading">
                                                    <h5 class="name">Vy Vy</h5>
                                                    <p class="date">20-4-2019, 8:0 PM</p>
                                                    <div class="review-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o empty"></i>
                                                    </div>
                                                </div>
                                                <div class="review-body">
                                                    <p>Sản phẩm màn hình sắc nét , tràn viền nhìn đẹp mắt. Pin dùng được khoảng 4-6 tiếng. Máy mở khóa khuôn mặt cực kỳ nhanh le. Ram cũng ổn, ko lag hay giật..âm thanh nghe rõ có cái hok thích pin liền.</p>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="reviews-pagination">
                                            <li class="active">1</li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- /Reviews -->

                                <!-- Review Form -->
                                <div class="col-md-3">
                                    <div id="review-form">
                                        <form class="review-form">
                                            <input class="input" type="text" placeholder="Your Name">
                                            <input class="input" type="email" placeholder="Your Email">
                                            <textarea class="input" placeholder="Your Review"></textarea>
                                            <div class="input-rating">
                                                <span>Your Rating: </span>
                                                <div class="stars">
                                                    <input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
                                                    <input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
                                                    <input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
                                                    <input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
                                                    <input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
                                                </div>
                                            </div>
                                            <button class="primary-btn">Submit</button>
                                        </form>
                                    </div>
                                </div>
                                <!-- /Review Form -->
                            </div>
                        </div>
                        <!-- /tab3  -->
                    </div>
                    <!-- /product tab content  -->
                </div>
            </div>
            <!-- /product tab -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- Section -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <div class="col-md-12">
                <div class="section-title text-center">
                    <h3 class="title">Sản phẩm khác</h3>
                </div>
            </div>

            <div class="clearfix visible-sm visible-xs"></div>

            <!-- product -->
            <%
                for(int i=0 ; i < 4 ;i++)
                {

                    KhuyenMai kmsp = spDAOImpl.getKhuyenMai(dsSP.get(i).getMaSP());
                    double value1 =100-(kmsp.getGiaTri());
                    double value2 = (dsSP.get(i).getGiaBan()*100)/value1;
                    DecimalFormat df = new DecimalFormat("#.##");
                    String formatted = df.format(kmsp.getGiaTri());
            %>
            <a href="product.jsp?maSP=<%=dsSP.get(i).getMaSP()%>">
            <div class="col-md-3 col-xs-6">

                <div class="product">
                    <div class="product-img">
                        <img src="ImageServlet?maSP=<%=dsSP.get(i).getMaSP() %>" alt="">

                        <div class="product-label">
                            <span class="sale">-<%=formatted%>%</span>
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category"><%=dsSP.get(i).getHangSX()%></p>
                        <h3 class="product-name"><a href="#"><%=dsSP.get(i).getTenSP()%></a></h3>
                        <h4 class="product-price"><%=NumberFormat.getNumberInstance(Locale.GERMANY).format(dsSP.get(i).getGiaBan())%>đ<del class="product-old-price"><%=NumberFormat.getNumberInstance(Locale.GERMANY).format(value2)%>đ</del></h4>
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
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /Section -->

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

                            <li><a href="#">Xem giỏ hàng</a></li>
                            <li><a href="#">Đơn hàng</a></li>
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

<script>

    function getSL() {
        return document.getElementById("soluong").value;
    }

</script>


</body>
</html>
