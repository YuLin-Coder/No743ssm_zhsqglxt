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
				<h4 class="widgettitle">物业服务列表</h4>
				<table id="dyntable" class="table table-bordered responsive">

					<thead>
						<tr>
							<th style="text-align: center;">&nbsp;</th>
							<th style="text-align: center;">服务名称</th>
							<th style="text-align: center;">收费金额</th>
							<th style="text-align: center;">点击数</th>
							<th style="text-align: center;">预约次数</th>
							<th style="text-align: center;">创建日期</th>
							<th style="text-align: center;">操作</th>
						</tr>
					</thead>
					<c:forEach items="${servsList}" var="servs">
						<tr style="text-align: center;">
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">${servs.servsname}</td>
							<td style="text-align: center;">${servs.money}</td>
							<td style="text-align: center;">${servs.hits}</td>
							<td style="text-align: center;">${servs.sellnum}</td>
							<td style="text-align: center;">${servs.addtime}</td>
							<td style="text-align: center;"><a href="servs/getServsById.action?id=${servs.servsid}">编辑</a>&nbsp;&nbsp;<a
								href="servs/deleteServs.action?id=${servs.servsid}"
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

