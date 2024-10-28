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
<script type="text/javascript" src="themes/crm_blue1/js/jquery.min.js"></script>
<script type="text/javascript" src="js/pwd.js" charset="utf-8"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="mainWrap clearfix">
		<div class="main_tit">
			<div class="main_titT main_titTa" style="width: 99%">
				<img src="themes/crm_blue1/img/bri_icon1.png"> <a href="index/index.action">首页</a>> 修改密码
			</div>
		</div>
		<div class="main_content">
			<div class="main_conDiv" id="vsb_content_501">
				<div class="v_news_content">
					<form action="index/editpwd.action" name="myform" method="post">
						<table width="46%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
							<tr>
								<td height="30" colspan="2" align="center" background="themes/crm_blue1/img/bg.png" class="white14B">修改密码</td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">用户账号：</td>
								<td bgcolor="#FFFFFF">${sessionScope.username }<input type="hidden" name="username" style="width: 260px; height: 30px" id="username"
									value="${sessionScope.username }" />
								</td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">用户密码：</td>
								<td bgcolor="#FFFFFF"><input type="password" name="password" style="width: 260px; height: 30px" id="password" placeholder="请输入用户密码" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">新密码：</td>
								<td bgcolor="#FFFFFF"><input type="password" name="newpassword" style="width: 260px; height: 30px" id="newpassword" placeholder="请输入新密码" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">确认密码：</td>
								<td bgcolor="#FFFFFF"><input type="password" name="repassword" style="width: 260px; height: 30px" id="repassword" placeholder="请输入确认密码" /></td>
							</tr>
							<tr>
								<td bgcolor="#FFFFFF" colspan="2" align="center"><label><input type="submit" name="Submit" value="提交" /> &nbsp;&nbsp;&nbsp;&nbsp; <input
										type="reset" name="Submit2" value="重置" /> </label></td>
							</tr>
						</table>
					</form>

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
