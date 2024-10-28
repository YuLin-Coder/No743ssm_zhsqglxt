<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>欢迎使用网站后台管理系统</title>
<link rel="stylesheet" href="asset/page/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="asset/page/css/bootstrap-fileupload.min.css" type="text/css" />
<script type="text/javascript" src="asset/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/pwd.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<%
	String message = (String) request.getAttribute("message");
	if (message == null) {
		message = "";
	}
	if (!message.trim().equals("")) {
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<body>
	<div class="mainwrapper">
		<div class="maincontent">
			<div class="maincontentinner">
				<div class="widget" style="width: 50%; margin: 0 auto;">
					<h4 class="widgettitle">修改密码</h4>
					<div class="widgetcontent nopadding">
						<form class="stdform stdform2" method="post" action="admin/editpwd.action" name="myform" method="post">
							<p>
								<label>用户名</label> <span class="field"><%=session.getAttribute("adminname")%></span>
							</p>
							<p>
								<label>密码</label> <span class="field"><input type="password" name="password" class="input-xxlarge" id="password" placeholder="请输入密码" /></span>
							</p>
							<p>
								<label>新密码</label> <span class="field"><input type="password" name="newpassword" class="input-xxlarge" id="newpassword" placeholder="请输入新密码" /></span>
							</p>
							<p>
								<label>确认密码</label> <span class="field"><input type="password" name="repassword" class="input-xxlarge" id="repassword" placeholder="请输入确认密码" /></span>
							</p>
							<p class="stdformbutton" align="center">
								<button class="btn btn-primary" type="submit" id="sub">确认保存</button>
								<button type="reset" class="btn">重新输入</button>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>