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
<link rel="stylesheet" href="asset/page/css/responsive-tables.css">
<script type="text/javascript" src="asset/page/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="asset/page/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="mainwrapper">
		<div class="maincontent">
			<div class="maincontentinner">
				<h4 class="widgettitle">服务预约列表</h4>
				<table id="dyntable" class="table table-bordered responsive">

					<thead>
						<tr>
							<th style="text-align: center;">&nbsp;</th>
							<th style="text-align: center;">预约单号</th>
							<th style="text-align: center;">业主用户</th>
							<th style="text-align: center;">房产</th>
							<th style="text-align: center;">服务</th>
							<th style="text-align: center;">下单日期</th>
							<th style="text-align: center;">服务日期</th>
							<th style="text-align: center;">时间段</th>
							<th style="text-align: center;">状态</th>
							<th style="text-align: center;">备注</th>
							<th style="text-align: center;">操作</th>
						</tr>
					</thead>
					<c:forEach items="${ordersList}" var="orders">
						<tr style="text-align: center;">
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">${orders.ordercode}</td>
							<td style="text-align: center;">${orders.username}</td>
							<td style="text-align: center;">${orders.houseno}</td>
							<td style="text-align: center;">${orders.servsname}</td>
							<td style="text-align: center;">${orders.addtime}</td>
							<td style="text-align: center;">${orders.orderdate}</td>
							<td style="text-align: center;">${orders.sections}</td>
							<td style="text-align: center;">${orders.status}</td>
							<td style="text-align: center;">${orders.memo}</td>
							<td style="text-align: center;"><c:if test="${orders.status eq '未确认'}">
									<a href="orders/status.action?id=${orders.ordersid}">确认</a>&nbsp;&nbsp;</c:if><a
								href="orders/deleteOrders.action?id=${orders.ordersid}"
								onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div class="dataTables_info" id="dyntable_info" style="text-align: right;">${html }</div>
			</div>
		</div>
	</div>
</body>
</html>

