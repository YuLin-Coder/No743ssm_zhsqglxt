<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>">
<title>${title}</title>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="mainWrap clearfix">
		<div class="main_tit">
			<div class="main_titT main_titTa" style="width: 99%">
				<img src="themes/crm_blue1/img/bri_icon1.png"> <a href="index/index.action">首页</a>> <a href="index/article.action?id=${article.bannerid }">${article.bannername }</a>>
				${article.title }
			</div>
		</div>
		<div class="main_content">
			<div class="main_contit">
				<h2>${article.title }</h2>
				<p>作者：管理员 发布日期：${article.addtime } 点击数：${article.hits }</p>
			</div>
			<div class="main_conDiv" id="vsb_content_501">
				<div class="v_news_content">
					<p class="vsbcontent_img">
						<img width="500" src="${article.image }">
					</p>
					${article.contents }
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
