<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>智慧社区管理系统</title>
<link href="asset/login/css/style.css" rel='stylesheet' type='text/css' />
<script type="text/javascript">
	function checkLogin() {
		var username = document.myform.username.value;
		var password = document.myform.password.value;
		if (username == '') {
			alert('请输入用户名');
			document.myform.username.focus();
			return false;
		}
		if (password == '') {
			alert('请输入密码');
			document.myform.password.focus();
			return false;
		}
	}
</script>
<%
	String message = (String) session.getAttribute("message");
	if (message == null) {
		message = "";
	}
	if (!message.trim().equals("")) {
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("</script>");
	}
	session.removeAttribute("message");
%>
</head>
<body>
	<div class="main">
		<div class="login">
			<h1>智慧社区管理系统</h1>
			<div class="inset">
				<!--start-main-->
				<form action="admin/login.action" name="myform" method="post" onSubmit="return checkLogin()">
					<div>
						<h2>后台管理登录</h2>
						<span><label>用户名</label></span> <span><input type="text" class="textbox" id="username" name="username" placeholder="请输入用户名"></span>
					</div>
					<div>
						<span><label>密码</label></span> <span><input type="password" class="password" id="password" name="password" placeholder="请输入密码"></span>
					</div>
					<div class="sign">
						<input type="submit" value="登录" class="submit" />
					</div>
				</form>
			</div>
		</div>
		<!--//end-main-->
	</div>
	<div class="copy-right">
	</div>
</body>
</html>