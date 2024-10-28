<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>欢迎使用网站后台管理系统</title>
<link rel="stylesheet" href="asset/page/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="asset/page/css/responsive-tables.css">
<script type="text/javascript" src="asset/page/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="asset/page/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="mainwrapper">
		<div class="maincontent">
			<div class="maincontentinner">
				<h4 class="widgettitle">业主用户查询</h4>
				<table id="dyntable" class="table table-bordered responsive">

					<thead>
						<tr>
							<th style="text-align: center;">&nbsp;</th>
							<th style="text-align: center;">用户名</th>
							<th style="text-align: center;">姓名</th>
							<th style="text-align: center;">性别</th>
							<th style="text-align: center;">出生日期</th>
							<th style="text-align: center;">身份证</th>
							<th style="text-align: center;">联系方式</th>
							<th style="text-align: center;">状态</th>
							<th style="text-align: center;">注册日期</th>
						</tr>
					</thead>
					<c:forEach items="${usersList}" var="users">
						<tr style="text-align: center;">
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">${users.username}</td>
							<td style="text-align: center;">${users.realname}</td>
							<td style="text-align: center;">${users.sex}</td>
							<td style="text-align: center;">${users.birthday}</td>
							<td style="text-align: center;">${users.idcard}</td>
							<td style="text-align: center;">${users.contact}</td>
							<td style="text-align: center;">${users.status}</td>
							<td style="text-align: center;">${users.regdate}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div class="dataTables_info" id="dyntable_info" style="text-align: right;">
					<form action="users/queryUsersByCond.action" name="myform" method="post">
						查询条件: <select name="cond" style="width: 100px">
							<option value="username">按用户名查询</option>
							<option value="realname">按姓名查询</option>
							<option value="sex">按性别查询</option>
							<option value="birthday">按出生日期查询</option>
							<option value="idcard">按身份证查询</option>
							<option value="contact">按联系方式查询</option>
							<option value="status">按状态查询</option>
							<option value="regdate">按注册日期查询</option>
						</select> &nbsp;&nbsp;&nbsp; 关键字: <input type="text" name="name" required style="width: 100px" />&nbsp;&nbsp;&nbsp; <input
							type="submit" value="查询" class="mws-button green" /> ${html }
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

