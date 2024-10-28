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
				<img src="themes/crm_blue1/img/bri_icon1.png"> <a href="index/index.action">首页</a>> ${servs.servsname }
			</div>
		</div>
		<div class="main_content">
			<div class="main_contit">
				<h2>${servs.servsname }</h2>
				<p>
					发布日期：${servs.addtime }&nbsp;&nbsp;点击数：${servs.hits }&nbsp;&nbsp;预约数：${servs.sellnum }&nbsp;&nbsp;收费金额：${servs.money }
					<a href="index/preOrders.action?id=${servs.servsid }"><font color="red">预约服务</font></a>
				</p>
			</div>
			<div class="main_conDiv" id="vsb_content_501">
				<div class="v_news_content">${servs.contents }</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
