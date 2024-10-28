<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>智慧社区管理系统</title>
<link rel="stylesheet" href="asset/main/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="asset/main/css/font-awesome.min.css">
<link rel="stylesheet" href="asset/main/css/index.css">
<link rel="stylesheet" href="asset/main/css/skins/_all-skins.css">
</head>
<body class="hold-transition skin-blue sidebar-mini" style="overflow: hidden;">
	<div id="ajax-loader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #fff; z-index: 10000; overflow: hidden;">
		<img src="img/ajax-loader.gif" style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; margin: auto;" />
	</div>
	<div class="wrapper">
		<!--头部信息-->
		<header class="main-header">
			<a href="#" target="_blank" class="logo"> <span class="logo-mini"></span> <span class="logo-lg"> </span>
			</a>
			<nav class="navbar navbar-static-top">
				<a class="sidebar-toggle"> <span class="sr-only">切换</span>
				</a><span class="index_top"><strong>欢迎使用智慧社区管理系统</strong></span>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">

						<li class="dropdown user user-menu"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span class="hidden-xs">${sessionScope.adminname }</span>
						</a>
							<ul class="dropdown-menu pull-right">
								<li><a class="menuItem" data-id="userInfo" href="admin/prePwd.action"><i class="fa fa-user"></i>修改密码</a></li>
								<li class="divider"></li>
								<li><a href="admin/exit.action"><i class="ace-icon fa fa-power-off"></i>安全退出</a></li>
							</ul></li>
					</ul>
				</div>
			</nav>
		</header>
		<!--左边导航-->
		<jsp:include page="menu.jsp"></jsp:include>
		<!--中间内容-->
		<div id="content-wrapper" class="content-wrapper">
			<div class="content-tabs">
				<button class="roll-nav roll-left tabLeft">
					<i class="fa fa-backward"></i>
				</button>
				<nav class="page-tabs menuTabs">
					<div class="page-tabs-content" style="margin-left: 0px;">
						<a href="javascript:;" class="menuTab active" data-id="">&nbsp;我的桌面</a>
					</div>
				</nav>
				<button class="roll-nav roll-right tabRight">
					<i class="fa fa-forward" style="margin-left: 3px;"></i>
				</button>
				<div class="btn-group roll-nav roll-right">
					<button class="dropdown tabClose" data-toggle="dropdown">
						页签操作<i class="fa fa-caret-down" style="padding-left: 3px;"></i>
					</button>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a class="tabReload" href="javascript:void();">刷新当前</a></li>
						<li><a class="tabCloseCurrent" href="javascript:void();">关闭当前</a></li>
						<li><a class="tabCloseAll" href="javascript:void();">全部关闭</a></li>
						<li><a class="tabCloseOther" href="javascript:void();">除此之外全部关闭</a></li>
					</ul>
				</div>
				<button class="roll-nav roll-right fullscreen">
					<i class="fa fa-arrows-alt"></i>
				</button>
			</div>
			<div class="content-iframe" style="overflow: hidden;">
				<div class="mainContent" id="content-main" style="margin: 10px; margin-bottom: 0px; padding: 0;">
					<iframe class="LRADMS_iframe" width="100%" height="100%" src="" frameBorder="0"></iframe>
				</div>
			</div>
		</div>
	</div>
	<script src="asset/main/js/jquery/jQuery-2.2.0.min.js"></script>
	<script src="asset/main/js/bootstrap/js/bootstrap.min.js"></script>
	<script src="asset/main/js/index.js"></script>

</body>
</html>