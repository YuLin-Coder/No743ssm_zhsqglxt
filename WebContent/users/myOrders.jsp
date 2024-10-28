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
				<img src="themes/crm_blue1/img/bri_icon1.png"> <a href="index/index.action">首页</a>> 我的服务预约
			</div>
		</div>
		<div class="main_content">
			<div class="main_conDiv" id="vsb_content_501">
				<div class="v_news_content">
					<table style="width: 99%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
						<tr>
							<td height="30" colspan="9" align="center" background="themes/crm_blue1/img/bg.png" class="white14B">我的服务预约</td>
						</tr>
						<tr>
							<td align="center" bgcolor="#FFFFFF">收费单号</td>
							<td align="center" bgcolor="#FFFFFF">预约单号</td>
							<td align="center" bgcolor="#FFFFFF">业主用户</td>
							<td align="center" bgcolor="#FFFFFF">房产</td>
							<td align="center" bgcolor="#FFFFFF">服务</td>
							<td align="center" bgcolor="#FFFFFF">下单日期</td>
							<td align="center" bgcolor="#FFFFFF">服务日期</td>
							<td align="center" bgcolor="#FFFFFF">时间段</td>
							<td align="center" bgcolor="#FFFFFF">状态</td>
							<td align="center" bgcolor="#FFFFFF">备注</td>
						</tr>
						<c:forEach items="${ordersList}" var="orders">
							<tr align="center" bgcolor="#FFFFFF">
								<td style="text-align: center;">${orders.ordercode}</td>
								<td style="text-align: center;">${orders.username}</td>
								<td style="text-align: center;">${orders.houseno}</td>
								<td style="text-align: center;">${orders.servsname}</td>
								<td style="text-align: center;">${orders.addtime}</td>
								<td style="text-align: center;">${orders.orderdate}</td>
								<td style="text-align: center;">${orders.sections}</td>
								<td style="text-align: center;">${orders.status}</td>
								<td style="text-align: center;">${orders.memo}</td>
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
