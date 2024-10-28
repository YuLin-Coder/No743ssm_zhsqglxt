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
				<img src="themes/crm_blue1/img/bri_icon1.png"> <a href="index/index.action">首页</a>> 我的报损报修
			</div>
		</div>
		<div class="main_content">
			<div class="main_conDiv" id="vsb_content_501">
				<div class="v_news_content">
					<table style="width: 99%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
						<tr>
							<td height="30" colspan="9" align="center" background="themes/crm_blue1/img/bg.png" class="white14B">我的报损报修</td>
						</tr>
						<tr>
							<td align="center" bgcolor="#FFFFFF">报损单号</td>
							<td align="center" bgcolor="#FFFFFF">业主用户</td>
							<td align="center" bgcolor="#FFFFFF">报损原因</td>
							<td align="center" bgcolor="#FFFFFF">损失描述</td>
							<td align="center" bgcolor="#FFFFFF">报损日期</td>
							<td align="center" bgcolor="#FFFFFF">状态</td>
							<td align="center" bgcolor="#FFFFFF">备注</td>
						</tr>
						<c:forEach items="${brokenList}" var="broken">
							<tr align="center" bgcolor="#FFFFFF">
								<td style="text-align: center;">${broken.bno}</td>
								<td style="text-align: center;">${broken.username}</td>
								<td style="text-align: center;">${broken.reason}</td>
								<td style="text-align: center;">${broken.contents}</td>
								<td style="text-align: center;">${broken.addtime}</td>
								<td style="text-align: center;">${broken.status}</td>
								<td style="text-align: center;">${broken.memo}</td>
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
