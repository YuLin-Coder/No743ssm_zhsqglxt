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
<script type="text/javascript" src="js/article.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>

	<div class="mainwrapper">
		<div class="maincontent">
			<div class="maincontentinner">
				<div class="widget" style="width: 90%; margin: 0 auto;">
					<h4 class="widgettitle">新增网站内容</h4>
					<div class="widgetcontent nopadding">
						<form class="stdform stdform2" method="post" action="article/addArticle.action" name="myform" method="post">

							<p>
								<label>标题</label><span class="field"><input type="text" name="title" class="input-xxlarge"
									style="width: 430px;" id="title" placeholder="请输入标题" /></span>
							</p>
							<p>
								<label>栏目</label><span class="field"><select name="bannerid" class="input-xxlarge" style="width: 430px;"
									id="bannerid"><option value="">---请选择栏目--</option>
										<c:forEach items="${bannerList}" var="banner">
											<option value="${banner.bannerid}">${banner.bannername }</option>
										</c:forEach></select></span>
							</p>
							<p>
								<label>图片</label><span class="field"><input class="input-xxlarge" style="width: 430px;" type="text"
									name="image" id="image" onclick="selimage();" placeholder="请选择图片" readonly="readonly" /></span>
							</p>
							<p>
								<label>是否置顶</label><span class="field"><input type="radio" name="istop" value="是" title="是" checked>是
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="istop" value="否" title="否">否</span>
							</p>
							<p>
								<label>是否轮播</label><span class="field"><input type="radio" name="isflv" value="是" title="是" checked>是
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="isflv" value="否" title="否">否</span>
							</p>
							<p>
								<label>内容</label><span class="field"><script type="text/javascript" src="ckeditor/ckeditor.js"></script>
									<textarea cols="80" name="contents" id="contents" rows="10" placeholder="请输入内容"> </textarea>
									<script type="text/javascript">
										CKEDITOR.replace('contents', {
											language : 'zh-cn'
										});
									</script></span>
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


