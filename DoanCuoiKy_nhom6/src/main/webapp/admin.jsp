<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="project" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<meta charset="UTF-8">
	<meta name="description" content="Ogani Template">
	<meta name="keywords" content="Ogani, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Admin </title>

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

	<link href="css_admin/bootstrap.min.css" rel="stylesheet">
	<link href="css_admin/font-awesome.min.css" rel="stylesheet">
	<link href="css_admin/datepicker3.css" rel="stylesheet">
	<link href="css_admin/styles_admin.css" rel="stylesheet">

	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
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
							<li>-->
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
									<em class="fa fa-inbox"></em> <strong>T???t c??? tin nh???n</strong>
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
				<div class="profile-usertitle-name">T??n ????ng nh???p</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Tr???c tuy???n</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="T??m ki???m">
			</div>
		</form>
		<ul class="nav menu">
			<li class="active"><a href="admin.jsp"><em class="fa fa-dashboard">&nbsp;</em> B???ng ??i???u Khi???n</a></li>
			<li><a href="widgets_admin.jsp"><em class="fa fa-calendar">&nbsp;</em> Qu???n L??</a></li>
			<li><a href="charts_admin.jsp"><em class="fa fa-bar-chart">&nbsp;</em> Bi???u ?????</a></li>
			<li><a href="elements_admin.jsp"><em class="fa fa-toggle-off">&nbsp;</em> Giao Di???n</a></li>
			<li><a href="order_admin.jsp"><em class="fa fa-clipboard">&nbsp;</em> ????n H??ng</a></li>
			<li class="parent-1 "><a data-toggle="collapse" href="#sub-item-2">
				<em class="fa fa-list">&nbsp;</em> Qu???n L?? Danh M???c <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="fa fa-list-alt"></em></span>
			</a>
				<ul class="children collapse" id="sub-item-2">
					<li><a class="" href="${project}/trang-admin?muc=sanpham">
						<span class=" ">&nbsp;</span> Danh M???c
					</a></li>
					<li><a class="" href="${project}/trang-admin?muc=sanpham">
						<span class=" ">&nbsp;</span> S???n Ph???m
					</a></li>
				</ul>
			</li>

			<li><a href="panels_admin.jsp"><em class="fa fa-clone">&nbsp;</em> C???nh B??o</a></li>
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1">
				<em class="fa fa-user-circle">&nbsp;</em> Th??nh Vi??n <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="Administrators.jsp">
						<span class="">&nbsp;</span> Qu???n Tr??? Vi??n
					</a></li>
					<li><a class="" href="User_Public_admin.jsp">
						<span class="">&nbsp;</span> Ng?????i D??ng
					</a></li>

				</ul>
			</li>
			<li><a href="login_admin.html"><em class="fa fa-power-off">&nbsp;</em> ????ng Xu???t</a></li>
		</ul>
	</div>
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active"> B???ng ??i???u Khi???n</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header"> B???ng ??i???u Khi???n</h1>
			</div>
		</div><!--/.row-->
		
		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-teal panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-dollar color-blue"></em>
							<div class="large">0</div>
							<div class="text-muted">Doanh Thu</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-comments color-orange"></em>
							<div class="large">0</div>
							<div class="text-muted">B??nh Lu???n</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-orange panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-users color-teal"></em>
							<div class="large">0</div>
							<div class="text-muted">Ng?????i D??ng M???i</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-red panel-widget ">
						<div class="row no-padding"><em class="fa fa-xl fa-search color-red"></em>
							<div class="large">0</div>
							<div class="text-muted">L?????t Xem</div>
						</div>
					</div>
				</div>
			</div><!--/.row-->
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						Doanh thu
						<ul class="pull-right panel-settings panel-button-tab-right">
							<li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">
								<em class="fa fa-cogs"></em>
							</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li>
										<ul class="dropdown-settings">
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 1
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 2
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 3
											</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas class="main-chart" id="line-chart" height="200" width="600"></canvas>
						</div>
						<div class="panel-tk">
							<label>0.00 VN??</label>
						</div>
						<div class="panel-tk-1">
							<div class="tk-1" ><label class="fa fa-arrow-up">0%</label></div>
							<div class="tk-2" ><label  class="fa fa-arrow-down">0%</label></div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						S??? l?????t truy c???p
						<ul class="pull-right panel-settings panel-button-tab-right">
							<li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">
								<em class="fa fa-cogs"></em>
							</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li>
										<ul class="dropdown-settings">
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 1
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 2
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 3
											</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas class="main-chart" id="line-chart-2" height="200" width="600"></canvas>
						</div>
						<div class="panel-tk">
							<label>0</label>
						</div>
						<div class="panel-tk-1">
							<div class="tk-1" ><label class="fa fa-arrow-up">0%</label></div>
							<div class="tk-2" ><label  class="fa fa-arrow-down">0%</label></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>????n H??ng M???i</h4>
						<div class="easypiechart" id="easypiechart-blue" data-percent="0" ><span class="percent">0%</span></div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>B??nh Lu???n</h4>
						<div class="easypiechart" id="easypiechart-orange" data-percent="0" ><span class="percent">0%</span></div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Ng?????i D??ng M???i</h4>
						<div class="easypiechart" id="easypiechart-teal" data-percent="0" ><span class="percent">0%</span></div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Kh??ch</h4>
						<div class="easypiechart" id="easypiechart-red" data-percent="0" ><span class="percent">0%</span></div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-default chat">
					<div class="panel-heading">
						Tr?? Chuy???n
						<ul class="pull-right panel-settings panel-button-tab-right">
							<li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">
								<em class="fa fa-cogs"></em>
							</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li>
										<ul class="dropdown-settings">
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 1
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 2
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 3
											</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
<!--						<ul>-->
<!--							<li class="left clearfix"><span class="chat-img pull-left">-->
<!--								<img src="http://placehold.it/60/30a5ff/fff" alt="User Avatar" class="img-circle" />-->
<!--								</span>-->
<!--								<div class="chat-body clearfix">-->
<!--									<div class="header"><strong class="primary-font">John Doe</strong> <small class="text-muted">32 mins ago</small></div>-->
<!--									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ante turpis, rutrum ut ullamcorper sed, dapibus ac nunc.</p>-->
<!--								</div>-->
<!--							</li>-->
<!--							<li class="right clearfix"><span class="chat-img pull-right">-->
<!--								<img src="http://placehold.it/60/dde0e6/5f6468" alt="User Avatar" class="img-circle" />-->
<!--								</span>-->
<!--								<div class="chat-body clearfix">-->
<!--									<div class="header"><strong class="pull-left primary-font">Jane Doe</strong> <small class="text-muted">6 mins ago</small></div>-->
<!--									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ante turpis, rutrum ut ullamcorper sed, dapibus ac nunc.</p>-->
<!--								</div>-->
<!--							</li>-->
<!--							<li class="left clearfix"><span class="chat-img pull-left">-->
<!--								<img src="http://placehold.it/60/30a5ff/fff" alt="User Avatar" class="img-circle" />-->
<!--								</span>-->
<!--								<div class="chat-body clearfix">-->
<!--									<div class="header"><strong class="primary-font">John Doe</strong> <small class="text-muted">32 mins ago</small></div>-->
<!--									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ante turpis, rutrum ut ullamcorper sed, dapibus ac nunc.</p>-->
<!--								</div>-->
<!--							</li>-->
<!--						</ul>-->
					</div>
					<div class="panel-footer">
						<div class="input-group">
							<input type="text" class="form-control input-md" placeholder="Nh???p tin nh???n..." /><span class="input-group-btn">
								<button class="btn btn-primary btn-md" id="btn-chat">G???i</button>
						</span></div>
					</div>
				</div>
<!--				<div class="panel panel-default">-->
<!--					<div class="panel-heading">-->
<!--						Danh S??ch C??ng Vi???c-->
<!--						<ul class="pull-right panel-settings panel-button-tab-right">-->
<!--							<li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">-->
<!--								<em class="fa fa-cogs"></em>-->
<!--							</a>-->
<!--								<ul class="dropdown-menu dropdown-menu-right">-->
<!--									<li>-->
<!--										<ul class="dropdown-settings">-->
<!--											<li><a href="#">-->
<!--												<em class="fa fa-cog"></em> Settings 1-->
<!--											</a></li>-->
<!--											<li class="divider"></li>-->
<!--											<li><a href="#">-->
<!--												<em class="fa fa-cog"></em> Settings 2-->
<!--											</a></li>-->
<!--											<li class="divider"></li>-->
<!--											<li><a href="#">-->
<!--												<em class="fa fa-cog"></em> Settings 3-->
<!--											</a></li>-->
<!--										</ul>-->
<!--									</li>-->
<!--								</ul>-->
<!--							</li>-->
<!--						</ul>-->
<!--						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>-->
<!--					<div class="panel-body">-->
<!--						<ul class="todo-list">-->
<!--							<li class="todo-list-item">-->
<!--								<div class="checkbox">-->
<!--									<input type="checkbox" id="checkbox-1" />-->
<!--									<label for="checkbox-1">Make coffee</label>-->
<!--								</div>-->
<!--								<div class="pull-right action-buttons"><a href="#" class="trash">-->
<!--									<em class="fa fa-trash"></em>-->
<!--								</a></div>-->
<!--							</li>-->
<!--							<li class="todo-list-item">-->
<!--								<div class="checkbox">-->
<!--									<input type="checkbox" id="checkbox-2" />-->
<!--									<label for="checkbox-2">Check emails</label>-->
<!--								</div>-->
<!--								<div class="pull-right action-buttons"><a href="#" class="trash">-->
<!--									<em class="fa fa-trash"></em>-->
<!--								</a></div>-->
<!--							</li>-->
<!--							<li class="todo-list-item">-->
<!--								<div class="checkbox">-->
<!--									<input type="checkbox" id="checkbox-3" />-->
<!--									<label for="checkbox-3">Reply to Jane</label>-->
<!--								</div>-->
<!--								<div class="pull-right action-buttons"><a href="#" class="trash">-->
<!--									<em class="fa fa-trash"></em>-->
<!--								</a></div>-->
<!--							</li>-->
<!--							<li class="todo-list-item">-->
<!--								<div class="checkbox">-->
<!--									<input type="checkbox" id="checkbox-4" />-->
<!--									<label for="checkbox-4">Make more coffee</label>-->
<!--								</div>-->
<!--								<div class="pull-right action-buttons"><a href="#" class="trash">-->
<!--									<em class="fa fa-trash"></em>-->
<!--								</a></div>-->
<!--							</li>-->
<!--							<li class="todo-list-item">-->
<!--								<div class="checkbox">-->
<!--									<input type="checkbox" id="checkbox-5" />-->
<!--									<label for="checkbox-5">Work on the new design</label>-->
<!--								</div>-->
<!--								<div class="pull-right action-buttons"><a href="#" class="trash">-->
<!--									<em class="fa fa-trash"></em>-->
<!--								</a></div>-->
<!--							</li>-->
<!--							<li class="todo-list-item">-->
<!--								<div class="checkbox">-->
<!--									<input type="checkbox" id="checkbox-6" />-->
<!--									<label for="checkbox-6">Get feedback on design</label>-->
<!--								</div>-->
<!--								<div class="pull-right action-buttons"><a href="#" class="trash">-->
<!--									<em class="fa fa-trash"></em>-->
<!--								</a></div>-->
<!--							</li>-->
<!--						</ul>-->
<!--&lt;!&ndash;					</div>&ndash;&gt;-->
<!--					<div class="panel-footer">-->
<!--						<div class="input-group">-->
<!--							<input id="btn-input" type="text" class="form-control input-md" placeholder="Add new task" /><span class="input-group-btn">-->
<!--								<button class="btn btn-primary btn-md" id="btn-todo">Add</button>-->
<!--						</span></div>-->
<!--					</div>-->
<!--				</div>-->
<!--			</div>&lt;!&ndash;/.col&ndash;&gt;-->
			
			
<!--			<div class="col-md-6">-->
<!--				<div class="panel panel-default ">-->
<!--					<div class="panel-heading">-->
<!--						M???c Th???i Gian-->
<!--						<ul class="pull-right panel-settings panel-button-tab-right">-->
<!--							<li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">-->
<!--								<em class="fa fa-cogs"></em>-->
<!--							</a>-->
<!--								<ul class="dropdown-menu dropdown-menu-right">-->
<!--									<li>-->
<!--										<ul class="dropdown-settings">-->
<!--											<li><a href="#">-->
<!--												<em class="fa fa-cog"></em> Settings 1-->
<!--											</a></li>-->
<!--											<li class="divider"></li>-->
<!--											<li><a href="#">-->
<!--												<em class="fa fa-cog"></em> Settings 2-->
<!--											</a></li>-->
<!--											<li class="divider"></li>-->
<!--											<li><a href="#">-->
<!--												<em class="fa fa-cog"></em> Settings 3-->
<!--											</a></li>-->
<!--										</ul>-->
<!--									</li>-->
<!--								</ul>-->
<!--							</li>-->
<!--						</ul>-->
<!--						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>-->
<!--					<div class="panel-body timeline-container">-->
<!--						<ul class="timeline">-->
<!--							<li>-->
<!--								<div class="timeline-badge"><em class="glyphicon glyphicon-pushpin"></em></div>-->
<!--								<div class="timeline-panel">-->
<!--									<div class="timeline-heading">-->
<!--										<h4 class="timeline-title">Lorem ipsum dolor sit amet</h4>-->
<!--									</div>-->
<!--									<div class="timeline-body">-->
<!--										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer at sodales nisl. Donec malesuada orci ornare risus finibus feugiat.</p>-->
<!--									</div>-->
<!--								</div>-->
<!--							</li>-->
<!--							<li>-->
<!--								<div class="timeline-badge primary"><em class="glyphicon glyphicon-link"></em></div>-->
<!--								<div class="timeline-panel">-->
<!--									<div class="timeline-heading">-->
<!--										<h4 class="timeline-title">Lorem ipsum dolor sit amet</h4>-->
<!--									</div>-->
<!--									<div class="timeline-body">-->
<!--										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>-->
<!--									</div>-->
<!--								</div>-->
<!--							</li>-->
<!--							<li>-->
<!--								<div class="timeline-badge"><em class="glyphicon glyphicon-camera"></em></div>-->
<!--								<div class="timeline-panel">-->
<!--									<div class="timeline-heading">-->
<!--										<h4 class="timeline-title">Lorem ipsum dolor sit amet</h4>-->
<!--									</div>-->
<!--									<div class="timeline-body">-->
<!--										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer at sodales nisl. Donec malesuada orci ornare risus finibus feugiat.</p>-->
<!--									</div>-->
<!--								</div>-->
<!--							</li>-->
<!--							<li>-->
<!--								<div class="timeline-badge"><em class="glyphicon glyphicon-paperclip"></em></div>-->
<!--								<div class="timeline-panel">-->
<!--									<div class="timeline-heading">-->
<!--										<h4 class="timeline-title">Lorem ipsum dolor sit amet</h4>-->
<!--									</div>-->
<!--									<div class="timeline-body">-->
<!--										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>-->
<!--									</div>-->
<!--								</div>-->
<!--							</li>-->
<!--						</ul>-->
<!--					</div>-->
				</div>
			</div><!--/.col-->
		<div class="row">
			<div class="col-md-6 col-md-20">
				<div class="panel panel-default chat">
					<div class="panel-heading">
						Chi ti??u nhi???u nh???t
					</div>
					<div class="table-a">
						<table class="table-user">
							<tr class="boder-t">
								<th class="row-1">STT</th>
								<th class="row-7" >M?? ng?????i d??ng</th>
								<th class="row-2 row-cols-2"> T??n</th>
								<th class="row-3 row-cols-3"> Email</th>
								<th class="row-4 row-cols-4">Chi ti??u</th>
							</tr>
							<tr class="boder-t">
								<th class="row-1">1</th>
								<td>US002</td>
								<td><a>Phan Tr?????ng Th???nh</a></td>
								<td>Huuthinh19593@gmail.com</td>
								<td>xxxxxxxxx VN??</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>

		</div>
	</div>	<!--/.main-->
	
	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
	<script>
		window.onload = function () {
			var chart1 = document.getElementById("line-chart").getContext("2d");
			window.myLine = new Chart(chart1).Line(lineChartData, {
				responsive: true,
				scaleLineColor: "rgba(0,0,0,.2)",
				scaleGridLineColor: "rgba(0,0,0,.05)",
				scaleFontColor: "#c5c7cc"
			});
			var chart2 = document.getElementById("line-chart-2").getContext("2d");
			window.myLine = new Chart(chart2).Line(lineChartData2, {
				responsive: true,
				scaleLineColor: "rgba(0,0,0,.2)",
				scaleGridLineColor: "rgba(0,0,0,.05)",
				scaleFontColor: "#c5c7cc"
			});

		};
	</script>

		
</body>
</html>