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
			<div class="main_titT main_titTa">
				<img src="themes/crm_blue1/img/bri_icon1.png"> <a href="index/index.action">首页</a>> 家政服务
			</div>
		</div>

		<div class="main_con">
			<div class="main_conR main_conRa" style="width: 980px;">
				<div class="main_conRCb" style="width: 980px;">
					<ul>
						<c:forEach items="${servsList}" var="servs">
							<li id="line_u9_0" style="width: 940px;"><a href="index/servsDetail.action?id=${servs.servsid }"
								target="_blank"><span>${servs.addtime }</span><em>${servs.servsname }</em></a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="pb_sys_common pb_sys_normal pb_sys_style1"
					style="margin-top: 10px; margin-bottom: 10px; text-align: center;">
					<span class="p_pages">${html}</span>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
