<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tin Tức
    </title>

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
            <li><a href="./shoping-cart.html"><i class="fa fa-shopping-bag"></i> <span>0</span></a></li>
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
            <li class="active"><a href="blog.jsp">Tin Tức</a></li>
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
                        <li><a href="./shop-grid.html">Mua sắm</a></li>
                        <!-- <li><a href="#">Các trang</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./shop-details.jsp">Shop Details</a></li>
                                <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                <li><a href="./checkout.jsp">Check Out</a></li>
                                <li><a href="./blog-details.jsp">Blog Details</a></li>
                            </ul>
                        </li> -->
                        <li class="active"><a href="blog.jsp">Tin tức</a></li>
                        <li><a href="contact.jsp">Liên hệ</a></li>
                    </ul>

            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>0</span></a></li>
                    </ul>
                    <div class="header__top__right__auth">
                        <a href="login_home.jsp"><i class="fa fa-user"></i> Đăng nhập </a>
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
                    <h2>Tin Tức</h2>
                    <div class="breadcrumb__option">
                        <a href="./home.html">Home</a>
                        <span>Tin tức</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Blog Details Section Begin -->
<section class="blog-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5 order-md-1 order-2">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="Tìm Kiếm ">

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
                        <h4>Tin tức </h4>
                        <div class="blog__sidebar__recent">
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img\blog_detail\canggherangme.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Càng ghẹ rang me </h6>

                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img\blog_detail\th.jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Cách lựa chọn hải sản tươi sống <br /> </h6>

                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img\blog_detail\th (1).jpg" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>Sự quan trọng của chất đạm đối với cơ thể<br /></h6>

                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Tìm kiếm bởi </h4>
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
            <div class="col-lg-8 col-md-7 order-md-1 order-1">
                <div class="blog__details__text">
                    <img src="img\blog\details\ththth.jpg" alt="">
                    <p>
                        Nhìn chung, bạn hoàn toàn có thể ăn cá mỗi ngày. Tuy nhiên, có một số loại cá bạn không nên ăn hằng ngày như cá bơn, cá bơn lưỡi ngựa, cá hồi đá, cá tráp biển hay cá vược. Nguyên do là thịt của những loại cá này có chứa một số kim loại nặng, ăn nhiều có thể gây tích tụ và làm ảnh hưởng đến sức khỏe của bạn.

                        Trong thịt cá có chứa nhiều chất dinh dưỡng cần thiết, lại không gây tăng cân nhiều nên nhiều người quan niệm rằng ăn cá mỗi ngày sẽ rất tốt cho sức khỏe. Tuy nhiên, cơ thể chúng ta cũng chỉ có thể hấp thụ chất dinh dưỡng trong cá ở một lượng nhất định, dù có ăn nhiều hơn thì lượng chất này cũng không thể hấp thu tiếp nữa. Chính vì vậy, một chế độ ăn uống bao gồm ít nhất 2 bữa cá mỗi tuần, mỗi bữa chứa khoảng 140g đã đủ để cung cấp các chất cần thiết từ cá cho cơ thể rồi.


                        Nếu bạn ăn cá có chứa dầu quá thường xuyên thì có thể ảnh hưởng đến cơ thể bạn. Vì vậy, bạn không nên ăn cá chiên hoặc cá chứa nhiều dầu hàng ngày.


                        Cá là loại thực phẩm tốt cho tất cả các thành viên trong gia đình, từ ông bà đến con nhỏ. Do đó, bạn hãy bổ sung cá vào chế độ ăn để mang lại những lợi ích tốt cho sức khỏe của cả nhà. Tuy nhiên, bạn cũng nên nhớ một số loại cá có chứa nhiều kim loại nặng có thể làm ảnh hưởng đến sức khỏe của mọi người.

                    </p>
                    <h3>PHI LÊ CÁ LÓC BÔNG </h3>
                    <p>Từ một món ăn có nguyên liệu cây nhà lá vườn rất dân dã nhưng hiện nay đã trở thành một món ăn được thực khách tại nhiều nhà hàng sang trọng ở Sài Gòn yêu thích, là món ăn đẳng cấp kết hợp từ hương vị ngọt tươi nguyên của thịt cá lóc bông hòa quyện với mùi thơm thơm của lá chuối tạo nên hương vị rất mới lạ và thú vị.

                        Để món này trở nên hấp dẫn hơn, các bạn nên mua cá lóc phi lê sạch xương về, đã sơ chế, về khỏi cần tốn thời gian làm cá, rất tiện lợi.</p>
                </div>
                <div class="blog__details__content">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="blog__details__author">
                                <!-- <div class="blog__details__author__pic">
                                    <img src="img/blog/details/details-author.jpg" alt="">
                                </div>
                                <div class="blog__details__author__text">
                                    <h6>Michael Scofield</h6>
                                    <span>Admin</span>
                                </div>
                            </div> -->
                            </div>
                            <div class="col-lg-6">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Section End -->

<!-- Related Blog Section Begin -->
<section class="related-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related-blog-title">
                    <h2>Có thể bạn tìm kiếm </h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img\blog_detail\th (2).jpg" alt="">
                    </div>
                    <div class="blog__item__text">

                        <h5><a href="#">Những địa điểm ăn uống ở quận 1</a></h5>
                        <p>Nếu bạn và gia đình có cơ hội đi du lich đến TP HCM, đừng bỏ lỡ địa điểm ăn uống hải sản...  </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img\blog_detail\th (3).jpg" alt="">
                    </div>
                    <div class="blog__item__text">

                        <h5><a href="#">Giá bán hải sản đồng loạt tăng </a></h5>
                        <p>Hôm nay ngày 1 tháng 11 , giá hải sản  ở các chợ đồng loạt tăng mạnh... </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img\blog_detail\th (4).jpg" alt="">
                    </div>
                    <div class="blog__item__text">

                        <h5><a href="#">Cá hồi nguồn dinh dưỡng tuyệt vời cho sức khỏe</a></h5>
                        <p>Cá hồi được mệnh danh là loại cá giàu dinh dưỡng ,chứa nhiều chất giúp cơ thể .. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Blog Section End -->

<!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="./home.html"><img src="img\blog_detail\th5.jpg" alt=""></a>
                    </div>
                    <ul>
                        <li>Địa chỉ:khu phố 6,Linh trung ,Thủ Đức</li>
                        <li>Số điện thoại:0909.898.9999 </li>
                        <li>Email: seadfreshfood@gmail.com</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                <div class="footer__widget">
                    <h6>Liên kết hữu ích</h6>
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
                        <input type="text" placeholder="Nhập email của bạn ">
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
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> Lập trình mạng <i class="fa fa-heart" aria-hidden="true"></i><a href="https://colorlib.com" target="_blank"></a>
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