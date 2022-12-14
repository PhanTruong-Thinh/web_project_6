<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<c:set var="project" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sản Phẩm</title>
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
        <div class="profile-usertitle-name">Username</div>
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
          <li class="active"><a class="active"  href="product_admin.jsp">
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
        <li class="active"> Quản Lý Danh Mục</li>
      </ol>
    </div><!--/.row-->

    <div class="row">
      <div class="col-lg-12">
        <h1 class="page-header"> Sản Phẩm</h1>
      </div>
    </div><!--/.row-->

    <div class="panel panel-container">
      <div class="row">
        <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
          <div class="panel panel-teal panel-widget border-right">
            <div class="row no-padding"><em class="fa fa-xl fa-product-hunt color-blue"></em>
              <div class="large">0</div>
              <div class="text-muted">Tổng Số Sản Phẩm</div>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
          <div class="panel panel-blue panel-widget border-right">
            <div class="row no-padding"><em class="fa fa-xl fa-product-hunt color-orange"></em>
              <div class="large">0</div>
              <div class="text-muted">Đang Kinh Doanh</div>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
          <div class="panel panel-orange panel-widget border-right">
            <div class="row no-padding"><em class="fa fa-xl fa-product-hunt color-teal"></em>
              <div class="large">0</div>
              <div class="text-muted">Sản Phẩm Mới</div>
            </div>
          </div>
        </div>
        <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
          <label>Tình trạng sản phẩm:</label>
          <ul>
            <li>Còn hàng: <span class="label label-info">0</span> </li>
            <li>Hết hàng: <span class="label label-info">0</span>  </li>
            <li>Ngừng kinh doanh: <span class="label label-info">0</span> </li>

          </ul>
        </div>
      </div>




    </div>
    <div class="row">
      <div class="col-md-6 col-md-20">
        <div class="panel panel-default chat">
          <div class="panel-heading">
            Danh Sách Sản Phẩm
          </div>
          <div class="panel-footer nemu-user">
            <div class="input-group">
              <input type="text" class="form-control input-md" placeholder="Tìm kiếm" /><span class="input-group-btn">
								<button class="btn btn-primary btn-md" id="btn-chat">Tìm</button>
						</span></div>
          </div>
          <div class="select">
            <p style="margin-left: 15px">Số sản phẩm: <span class="label label-info">0</span> </p>
            <select class="select-user">
              <option>Tự động</option>
              <option value="">Nổi bật</option>
              <option value="">Mới</option>
              <option value="">Hiển thị</option>
              <option>Từ A-Z</option>
              <option>Từ Z-A</option>
            </select>
            <select class="select-user">
              <option>--danh mục--</option>
              <option value="">......</option>
              <option value="">......</option>
              <option value="">......</option>
            </select>
            <select class="select-user">
              <option>--giá--</option>
              <option value="">tăng dần</option>
              <option value="">giảm dần</option>
              <option value=""><= 1.000.000vnđ</option>
              <option value=""><= 2.000.000vnđ</option>
              <option value=""><= 5.000.000vnđ</option>
              <option value="">> 5.000.000vnđ</option>
            </select>
            <button class="buton buton-admin" type="button" style="float: right; background:  #30a5ff; margin-right: 20px; color: white; border: white; margin-left: 5px">Lưu</button>
            <button class="buton-admin" type="button" style="float: right; margin-left: 5px" ><a href="add_product_admin.jsp">Thêm</a></button>
            <button class="buton-admin" type="button" style="float: right; margin-left: 5px">Xóa</button>
            <button class="buton-admin" type="button" style="float: right; margin-left: 5px">Chỉnh sửa</button>

          </div>
          <div class="table-a">
            <table class="table-user">
              <tr class="boder-t">
                <th class="row-1">
                  <input type="checkbox">
                </th>
                <th class="row-pro-1" >Mã sản phẩm</th>
                <th class="row-pro-2 row-cols-4">Danh mục</th>
                <th class="row-pro-3 row-cols-2"> Tiêu đề</th>
                <th class="row-pro-4 row-cols-3"> Hình ảnh</th>
                <th class="row-pro-5 row-cols-4">Giá bán</th>
                <th class="row-pro-9 row-cols-5">Ngày đăng</th>
                <th class="row-pro-10 row-cols-6">Tình trạng</th>
                <th class="row-pro-11 row-cols-6">Lượt mua</th>
              </tr>
              <c:forEach var="p" items="${requestScope.products}">
                <tr class="boder-t">
                  <th class="row-1">
                    <input type="checkbox">
                  </th>
                  <td>${p.id}</td>
                  <td><a>${p.tenDM}</a></td>
                  <td>${p.name}</td>
                  <td><img src="${project}/${p.img}" alt="" style="width: 100px; margin: 10px 0;"></td>
                  <td>${p.price} VNĐ</td>
                  <td>${p.ngayD}</td>
                  <td>${p.trangThai}</td>
                  <td>7</td>
                </tr>
              </c:forEach>
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