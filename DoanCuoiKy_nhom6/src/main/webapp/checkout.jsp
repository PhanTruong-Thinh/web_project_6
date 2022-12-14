<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<c:set var="project" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thanh Toán</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="img/logo.png" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>0</span></a></li>
        </ul>
    </div>
    <div class="humberger__menu__widget">


    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li ><a href="./home.html">Home</a></li>
            <li><a href="./shop-grid.html">Shop</a></li>
            <!-- <li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">
                    <li><a href="./shop-details.jsp">Shop Details</a></li>
                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                    <li><a href="./checkout.jsp">Check Out</a></li>
                    <li><a href="./blog-details.jsp">Blog Details</a></li>
                </ul>
            </li> -->
            <li class="active"><a href="blog.jsp">Blog</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>

    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
            <li>Free Shipping for all Order of 100,000vnđ</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">


    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="./home.html"><img src="img\blog_detail\th5.jpg" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li ><a href="./home.html">Trang chủ</a></li>
                        <!-- <li><a href="./shop-grid.html">Mua sắm</a></li> -->
                        <li><a href="#">MUA SẮM </a>
                            <ul class="header__menu__dropdown">
                                <li><a href="shop-details.jsp">Shop Details</a></li>
                                <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                <li><a href="./checkout.html">Check Out</a></li>
                                <li><a href="blog-details.jsp">Blog Details</a></li>
                            </ul>
                        </li>
                        <li class="active"><a href="blog.jsp">Blog</a></li>
                        <li><a href="contact.jsp">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>

         <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="./shoping-cart.html"><i class="fa fa-shopping-bag"></i> <span>0</span></a></li>
                    </ul>
                    <div class="header__top__right__auth">
                        <a href="login_home.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
                    </div>
                </div>
            </div>
        </div>
    <div class="humberger__open">
        <i class="fa fa-bars"></i>
    </div>
    </div>
</header>
<!-- Header Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/blog_detail/anhbia.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Thanh toán </h2>
                    <div class="breadcrumb__option">
                        <a href="./index.html">Trang chủ</a>
                        <span>Thanh toán </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6><span class="icon_tag_alt"></span> Có phiếu giảm giá không? <a href="#">Bấm vào đây</a> nhập mã của bạn
                </h6>
            </div>
        </div>
        <div class="checkout__form">
            <h4>Chi tiết thanh toán</h4>
            <form action="#">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <div class="checkout__input">
                            <p>Họ và tên<span>*</span></p>
                            <input type="text" value="${sessionScope.auth.tenKH}">
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Email<span>*</span></p>
                                    <input type="text" value="${sessionScope.auth.email}">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Địa chỉ đặt hàng <span>*</span></p>
                                    <input type="text" id="input-address">
                                </div>
                            </div>
                        </div>
                        <div class="checkout__input__checkbox"></div>
                        <div class="checkout__input__checkbox">
                        </div>
                        <div class="checkout__input">
                            <p>Ghi chú đơn hàng<span>*</span></p>
                            <input type="text"
                                   placeholder="Ghi chú về đơn đặt hàng của bạn, ví dụ: lưu ý đặc biệt khi giao hàng.">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="checkout__order">
                            <h4>Đơn hàng của bạn</h4>
                            <div class="checkout__order__products">Sản phẩm <span>Tổng cộng</span></div>
                            <ul>
                                <c:set var="tongthu" value="${0}" />
                                <c:forEach var="item" items="${sessionScope.carts}">
                                    <c:set var="tongthu" value="${tongthu + item.thanhTien}" />
                                    <li>${item.nameSP} <span>${item.thanhTien} đ</span></li>
                                </c:forEach>
                            </ul>
                            <div class="checkout__order__subtotal">Tổng phụ thu<span>0 đ</span></div>
                            <div class="checkout__order__total">Tổng cộng <span>${tongthu} đ</span></div>
                            <div class="checkout__input__checkbox">
                            </div>
                            <p>Chăm sóc bản thân là điều quan trọng, bạn sẽ béo lên, nhưng đó là điều sẽ xảy ra theo thời gian
                                như với một số lao động và đau đớn lớn.</p>
                            <div class="checkout__input__checkbox">
                                <label for="payment">
                                    Kiếm tra thanh toán
                                    <input type="checkbox" id="payment">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="checkout__input__checkbox">
                            </div>
                            <button type="submit" class="site-btn" id="btn-dat-hang">ĐẶT HÀNG TẬN NƠI</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="./index.html"><img src="img\blog_detail\th5.jpg" alt=""></a>
                    </div>
                    <ul>
                        <li>Địa chỉ:khu phố 6,Linh trung,Thủ Đức</li>
                        <li>Số điện thoại:0909.898.9999 </li>
                        <li>Email: seadfreshfood@gmail.com</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                <div class="footer__widget">
                    <h6>Liên kết hữu ích </h6>
                    <ul>
                        <li><a href="#"> Thông tin</a></li>
                        <li><a href="#">Thông tin về của hàng </a></li>
                        <li><a href="#">Mua sắm an toàn </a></li>
                        <li><a href="#">Thông tin phân phối</a></li>
                        <li><a href="#">Chính sách bảo mật</a></li>
                        <li><a href="#">Sơ đồ trang web</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">Chúng tôi là ai</a></li>
                        <li><a href="#">Dịch vụ chúng tôi</a></li>
                        <li><a href="#">Dự án </a></li>
                        <li><a href="#">Liên hệ</a></li>
                        <li><a href="#">Đổi mới</a></li>
                        <li><a href="#">Lời chứng thực </a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="footer__widget">
                    <h6>Tham gia bản tin của chúng tôi ngay bây giờ</h6>
                    <p>Nhận thông tin cập nhật qua email về cửa hàng mới nhất của chúng tôi và các ưu đãi đặc biệt.</p>
                    <form action="#">
                        <input type="text" placeholder="Nhập Email của bạn ">
                        <button type="submit" class="site-btn">Đăng ký</button>
                    </form>
                    <div class="footer__widget__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="footer__copyright">
                    <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> Lập trình web <i class="fa fa-heart" aria-hidden="true"></i><a href="https://colorlib.com" target="_blank"></a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>

                </div>
            </div>
        </div></div>
</footer>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>

<script>
    $('#btn-dat-hang').on('click', function () {
        window.location.href = '${project}/order?address=' + $('#input-address').val()
    })
</script>

</body>

</html>