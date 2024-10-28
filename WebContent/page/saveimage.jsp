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
<title>欢迎使用网站后台管理系统</title>
<link rel="stylesheet" href="asset/page/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="asset/page/css/bootstrap-fileupload.min.css" type="text/css" />
<script type="text/javascript" src="asset/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	function selok() {
		opener.document.getElementById("image").value = myform.p.value;
		window.close();
	}
</script>
</head>
<body>
	<div class="mainwrapper">
		<div class="maincontent">
			<div class="maincontentinner">
				<div class="widget" style="width: 80%; margin: 0 auto;">
					<h4 class="widgettitle">文件上传</h4>
					<div class="widgetcontent nopadding">
						<form class="stdform stdform2" method="post" action="upload/image.action" name="myform" method="post" enctype="multipart/form-data">
							<p>
								<label>请选择文件</label> <span class="field"><input type="file" name="image" id="image" /></span>
							</p>
							<c:if test="${imageFileName ne null }">
								<p class="stdformbutton" align="center">
									${imageFileName }<input type="hidden" name="p" value="upfiles/${imageFileName }" id="p" />
								</p>
								<p class="stdformbutton" align="center">
									<button class="btn btn-primary" type="button" onclick="selok();">确认保存</button>
								</p>
							</c:if>
							<c:if test="${imageFileName eq null }">
								<p class="stdformbutton" align="center">
									<button class="btn btn-primary" type="submit">上传文件</button>
								</p>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>