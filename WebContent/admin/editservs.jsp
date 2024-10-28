<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<script type="text/javascript" src="js/servs.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>

	<div class="mainwrapper">
		<div class="maincontent">
			<div class="maincontentinner">
				<div class="widget" style="width: 90%; margin: 0 auto;">
					<h4 class="widgettitle">编辑物业服务</h4>
					<div class="widgetcontent nopadding">
						<form class="stdform stdform2" method="post" action="servs/updateServs.action" name="myform" method="post">

							<p>
								<label>服务名称</label><span class="field"><input type="text" name="servsname" class="input-xxlarge"
									style="width: 430px;" id="servsname" value="${servs.servsname}" /></span>
							</p>
							<p>
								<label>收费金额</label><span class="field"><input type="text" name="money" class="input-xxlarge"
									style="width: 430px;" id="money" value="${servs.money}" /></span>
							</p>
							<p>
								<label>服务介绍</label><span class="field"><script type="text/javascript" src="ckeditor/ckeditor.js"></script>
									<textarea cols="80" name="contents" id="contents" rows="10">${servs.contents} </textarea>
									<script type="text/javascript">
										CKEDITOR.replace('contents', {
											language : 'zh-cn'
										});
									</script></span>
							</p>

							<p class="stdformbutton" align="center">
								<input type="hidden" name="servsid" id="servsid" value="${servs.servsid}" /><input type="hidden" name="hits"
									id="hits" value="${servs.hits}" /> <input type="hidden" name="sellnum" id="sellnum" value="${servs.sellnum}" />
								<input type="hidden" name="addtime" id="addtime" value="${servs.addtime}" />

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


