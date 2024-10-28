<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" href="asset/page/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="asset/page/css/bootstrap-fileupload.min.css" type="text/css" />
<script type="text/javascript" src="asset/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/admin.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>

	<div class="mainwrapper">
		<div class="maincontent">
			<div class="maincontentinner">
				<div class="widget" style="width: 90%; margin: 0 auto;">
					<h4 class="widgettitle">新增管理员</h4>
					<div class="widgetcontent nopadding">
						<form class="stdform stdform2" method="post" action="admin/addAdmin.action" name="myform" method="post">

							<p>
								<label>用户名</label><span class="field"><input type="text" name="username" class="input-xxlarge"
									style="width: 430px;" id="username" placeholder="请输入用户名" /></span>
							</p>
							<p>
								<label>密码</label><span class="field"><input type="password" name="password" class="input-xxlarge"
									style="width: 430px;" id="password" placeholder="请输入密码" /></span>
							</p>
							<p>
								<label>姓名</label><span class="field"><input type="text" name="realname" class="input-xxlarge"
									style="width: 430px;" id="realname" placeholder="请输入姓名" /></span>
							</p>
							<p>
								<label>联系方式</label><span class="field"><input type="text" name="contact" class="input-xxlarge"
									style="width: 430px;" id="contact" placeholder="请输入联系方式" /></span>
							</p>


							<p class="stdformbutton" align="center">
								<button class="btn btn-primary" type="submit" id="sub">确认保存</button>
								<button type="reset" class="btn" id="res">重新输入</button>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


