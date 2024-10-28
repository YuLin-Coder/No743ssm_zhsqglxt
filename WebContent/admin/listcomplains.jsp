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
				<h4 class="widgettitle">意见反馈列表</h4>
				<table id="dyntable" class="table table-bordered responsive">

					<thead>
						<tr>
							<th style="text-align: center;">&nbsp;</th>
							<th style="text-align: center;">反馈单号</th>
							<th style="text-align: center;">业主用户</th>
							<th style="text-align: center;">内容</th>
							<th style="text-align: center;">日期</th>
							<th style="text-align: center;">状态</th>
							<th style="text-align: center;">回复</th>
							<th style="text-align: center;">操作</th>
						</tr>
					</thead>
					<c:forEach items="${complainsList}" var="complains">
						<tr style="text-align: center;">
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">${complains.cno}</td>
							<td style="text-align: center;">${complains.username}</td>
							<td style="text-align: center;">${complains.contents}</td>
							<td style="text-align: center;">${complains.addtime}</td>
							<td style="text-align: center;">${complains.status}</td>
							<td style="text-align: center;">${complains.reps}</td>
							<td style="text-align: center;"><c:if test="${complains.status eq '未回复'}">
									<a href="complains/getComplainsById.action?id=${complains.complainsid}">回复</a>&nbsp;&nbsp;</c:if><a
								href="complains/deleteComplains.action?id=${complains.complainsid}"
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

