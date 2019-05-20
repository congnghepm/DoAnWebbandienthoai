<%--
  Created by IntelliJ IDEA.
  User: Kim Dung
  Date: 5/9/2019
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.SanPham" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.SanPhamDAO" %>
<%@ page import="model.HinhAnh_SP" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="model.KhuyenMai" %>
<%@ page import="dao.SanPhamDAOImpl" %>
<%@ page import="model.Cart" %>
<html>
  <head>
    <title>Index</title>
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
    ArrayList<SanPham> dsSPTieuBieu = spDAOImpl.getListSanPhamKMHot();
    ArrayList<SanPham> dsSPBanChay = spDAOImpl.getListSanPhamBanChay();
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
          <li><a href="#"><i class="fa fa-sign-in"></i> Đăng nhập</a> </li>

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

                <input class="input" name="ndtimkiem" id="ndtimkiem" placeholder="Nhập thông tin tìm kiếm" onkeyup="check()">
                <button onclick="myFunction()" type="submit" class="search-btn" id="search" disabled>Tìm kiếm</button>
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
                 &lt;%&ndash; <div class="qty">2</div>&ndash;%&gt;
                </a>
              </div>--%>
              <!-- /Wishlist -->

              <!-- Cart -->
              <div>
                <a href="blank.jsp">
                  <i class="fa fa-shopping-cart"></i>
                  <span>Giỏ hàng</span>
                  <%--<div class="qty">3</div>--%>
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
          <li class="active"><a href="index.jsp">Home</a></li>
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

  <!-- SECTION -->
  <div class="section">
    <!-- container -->
    <div class="container">
      <!-- row -->
      <div class="row">
        <!-- shop -->
        <div class="col-md-4 col-xs-6">
          <div class="shop">
            <div class="shop-img">
              <img src="./img/shop01.jpg" alt="">
            </div>
            <div class="shop-body">
              <h3>Sản phẩm<br>Bán chạy</h3>
              <a href="producthot.jsp" class="cta-btn">Xem thêm <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
        </div>
        <!-- /shop -->

        <!-- shop -->
        <div class="col-md-4 col-xs-6">
          <div class="shop">
            <div class="shop-img">
              <img src="./img/shop02.jpg" alt="" style="height: 240px">
            </div>
            <div class="shop-body">
              <h3>Sản phẩm<br>giá tốt</h3>
              <a href="#" class="cta-btn">Xem thêm <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
        </div>
        <!-- /shop -->

        <!-- shop -->
        <div class="col-md-4 col-xs-6">
          <div class="shop">
            <div class="shop-img">
              <img src="./img/shop03.png" alt="" style="height: 240px">
            </div>
            <div class="shop-body">
              <h3><br>Khuyến mãi</h3>
              <a href="#" class="cta-btn">Xem thêm <i class="fa fa-arrow-circle-right"></i></a>
            </div>
          </div>
        </div>
        <!-- /shop -->
      </div>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /SECTION -->

  <!-- SECTION -->
  <div class="section">
    <!-- container -->
    <div class="container">
      <!-- row -->
      <div class="row">

        <!-- section title -->
        <div class="col-md-12">
          <div class="section-title">
            <h3 class="title">Khuyến mãi hot </h3>
            <div class="section-nav">
              <ul class="section-tab-nav tab-nav">

                <li><a data-toggle="tab" href="#tab1">Xem thêm</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- /section title -->

        <!-- Products tab & slick -->
        <div class="col-md-12">
          <div class="row">

            <!-- product -->
            <%


              for(int i=0;i<4;i++)
              {
                KhuyenMai km = spDAOImpl.getKhuyenMai(dsSPTieuBieu.get(i).getMaSP());
                DecimalFormat df = new DecimalFormat("#.##");
                String formatted = df.format(km.getGiaTri());
            %>
            <a href="product.jsp?maSP=<%=dsSPTieuBieu.get(i).getMaSP()%>">
            <div class="col-md-3 col-xs-6">
              <div class="product">
                <div class="product-img">
                  <img src="ImageServlet?maSP=<%=dsSPTieuBieu.get(i).getMaSP() %>" alt="">

                  <div class="product-label">
                    <span class="sale">-<%=formatted%>%</span>
                  </div>
                </div>

                <div class="product-body">
                  <p class="product-category"><%=dsSPTieuBieu.get(i).getHangSX()%></p>
                  <h3 class="product-name"><a href="product.jsp?maSP=<%=dsSPTieuBieu.get(i).getMaSP()%>"><%=dsSPTieuBieu.get(i).getTenSP()%></a></h3>
                  <h4 class="product-price"><%=NumberFormat.getNumberInstance(Locale.GERMANY).format(dsSPTieuBieu.get(i).getGiaBan())%>đ</h4>
                  <div class="product-rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                  </div>

                </div>
                <div class="add-to-cart">
                  <a href="CartServlet?command=plus&maSP=<%=dsSPTieuBieu.get(i).getMaSP()%>"><button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button></a>
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



  <!-- SECTION -->
  <div class="section">
    <!-- container -->
    <div class="container">
      <!-- row -->
      <div class="row">

        <!-- section title -->
        <div class="col-md-12">
          <div class="section-title">
            <h3 class="title">Sản phẩm bán chạy</h3>
            <div class="section-nav">
              <ul class="section-tab-nav tab-nav">

                <li><a data-toggle="tab" href="#tab2">Xem thêm</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- /section title -->

        <!-- Products tab & slick -->
        <div class="col-md-12">
          <div class="row">
            <div class="row">

              <!-- product -->
              <%

                for (int j=0;j<4;j++)
                {
                  KhuyenMai km = spDAOImpl.getKhuyenMai(dsSPBanChay.get(j).getMaSP());
                  DecimalFormat df = new DecimalFormat("#.##");
                  String formatted = df.format(km.getGiaTri());
              %>
              <a href="product.jsp?maSP=<%=dsSPBanChay.get(j).getMaSP()%>">
              <div class="col-md-3 col-xs-6">

                <div class="product">
                  <div class="product-img">
                    <img src="ImageServlet?maSP=<%=dsSPBanChay.get(j).getMaSP() %>" alt="">

                    <div class="product-label">
                      <span class="sale">-<%=formatted%>%</span>
                    </div>
                  </div>

                  <div class="product-body">
                    <p class="product-category"><%=dsSPBanChay.get(j).getHangSX()%></p>
                    <h3 class="product-name"><a href="#"><%=dsSPBanChay.get(j).getTenSP()%></a></h3>
                    <h4 class="product-price"><%=NumberFormat.getNumberInstance(Locale.GERMANY).format(dsSPBanChay.get(j).getGiaBan())%>đ</h4>
                    <div class="product-rating">
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-o"></i>
                    </div>

                  </div>
                  <div class="add-to-cart">
                    <a href="CartServlet?command=plus&maSP=<%=dsSPBanChay.get(j).getMaSP()%>"><button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button></a>
                  </div>
                </div>

              </div>
              </a>
              <%
                }
              %>
          </div>
          </div>
        </div>
        <!-- /Products tab & slick -->
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
