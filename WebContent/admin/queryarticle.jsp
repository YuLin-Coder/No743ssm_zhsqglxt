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
				<h4 class="widgettitle">网站内容查询</h4>
				<table id="dyntable" class="table table-bordered responsive">

					<thead>
						<tr>
							<th style="text-align: center;">&nbsp;</th>
							<th style="text-align: center;">标题</th>
							<th style="text-align: center;">栏目</th>
							<th style="text-align: center;">是否置顶</th>
							<th style="text-align: center;">是否轮播</th>
							<th style="text-align: center;">发布日期</th>
							<th style="text-align: center;">点击数</th>
						</tr>
					</thead>
					<c:forEach items="${articleList}" var="article">
						<tr style="text-align: center;">
							<td style="text-align: center;">&nbsp;</td>
							<td style="text-align: center;">${article.title}</td>
							<td style="text-align: center;">${article.bannername}</td>
							<td style="text-align: center;">${article.istop}</td>
							<td style="text-align: center;">${article.isflv}</td>
							<td style="text-align: center;">${article.addtime}</td>
							<td style="text-align: center;">${article.hits}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div class="dataTables_info" id="dyntable_info" style="text-align: right;">
					<form action="article/queryArticleByCond.action" name="myform" method="post">
						查询条件: <select name="cond" style="width: 100px">
							<option value="title">按标题查询</option>
							<option value="bannerid">按栏目查询</option>
							<option value="istop">按是否置顶查询</option>
							<option value="isflv">按是否轮播查询</option>
							<option value="addtime">按发布日期查询</option>
							<option value="hits">按点击数查询</option>
						</select> &nbsp;&nbsp;&nbsp; 关键字: <input type="text" name="name" required style="width: 100px" />&nbsp;&nbsp;&nbsp; <input
							type="submit" value="查询" class="mws-button green" /> ${html }
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

