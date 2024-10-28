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
<script type='text/javascript' src='<%=basePath%>My97DatePicker/WdatePicker.js' charset='utf-8'></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="mainWrap clearfix">
		<div class="main_tit">
			<div class="main_titT main_titTa" style="width: 99%">
				<img src="themes/crm_blue1/img/bri_icon1.png"> <a href="index/index.action">首页</a>> 预约服务
			</div>
		</div>
		<div class="main_content">
			<div class="main_conDiv" id="vsb_content_501">
				<div class="v_news_content">
					<form action="index/addOrders.action" method="post" name="myform">
						<table width="46%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
							<tr>
								<td height="30" colspan="2" align="center" background="themes/crm_blue1/img/bg.png" class="white14B">预约服务</td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">预约单号：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="ordercode" style="width: 260px; height: 30px" id="ordercode"
									value="${ordercode }" class="search_text" readonly="readonly" /></td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">房产：</td>
								<td bgcolor="#FFFFFF"> 
									<select name="houseid" class="search_text" style="width: 260px; height: 30px" id="houseid" >
									<option value="">---请选择房产--</option>
									<c:forEach items="${houseList}" var="house">
									<option value="${house.houseid}">${house.houseno }</option></c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">服务：</td>
								<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;${servs.servsname }<input type="hidden" name="servsid"
									style="width: 260px; height: 30px" id="servsid" value="${servs.servsid }" class="search_text"
									readonly="readonly" /></td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">服务日期：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="orderdate" style="width: 260px; height: 30px" id="orderdate"
									placeholder="请输入服务日期" class="search_text" onclick="WdatePicker()" readonly="readonly"/></td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">时间段：</td>
								<td bgcolor="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="sections" value="10:00--11:50" checked>10:00--11:50
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="sections" value="13:00--15:50">13:00--15:50
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="radio" name="sections" value="16:00--18:50">16:00--18:50
								</td>
							</tr>
							<tr>
								<td width="80" height="50" align="right" bgcolor="#FFFFFF">备注：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="memo" style="width: 260px; height: 30px" id="memo"
									placeholder="请输入备注" class="search_text" /></td>
							</tr>
							<tr>
								<td bgcolor="#FFFFFF" colspan="2" align="center"><label><input type="submit" name="Submit"
										value="提交" /> &nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" name="Submit2" value="重置" /> </label></td>
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
