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
				<img src="themes/crm_blue1/img/bri_icon1.png"> <a href="index/index.action">首页</a>> 意见反馈
			</div>
		</div>
		<div class="main_content">
			<div class="main_conDiv" id="vsb_content_501">
				<div class="v_news_content">
					<form action="index/addComplains.action" method="post" name="myform">
						<table width="46%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
							<tr>
								<td height="30" colspan="2" align="center" background="themes/crm_blue1/img/bg.png" class="white14B">意见反馈</td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">反馈单号：</td>
								<td bgcolor="#FFFFFF"><input type="text" name="cno" style="width: 260px; height: 30px" required="required"
									id="cno" value="${cno }" /></td>
							</tr>
							<tr>
								<td height="50" align="right" bgcolor="#FFFFFF">内容：</td>
								<td bgcolor="#FFFFFF"><textarea style="width: 99%; height: 130px" name="contents" id="contents"
										placeholder="请输入内容" required="required"></textarea></td>
							</tr>
							<tr>
								<td bgcolor="#FFFFFF" colspan="2" align="center"><label> <input type="submit" name="Submit"
										value="提交" /> &nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" name="Submit2" value="重置" />
								</label></td>
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
