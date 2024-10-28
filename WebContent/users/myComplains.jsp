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
				<img src="themes/crm_blue1/img/bri_icon1.png"> <a href="index/index.action">首页</a>> 我的意见反馈
			</div>
		</div>
		<div class="main_content">
			<div class="main_conDiv" id="vsb_content_501">
				<div class="v_news_content">
					<table style="width: 99%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
						<tr>
							<td height="30" colspan="9" align="center" background="themes/crm_blue1/img/bg.png" class="white14B">我的意见反馈</td>
						</tr>
						<tr>
							<td align="center" bgcolor="#FFFFFF">反馈单号</td>
							<td align="center" bgcolor="#FFFFFF">内容</td>
							<td align="center" bgcolor="#FFFFFF">日期</td>
							<td align="center" bgcolor="#FFFFFF">状态</td>
							<td align="center" bgcolor="#FFFFFF">回复</td>
						</tr>
						<c:forEach items="${complainsList}" var="complains">
							<tr align="center" bgcolor="#FFFFFF">
								<td align="center">${complains.cno}</td>
								<td align="center">${complains.contents}</td>
								<td align="center">${complains.addtime}</td>
								<td align="center">${complains.status}</td>
								<td align="center">${complains.reps}</td>
							</tr>
						</c:forEach>
					</table>
					<table height="20" border="0" cellpadding="0" cellspacing="0" style="width: 99%">
						<tr align="center">
							<td align="center" bgcolor="#FFFFFF">${html }</td>
						</tr>
					</table>
				</div>
			</div>

			<div class="main_contit">
				<h2>&nbsp;</h2>
				<p>&nbsp;</p>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
