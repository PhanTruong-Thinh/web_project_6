<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %><!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Blog">
    <meta name="keywords" content="unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tin Tức</title>

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
        <a href="#"><img src="img/blog_detail/th5.jpg" alt=""></a>
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
            <li ><a href="./home.jsp">Home</a></li>
            <li><a href="./shop-grid.jsp">Shop</a></li>
            <!-- <li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">
                    <li><a href="./shop-details.jsp">Shop Details</a></li>
                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                    <li><a href="./checkout.jsp">Check Out</a></li>
                    <li><a href="./blog-details.jsp">Blog Details</a></li>
                </ul>
            </li> -->
            <li class="active"><a href="./blog.jsp">Tin tức</a></li>
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
                    <a href="./home.jsp"><img src="img\blog_detail\th5.jpg" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li ><a href="./home.jsp">Trang chủ</a></li>
                        <li><a href="./shop-grid.jsp">Mua sắm</a></li>
                        
                        <li class="active"><a href="./blog.jsp">Tin tức</a></li>
                        <li><a href="contact.jsp">Liên hệ</a></li>
                    </ul>

            </div>

         <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="./shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>0</span></a></li>
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

<!-- Hero Section Begin -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Tất cả sản phẩm </span>
                    </div>
                    <ul>
                        <li><a href="#"> Cá </a></li>
                        <li><a href="#"> Tôm </a></li>
                        <li><a href="#"> Cua </a></li>
                        <li><a href="#">Ngêu </a></li>
                        <li><a href="#">ốc </a></li>
                        <li><a href="#">Sò</a></li>
                        <li><a href="#">Bạch tuột</a></li>
                        <li><a href="#">Các loại khác </a></li>

                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <input type="text" placeholder="Bạn cần tìm gì?">
                            <button type="submit" class="site-btn">TÌM KIẾM</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            0909.898.9999
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/blog_detail/anhbia.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Tin tức</h2>
                    <div class="breadcrumb__option">
                        <a href="./home.jsp">Trang chủ</a>
                        <span>Tin tức</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Blog Section Begin -->
<section class="blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="Tìm kiếm...">
                            <button type="submit"><span class="icon_search"></span></button>
                        </form>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Sản phẩm </h4>
                        <ul>
                            <li><a href="#">Cua</a></li>
                            <li><a href="#">Tôm </a></li>
                            <li><a href="#">Sò </a></li>
                            <li><a href="#">Ốc </a></li>
                            <li><a href="#">Các loại khác </a></li>
                        </ul>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Tin tức gần đây </h4>
                        <div class="blog__sidebar__recent">
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img\blog_detail\canggherangme.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Càng ghẹ rang me
                                    </h6>
                                    <span>MAR 05, 2019</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img\blog_detail\th.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Cách lựa chọn hải sản tươi sống</h6>
                                    <span>MAR 05, 2019</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img\blog_detail\th (1).jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6> Sự quan trọng của chất đạm đối với cơ thể<br /></h6>
                                    <span>MAR 05, 2019</span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Tìm kiếm bởi</h4>
                        <div class="blog__sidebar__item__tags">
                            <a href="#">Cá lóc</a>
                            <a href="#">Bào ngư </a>
                            <a href="#">Tôm càng xanh</a>
                            <a href="#">Sò Điệp</a>
                            <a href="#">Ghẹ</a>
                            <a href="#">Cá ba sa

                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-7">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img\blog_detail\th (3).jpg" alt="">
                            </div>
                            <div class="blog__item__text">

                                <h5><a href="#">Giá bán hải sản đồng loạt tăng</a></h5>
                                <p>Hôm nay ngày 1 tháng 11 , giá hải sản  ở các chợ đồng loạt tăng mạnh... </p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img\blog_detail\th (4).jpg" alt="">
                            </div>
                            <div class="blog__item__text">

                                <h5><a href="#">Cá hồi nguồn dinh dưỡng tuyệt vời cho sức khỏe</a></h5>
                                <p> Cá hồi được mệnh danh là loại cá giàu dinh dưỡng ,chứa nhiều chất giúp cơ thể ..</p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img\blog_detail\th (2).jpg" alt="">
                            </div>
                            <div class="blog__item__text">

                                <h5><a href="#">Những địa điểm ăn uống ở quận 1</a></h5>
                                <p> Nếu bạn và gia đình có cơ hội đi du lich đến TP HCM, đừng bỏ lỡ địa điểm ăn uống hải sản...</p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img\blog_detail\th (7).jpg" alt="">
                            </div>
                            <div class="blog__item__text">

                                <h5><a href="#">Nguyên liệu không rõ nguồn gốc</a></h5>
                                <p> Công an huyện Từ Liêm Hà Nội phát hiện một xe tải biển số 21A, đang trên đường vận chuyển 1 tấn cá không rõ nguồn gốc...
                                </p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img\blog_detail\th (6).jpg" alt="">
                            </div>
                            <div class="blog__item__text">

                                <h5><a href="#">Cua hoàng đế , thực phẩm xa xỉ hay thức ăn bổ dưỡng </a></h5>
                                <p>Hiện nay cua hoàng đế là sản phẩm nổi bật trên thị trường , nhưng thật sự nó có khác gì so với các loại cua thông thường ... </p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img\blog_detail\th (8).jpg" alt="">
                            </div>
                            <div class="blog__item__text">

                                <h5><a href="#">Các loại hải sản mang lại giá trị dinh dưỡng</a></h5>
                                <p>Để phân biệt được các loại hải sản dinh dưỡng cao , chúng ta cần dựa vào... </p>
                                <a href="#" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="product__pagination blog__pagination">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="./home.jsp"><img src="img\blog_detail\th5.jpg" alt=""></a>
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
        </div>
    </div>
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



</body>

</html>