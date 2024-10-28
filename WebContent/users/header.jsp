<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link href='themes/crm_blue1/css/style.css' rel='stylesheet' type='text/css'>
<link href='themes/crm_blue1/css/publice.css' rel='stylesheet' type='text/css'>
<script type='text/javascript' src='themes/crm_blue1/js/jquery.min.js'></script>
<script type='text/javascript' src='themes/crm_blue1/js/superslide.js'></script>
<script type='text/javascript' src='themes/crm_blue1/js/index.js'></script>
<script type='text/javascript' src='themes/crm_blue1/js/jquery.soChange.js'></script>
<script type='text/javascript'>
	$(function() {
		$('.mainmenu dl').hide();
		$('li.mainmenu').hover(function() {
			$(this).find('dl').stop(true, true);
			$(this).find('dl').slideDown();
		}, function() {
			$(this).find('dl').stop(true, true);
			$(this).find('dl').slideUp();
		});
	})
</script>

<!--top s-->
<div class='topWrap clearfix'>
	<div class='topDiv'>
		<!-- 网站logo图片地址请在本组件'内容配置-网站logo'处填写 -->
		<div class='logo'>
			<a href='index/index.action'><img src='themes/crm_blue1/images/logo.png' style='margin-left: -10px;'></a>
		</div>
	</div>
</div>
<!--nav-->
<div class='navWrap  clearfix'>
	<div class='nav'>
		<ul>
			<li><a class='link' href='index/index.action'>首页</a></li>
			<c:forEach items='${bannerList}' var='banner'>
				<li class='mainmenu'><a class='link' href='index/article.action?id=${banner.bannerid}'>${banner.bannername }</a></li>
			</c:forEach>
			<li><a class='link' href='index/servs.action'>家政服务</a></li>
			<li><a class='link' href='index/bbs.action'>留言交流</a></li>
			<c:if test='${sessionScope.userid != null }'>
				<li class='mainmenu'><a class='link' href='javascript:;'>用户菜单</a>
					<dl>
						<dd>
							<a href='index/prePwd.action' title='修改密码'>修改密码</a>
						</dd>
						<dd>
							<a href='index/userinfo.action' title='个人信息'>个人信息</a>
						</dd>
						<dd>
							<a href='index/preComplains.action' title='意见反馈'>意见反馈</a>
						</dd>
						<dd>
							<a href='index/myComplains.action' title='我的意见反馈'>我的意见反馈</a>
						</dd>
						<dd>
							<a href='index/preBroken.action' title='报损报修'>报损报修</a>
						</dd>
						<dd>
							<a href='index/myBroken.action' title='我的报损报修'>我的报损报修</a>
						</dd>
						<dd>
							<a href='index/myHouse.action' title='我的房产'>我的房产</a>
						</dd>
						<dd>
							<a href='index/myOrders.action' title='我的服务预约'>我的服务预约</a>
						</dd>
						<dd>
							<a href='index/myMoney.action' title='我的账单'>我的账单</a>
						</dd>
						<dd>
							<a href='index/myPay.action' title='我的缴费记录'>我的缴费记录</a>
						</dd>
						
					</dl></li>
				<li class='mainmenu'><a class='link' href='index/exit.action'>退出登录</a></li>
			</c:if>
			<c:if test='${sessionScope.userid == null }'>
				<li class='mainmenu'><a class='link' href='index/preReg.action'>用户注册</a></li>
				<li class='mainmenu'><a class='link' href='index/preLogin.action'>用户登录</a></li>
			</c:if>
		</ul>
	</div>
</div>
<script type='text/javascript'>
	$('.mainmenu dl').hide();
</script>



