<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>">
<title>${title}</title>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!--container-->
	<div class="vsb-box">
		<div class="vsb-container container clearfix" columns="9" containerid="2">
			<!--新闻信息-->
			<div class="vsb-space new_inforBox new_inforBox2 fl" columns="4">
				<div class="dynamic" style="width: 996px">
					<script language="javascript" src="themes/crm_blue1/js/news/centerCutImg.js"></script>
					<h2>置顶新闻</h2>
					<script>
						_showDynClickBatch([ 'dynclicks_u3_1214' ], [ 1214 ],
								"wbnews", 1638199800)
					</script>
				</div>
				<div class="newBox" style="width: 996px">
					<!--新闻信息-->
					<div class="new_pic new_pic1">
						<link href="themes/crm_blue1/css/news/imagechangenews.css" type="text/css" rel="stylesheet" />
						<script language="javascript" src="themes/crm_blue1/js/news/imagechangenews.js"></script>
						<script language="JavaScript">
							var u_u4_icn = new ImageChangeNews("u_u4_", 310,
									250, 4, 2.0, false, false, false, true,
									false, "#u_u4_centerCutImg");

							//初始化图片, 并启动定时
							function u_u4_init_img() {
								<c:forEach items="${favList}" var="article">
								u_u4_icn
										.addimg(
												"${article.image }?e=.jpg",
												"index/read.action?id=${article.articleid }",
												"", "", "${article.title }");
								</c:forEach>
								u_u4_icn.changeimg(0);
							}
						</script>
						<table cellspacing="0" cellpadding="0" border="0" style="padding: 0px margin:0px; border: 0px">
							<tr>
								<td>
									<div id="u_u4_centerCutImg" style="OVERFLOW: hidden; height: 250px; width: 310px">
										<div id="u_u4_div" align="center"
											style="padding: 0px; margin: 0px; border: 0px solid black; background-color: #000000; FILTER: progid:DXImageTransform.Microsoft.RevealTrans(duration=2.0, transition=23); height: 250px; width: 310px">
											<div id="u_u4_imgdiv" style="padding: 0px; border: 0px;">
												<a id="u_u4_url" target="_blank"><img id="u_u4_pic" border="0" src="/system/resource/images/space.gif"></a>
											</div>
										</div>
										<div
											style="filter: alpha(style = 1, opacity = 10, finishOpacity = 80); width: 310px; height: 19px; text-align: right; top: -19px; position: relative; padding: 0px; margin: 0px; border: 0px;">
											<c:forEach items="${favList}" var="article" varStatus="status">
												<a href="javascript:u_u4_icn.changeimg(${status.index})" ; id="u_u4_selectNode${status.index}"
													class="imagechangenews_pnode" target="_self">${status.index+1}</a>
											</c:forEach>
										</div>
									</div>
								</td>
							</tr>
							<div align="center" display="none" style="overflow: hidden; text-overflow: ellipsis; height: 0px; width: 310px;">
								<a target="_blank" class="titlestyle189313" id="u_u4_newstitle"></a>
							</div>
							<div align="left" display="none"
								style="overflow: hidden; text-overflow: ellipsis; height: 0px; width: 310px; padding-left: 2px; padding-right: 2px">
								<a target="_blank" class="summarystyle189313" id="u_u4_newssummary"></a>
							</div>
						</table>
						<SCRIPT language="JavaScript">
							u_u4_init_img();
						</SCRIPT>
					</div>

					<div class="new_list new_list3" style="width: 650px">
						<ul class="dynamic_list fr">
							<c:forEach items="${topList}" var="article">
								<li><a href="index/read.action?id=${article.articleid }" target="_blank"><span>[${article.addtime }]</span><em>${article.title }</em></a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--新闻信息-->
		<div class="vsb-container container clearfix" columns="6" containerid="2">
			<c:forEach items="${frontList}" var="article" varStatus="status">
				<div class="vsb-space informBox informBoxd informBoxc1 fl" columns="2" style="width: 478px">
					<div class="dynamic dynamicb dynamice">
						<h2>${article.bannername }</h2>
						<span><a href="index/article.action?id=${article.bannerid }"><img src="themes/crm_blue1/img/w_more.png"></a></span>
					</div>
					<div class="infor_list infor_lista">
						<ul class="dynamic_list dynamic_listb dynamic_liste fr">
							<c:forEach items="${article.articleList}" var="a">
								<li><a href="index/read.action?id=${a.articleid }" target="_blank"><span>${a.addtime }</span><em>${a.title }</em></a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</c:forEach>

			<!--信箱-->
		</div>
		<!--foot-->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>
