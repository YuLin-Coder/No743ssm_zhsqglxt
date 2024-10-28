<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<div class="main-sidebar">
	<div class="sidebar">
		<ul class="sidebar-menu" id="sidebar-menu">
			<!--<li class="header">导航菜单</li>-->

			<li class="treeview active"><a href="javascript:;"><i class="fa fa-desktop"></i><span>管理员信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="admin/createAdmin.action"><i class="fa fa-sitemap"></i>新增管理员信息</a></li>
					<li><a class="menuItem" href="admin/getAllAdmin.action"><i class="fa fa-sitemap"></i>管理员信息列表</a></li>
					<li><a class="menuItem" href="admin/queryAdminByCond.action"><i class="fa fa-sitemap"></i>查询管理员</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>业主用户信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="users/getAllUsers.action"><i class="fa fa-sitemap"></i>业主用户信息列表</a></li>
					<li><a class="menuItem" href="users/queryUsersByCond.action"><i class="fa fa-sitemap"></i>查询业主用户</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>房产信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="house/createHouse.action"><i class="fa fa-sitemap"></i>新增房产信息</a></li>
					<li><a class="menuItem" href="house/getAllHouse.action"><i class="fa fa-sitemap"></i>房产信息列表</a></li>
					<li><a class="menuItem" href="house/queryHouseByCond.action"><i class="fa fa-sitemap"></i>查询房产</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>网站栏目信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="banner/createBanner.action"><i class="fa fa-sitemap"></i>新增网站栏目信息</a></li>
					<li><a class="menuItem" href="banner/getAllBanner.action"><i class="fa fa-sitemap"></i>网站栏目信息列表</a></li>
					<li><a class="menuItem" href="banner/queryBannerByCond.action"><i class="fa fa-sitemap"></i>查询网站栏目</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>网站内容信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="article/createArticle.action"><i class="fa fa-sitemap"></i>新增网站内容信息</a></li>
					<li><a class="menuItem" href="article/getAllArticle.action"><i class="fa fa-sitemap"></i>网站内容信息列表</a></li>
					<li><a class="menuItem" href="article/queryArticleByCond.action"><i class="fa fa-sitemap"></i>查询网站内容</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>收费项目信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="programs/createPrograms.action"><i class="fa fa-sitemap"></i>新增收费项目信息</a></li>
					<li><a class="menuItem" href="programs/getAllPrograms.action"><i class="fa fa-sitemap"></i>收费项目信息列表</a></li>
					<li><a class="menuItem" href="programs/queryProgramsByCond.action"><i class="fa fa-sitemap"></i>查询收费项目</a></li>
				</ul></li>



			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>物业收费信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="money/createMoney.action"><i class="fa fa-sitemap"></i>新增物业收费信息</a></li>
					<li><a class="menuItem" href="money/getAllMoney.action"><i class="fa fa-sitemap"></i>物业收费信息列表</a></li>
					<li><a class="menuItem" href="money/queryMoneyByCond.action"><i class="fa fa-sitemap"></i>查询物业收费</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>缴费记录信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="pays/getAllPays.action"><i class="fa fa-sitemap"></i>缴费记录信息列表</a></li>
					<li><a class="menuItem" href="pays/queryPaysByCond.action"><i class="fa fa-sitemap"></i>查询缴费记录</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>物业服务信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="servs/createServs.action"><i class="fa fa-sitemap"></i>新增物业服务信息</a></li>
					<li><a class="menuItem" href="servs/getAllServs.action"><i class="fa fa-sitemap"></i>物业服务信息列表</a></li>
					<li><a class="menuItem" href="servs/queryServsByCond.action"><i class="fa fa-sitemap"></i>查询物业服务</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>服务预约信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="orders/getAllOrders.action"><i class="fa fa-sitemap"></i>服务预约信息列表</a></li>
					<li><a class="menuItem" href="orders/queryOrdersByCond.action"><i class="fa fa-sitemap"></i>查询服务预约</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>报损报修信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="broken/getAllBroken.action"><i class="fa fa-sitemap"></i>报损报修信息列表</a></li>
					<li><a class="menuItem" href="broken/queryBrokenByCond.action"><i class="fa fa-sitemap"></i>查询报损报修</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>意见反馈信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="complains/getAllComplains.action"><i class="fa fa-sitemap"></i>意见反馈信息列表</a></li>
					<li><a class="menuItem" href="complains/queryComplainsByCond.action"><i class="fa fa-sitemap"></i>查询意见反馈</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>留言交流信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="bbs/getAllBbs.action"><i class="fa fa-sitemap"></i>留言交流信息列表</a></li>
					<li><a class="menuItem" href="bbs/queryBbsByCond.action"><i class="fa fa-sitemap"></i>查询留言交流</a></li>
				</ul></li>

			<li class="treeview"><a href="javascript:;"><i class="fa fa-desktop"></i><span>留言回复信息</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li><a class="menuItem" href="rebbs/getAllRebbs.action"><i class="fa fa-sitemap"></i>留言回复信息列表</a></li>
					<li><a class="menuItem" href="rebbs/queryRebbsByCond.action"><i class="fa fa-sitemap"></i>查询留言回复</a></li>
				</ul></li>


		</ul>
	</div>
</div>
