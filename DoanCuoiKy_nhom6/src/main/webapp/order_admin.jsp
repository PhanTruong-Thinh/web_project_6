<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Đơn Hàng</title>
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
        <a class="navbar-brand" href="#"><span> </span>Admin</a>
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
      <li class="active"><a href="order_admin.jsp"><em class="fa fa-clipboard">&nbsp;</em> Đơn Hàng</a></li>
      <li class="parent-1 "><a data-toggle="collapse" href="#sub-item-2">
        <em class="fa fa-list">&nbsp;</em> Quản Lý Danh Mục <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="fa fa-list-alt"></em></span>
      </a>
        <ul class="children collapse" id="sub-item-2">
          <li><a class="" href="Category.jsp">
            <span class="">&nbsp;</span> Danh Mục
          </a></li>
          <li><a class="" href="product_admin.jsp">
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
        <li class="active"> Đơn Đặt Hàng</li>
      </ol>
    </div><!--/.row-->

    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header"> Đơn Đặt Hàng</h1>
      </div>
    </div><!--/.row-->

    <div class="panel panel-container">
      <div class="row">
        <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
          <div class="panel panel-teal panel-widget border-right">
            <div class="row no-padding"><em class="fa fa-xl  fa-dropbox color-blue"></em>
              <div class="large">0</div>
              <div class="text-muted">Tổng Số Đơn Hàng</div>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
          <div class="panel panel-blue panel-widget border-right">
            <div class="row no-padding"><em class="fa fa-xl fa-check color-orange"></em>
              <div class="large">0</div>
              <div class="text-muted">Đã Hoàn Thành</div>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
          <div class="panel panel-orange panel-widget border-right">
            <div class="row no-padding"><em class="fa fa-xl fa-clipboard color-teal"></em>
              <div class="large">0</div>
              <div class="text-muted">Đơn Hàng Mới</div>
            </div>
          </div>
        </div>
                <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
                  <div class="panel panel-red panel-widget ">
                    <div class="row no-padding"><em class="fa fa-xl fa-truck color-red"></em>
                      <div class="large">0</div>
                      <div class="text-muted">Đang Vận Chuyển</div>
                    </div>
                  </div>
                </div>
      </div>




    </div>
    <div class="row">
      <div class="col-md-6 col-md-20">
        <div class="panel panel-default chat">
          <div class="panel-heading">
            Danh sách đơn đơn hàng
          </div>
          <div class="panel-footer nemu-user">
            <div class="input-group">
              <input type="text" class="form-control input-md" placeholder="Tìm kiếm" /><span class="input-group-btn">
								<button class="btn btn-primary btn-md" id="btn-chat">Tìm</button>
						</span></div>
          </div>
          <div class="select">
            <select class="select-user">
              <option>Tự động</option>
              <option>Mới nhất</option>
              <option>Chưa giao</option>
              <option>Đã giao</option>
              <option>Đang giao</option>
              <option>Từ A-Z</option>
              <option>Từ Z-A</option>
            </select>

            <select class="select-user">
              <option value="">--tháng--</option>
              <option value="">Tháng 1</option>
              <option value="">Tháng 2</option>
              <option value="">Tháng 3</option>
              <option value="">Tháng 4</option>
              <option value="">Tháng 5</option>
              <option value="">Tháng 6</option>
              <option value="">Tháng 7</option>
              <option value="">Tháng 8</option>
              <option value="">Tháng 9</option>
              <option value="">Tháng 10</option>
              <option value="">Tháng 11</option>
              <option value="">Tháng 12</option>
            </select>
            <select class="select-user">
              <option value="">--năm--</option>
              <option value="">2022</option>
              <option value="">2023</option>
              <option value="">2024</option>
              <option value="">2025</option>
              <option value="">2026</option>
              <option value="">2027</option>
              <option value="">2028</option>
              <option value="">2029</option>
              <option value="">2030</option>
              <option value="">2031</option>
              <option value="">2032</option>
              <option value="">2033</option>
            </select>
            <button class="buton-admin" type="button">Xóa</button>
            <button class="buton-admin" type="button"><a href="Order_Editing_admin.jsp">Chỉnh sửa</a></button>

            <label class="lab label-1">Số đơn hàng: <span class="label label-info">0</span></label>
            <label class="label-1">Đơn mới: <span class="label label-info">0</span></label>
            <label class="label-1">Đang giao hàng: <span class="label label-info">0</span></label>
          </div>
          <div class="table-a">
            <table class="table-user">
              <tr class="boder-t">
                <th class="row-1">
                  <input type="checkbox">
                </th>
                <th class="row-order-1">Mã đơn hàng</th>
                <th class="row-order-2 row-cols-2"> Mã khách hàng</th>
                <th class="row-order-3 row-cols-3"> Tên</th>
                <th class="row-order-4 row-cols-4">Số điện thoại</th>
                <th class="row-order-5 row-cols-5">Ngày đặt hàng</th>
                <th class="row-order-6">Địa chỉ</th>
                <th class="row-order-7 row-cols-6">Trạng thái</th>
                <th class="row-order-8" >Thông tin đơn hàng</th>
              </tr>
              <tr class="boder-t">
                <th class="row-1">
                  <input type="checkbox">
                </th>
                <td><a>HOT</a></td>
                <td>US01</td>
                <td>THINH</td>
                <td>99XXXXXX999</td>
                <td>14/12/2022</td>
                <td>.........</td>
                <td>đã giao</td>
                <td><a href="Order_Details_admin.jsp">xem chi tiết</a></td>
              </tr>
            </table>
          </div>
        </div>
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