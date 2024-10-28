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
<script type="text/javascript" src="js/house.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>

	<div class="mainwrapper">
		<div class="maincontent">
			<div class="maincontentinner">
				<div class="widget" style="width: 90%; margin: 0 auto;">
					<h4 class="widgettitle">新增房产</h4>
					<div class="widgetcontent nopadding">
						<form class="stdform stdform2" method="post" action="house/addHouse.action" name="myform" method="post">

							<p>
								<label>房产号</label><span class="field"><input type="text" name="houseno" class="input-xxlarge"
									style="width: 430px;" id="houseno" placeholder="请输入房产号" /></span>
							</p>
							<p>
								<label>地址描述</label><span class="field"><input type="text" name="address" class="input-xxlarge"
									style="width: 430px;" id="address" placeholder="请输入地址描述" /></span>
							</p>
							<p>
								<label>面积</label><span class="field"><input type="text" name="mianji" class="input-xxlarge"
									style="width: 430px;" id="mianji" placeholder="请输入面积" /></span>
							</p>
							<p>
								<label>朝向</label><span class="field"><input type="text" name="chaoxiang" class="input-xxlarge"
									style="width: 430px;" id="chaoxiang" placeholder="请输入朝向" /></span>
							</p>
							<p>
								<label>备注</label><span class="field"><input type="text" name="memo" class="input-xxlarge"
									style="width: 430px;" id="memo" placeholder="请输入备注" /></span>
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


