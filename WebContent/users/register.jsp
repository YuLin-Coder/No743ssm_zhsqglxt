<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${title}</title>
<script type='text/javascript' src='themes/crm_blue1/js/jquery.min.js'></script>
<script type='text/javascript' src='js/selimage.js' charset='utf-8'></script>
<script type='text/javascript' src='js/users.js' charset='utf-8'></script>
<script type='text/javascript' src='<%=basePath%>My97DatePicker/WdatePicker.js' charset='utf-8'></script>
</head>
<body>
	<jsp:include page='header.jsp'></jsp:include>
	<div class='mainWrap clearfix'>
		<div class='main_tit'>
			<div class='main_titT main_titTa' style='width: 99%'>
				<img src='themes/crm_blue1/img/bri_icon1.png'> <a href='index/index.action'>首页</a>> 用户注册
			</div>
		</div>
		<div class='main_content'>
			<div class='main_contit'>
				<p>&nbsp;</p>
			</div>
			<div class='main_conDiv' id='vsb_content_501'>
				<div class='v_news_content'>
					<form action='index/register.action' method='post' name='myform'>
						<table width='46%' border='0' cellpadding='5' cellspacing='1' bgcolor='#E0EDB7'>
							<tr>
								<td height='30' colspan='2' align='center' background='themes/crm_blue1/img/bg.png' class='white14B'>用户注册</td>
							</tr>

							<tr>
								<td height='50' align='right' bgcolor='#FFFFFF'>用户名</td>
								<td bgcolor='#FFFFFF'><input type="text" name="username" style='width: 260px; height: 30px'
									required='required' id="username" placeholder="请输入用户名" /></td>
							</tr>
							<tr>
								<td height='50' align='right' bgcolor='#FFFFFF'>密码</td>
								<td bgcolor='#FFFFFF'><input type="password" name="password" style='width: 260px; height: 30px'
									required='required' id="password" placeholder="请输入密码" /></td>
							</tr>
							<tr>
								<td height='50' align='right' bgcolor='#FFFFFF'>姓名</td>
								<td bgcolor='#FFFFFF'><input type="text" name="realname" style='width: 260px; height: 30px'
									required='required' id="realname" placeholder="请输入姓名" /></td>
							</tr>
							<tr>
								<td height='50' align='right' bgcolor='#FFFFFF'>性别</td>
								<td bgcolor='#FFFFFF'><input type="radio" name="sex" value="男" title="男" checked>男
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="女" title="女">女</td>
							</tr>
							<tr>
								<td height='50' align='right' bgcolor='#FFFFFF'>出生日期</td>
								<td bgcolor='#FFFFFF'><input type="text" name="birthday" style='width: 260px; height: 30px'
									required='required' id="birthday" onclick="WdatePicker()" readonly="readonly" placeholder="请输入出生日期" /></td>
							</tr>
							<tr>
								<td height='50' align='right' bgcolor='#FFFFFF'>身份证</td>
								<td bgcolor='#FFFFFF'><input type="text" name="idcard" style='width: 260px; height: 30px'
									required='required' id="idcard" placeholder="请输入身份证" /></td>
							</tr>
							<tr>
								<td height='50' align='right' bgcolor='#FFFFFF'>联系方式</td>
								<td bgcolor='#FFFFFF'><input type="text" name="contact" style='width: 260px; height: 30px'
									required='required' id="contact" placeholder="请输入联系方式" /></td>
							</tr>
							<tr>
								<td height='50' align='right' bgcolor='#FFFFFF'>头像</td>
								<td bgcolor='#FFFFFF'><input style='width: 260px; height: 30px' required='required' type="text"
									name="image" id="image" onclick="selimage();" placeholder="请选择图片" readonly="readonly" /></td>
							</tr>


							<tr>
								<td bgcolor='#FFFFFF' colspan='2' align='center'><label><input type='submit' name='Submit'
										value='提交' /> &nbsp;&nbsp;&nbsp;&nbsp; <input type='reset' name='Submit2' value='重置' /> </label></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class='main_contit'>
				<h2>&nbsp;</h2>
				<p>&nbsp;</p>
			</div>
		</div>
	</div>
	<jsp:include page='footer.jsp'></jsp:include>