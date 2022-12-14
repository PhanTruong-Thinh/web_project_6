<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Chỉnh Sửa Đơn Đặt Hàng</title>
  <link href="css_admin/bootstrap.min.css" rel="stylesheet">
  <link href="css_admin/font-awesome.min.css" rel="stylesheet">
  <link href="css_admin/datepicker3.css" rel="stylesheet">
  <link href="css_admin/styles_admin.css" rel="stylesheet">

  <!--Custom Font-->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span></button>
        <a class="navbar-brand" href="#"><span></span>Admin</a>
        <ul class="nav navbar-top-links navbar-right">
          <li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
            <em class="fa fa-envelope"></em><span class="label label-danger">0</span>
          </a>
            <ul class="dropdown-menu dropdown-messages">
              <!--							<li>-->
              <!--								<div class="dropdown-messages-box"><a href="profile.html" class="pull-left">-->
              <!--									<img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">-->
              <!--									</a>-->
              <!--									<div class="message-body"><small class="pull-right">3 mins ago</small>-->
              <!--										<a href="#"><strong>John Doe</strong> commented on <strong>your photo</strong>.</a>-->
              <!--									<br /><small class="text-muted">1:24 pm - 25/03/2015</small></div>-->
              <!--								</div>-->
              <!--							</li>-->
              <li class="divider"></li>
              <!--							<li>-->
              <!--								<div class="dropdown-messages-box"><a href="profile.html" class="pull-left">-->
              <!--									<img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">-->
              <!--									</a>-->
              <!--									<div class="message-body"><small class="pull-right">1 hour ago</small>-->
              <!--										<a href="#">New message from <strong>Jane Doe</strong>.</a>-->
              <!--									<br /><small class="text-muted">12:27 pm - 25/03/2015</small></div>-->
              <!--								</div>-->
              <!--							</li>-->
              <li class="divider"></li>
              <li>
                <div class="all-button"><a href="#">
                  <em class="fa fa-inbox"></em> <strong>Tất cả tin nhắn</strong>
                </a></div>
              </li>
            </ul>
          </li>
          <li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
            <em class="fa fa-bell"></em><span class="label label-info">0</span>
          </a>
            <ul class="dropdown-menu dropdown-alerts">
              <!--							<li><a href="#">-->
              <!--								<div><em class="fa fa-envelope"></em> 1 New Message-->
              <!--									<span class="pull-right text-muted small">3 mins ago</span></div>-->
              <!--							</a></li>-->
              <!--							<li class="divider"></li>-->
              <!--							<li><a href="#">-->
              <!--								<div><em class="fa fa-heart"></em> 12 New Likes-->
              <!--									<span class="pull-right text-muted small">4 mins ago</span></div>-->
              <!--							</a></li>-->
              <!--							<li class="divider"></li>-->
              <!--							<li><a href="#">-->
              <!--								<div><em class="fa fa-user"></em> 5 New Followers-->
              <!--									<span class="pull-right text-muted small">4 mins ago</span></div>-->
              <!--							</a></li>-->
            </ul>
          </li>
        </ul>
      </div>
    </div><!-- /.container-fluid -->
  </nav>
  <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <div class="profile-sidebar">
      <div class="profile-userpic">
        <img src="img/admin.jpg" class="img-responsive" alt="">
      </div>
      <div class="profile-usertitle">
        <div class="profile-usertitle-name">Tên đăng nhập</div>
        <div class="profile-usertitle-status"><span class="indicator label-success"></span>Trực tuyến</div>
      </div>
      <div class="clear"></div>
    </div>
    <div class="divider"></div>
    <form role="search">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Tìm kiếm">
      </div>
    </form>
    <ul class="nav menu">
      <li><a href="admin.jsp"><em class="fa fa-dashboard">&nbsp;</em> Bảng Điều Khiển</a></li>
      <li><a href="widgets_admin.jsp"><em class="fa fa-calendar">&nbsp;</em> Quản Lý</a></li>
      <li><a href="charts_admin.jsp"><em class="fa fa-bar-chart">&nbsp;</em> Biểu Đồ</a></li>
      <li><a href="elements_admin.jsp"><em class="fa fa-toggle-off">&nbsp;</em> Giao Diện</a></li>
      <li><a href="order_admin.jsp"><em class="fa fa-clipboard">&nbsp;</em> Đơn Hàng</a></li>
      <li  class="parent-1 "><a data-toggle="collapse" href="#sub-item-2">
        <em class="fa fa-list">&nbsp;</em> Quản Lý Danh Mục <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="fa fa-list-alt"></em></span>
      </a>
        <ul class="children collapse" id="sub-item-2">
          <li><a class="" href="Category.jsp">
            <span class="">&nbsp;</span> Danh Mục
          </a></li>
          <li class=""><a class=""  href="product_admin.jsp">
            <span class="">&nbsp;</span> Sản Phẩm
          </a></li>
        </ul>
      </li>

      <li><a href="panels_admin.jsp"><em class="fa fa-clone">&nbsp;</em> Cảnh Báo</a></li>
      <li class="parent "><a data-toggle="collapse" href="#sub-item-1">
        <em class="fa fa-user-circle">&nbsp;</em> Thành Viên <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
      </a>
        <ul class="children collapse" id="sub-item-1">
          <li><a class="" href="Administrators.jsp">
            <span class="">&nbsp;</span> Người Quản Trị
          </a></li>
          <li><a class="" href="User_Public_admin.jsp">
            <span class="">&nbsp;</span> Người Dùng
          </a></li>
        </ul>
      </li>
      <li><a href="login_admin.html"><em class="fa fa-power-off">&nbsp;</em> Đăng Xuất</a></li>
    </ul>
  </div>
  <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="row">
      <ol class="breadcrumb">
        <li><a href="#">
          <em class="fa fa-home"></em>
        </a></li>
<!--        <li class="active"> Quản Lý Danh Mục / ss</li>-->
      </ol>
    </div><!--/.row-->

    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header"> Chỉnh sửa đơn đặt hàng</h1>
      </div>
    </div><!--/.row-->

    <div class="add">
      <button>Lưu thay đổi</button>
      <button>Xóa thay đổi</button>
    </div>
    <div class="container1">
      <div class="tilteproduct">
        <form class="form-1">
          <fieldset>
            <legend>Thông tin cố định</legend>
            <table class="table-details-1" >
              <tr>
                <td>Mã đơn hàng:</td>
                <td>...........</td>
              </tr>
              <tr>
                <td>Mã khách hàng:</td>
                <td>...........</td>
              </tr>
              <tr>
                <td>Tên khách hàng:</td>
                <td>...........</td>
              </tr>
              <tr>
                <td>Ngày đặt hàng:</td>
                <td>...........</td>
              </tr>
              <tr>
                <td>Giá trị đơn hàng:</td>
                <td>...........</td>
              </tr>
            </table>
          </fieldset>
        </form>
      </div>
      </div>
    </div>


    <div class="container-2">
        <div class="div-left">
          <form class="form-1">
            <fieldset>
              <legend>Thông tin có thể thay đổi</legend>

                <table class="table-details" >
                  <tr>
                    <td>Số điện thoại:</td>
                    <td>...........</td>
                  </tr>
                  <tr>
                    <td>Địa chỉ giao hàng:</td>
                    <td>...........</td>
                  </tr>
                  <tr>
                    <td>Trạng thái đơn hàng:</td>
                    <td>...........</td>
                  </tr>
                </table>

            </fieldset>
          </form>
        </div>
      </div>
    </div>

    <div class="container-2">
              <div class="div-rigth">
                <form class="form-1">
                  <fieldset>
                    <legend>Thông tin mới</legend>
                    Số điện thoại mới:
                    <input class="addInfo-1 addInfo"><br><br>
                    Địa chỉ giao hàng mới:
                    <input class="addInfo-2 addInfo"><br><br>
      <!--              <select>-->
      <!--                <option>--phường/xã--</option>-->
      <!--                <option value="">Tôm</option>-->
      <!--                <option value="">Cua</option>-->
      <!--                <option value="">Cá</option>-->
      <!--              </select>-->
      <!--              <select>-->
      <!--                <option>--Quận/Huyện--</option>-->
      <!--                <option value="">Quận 1</option>-->
      <!--                <option value="">Quận 2</option>-->
      <!--                <option value="">Quận 3</option>-->
      <!--              </select>-->
      <!--              <select>-->
      <!--                <option>TP.Hồ Chí Minh</option>-->
      <!--              </select><br><br>-->
                    Trạng thái:
                    <select>
                      <option value="">Chưa giao</option>
                      <option value="">Đang giao</option>
                      <option value="">Đã giao</option>
                    </select>

                  </fieldset>
                </form>
              </div>
    </div>
  </div>

  <script src="js/jquery-1.11.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/chart.min.js"></script>
  <script src="js/chart-data.js"></script>
  <script src="js/easypiechart.js"></script>
  <script src="js/easypiechart-data.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/custom.js"></script>
</body>
</html>