<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div class="footWrap">
	<div class="footDiv_one" style="line-height: 160px;">
		<div class="foot_one">
			<p style="white-space: normal;"></p>
			<p style="text-align: center; white-space: normal;"></p>
			<p style="text-align: center; white-space: normal;">
			</p>
			<p style="text-align: center; white-space: normal;">
				版权所有 &copy;
				<a href="<%=basePath%>admin/index.action" target="_blank"><font color="#FF6600">后台管理员入口</font> </a>
			</p>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		$(".select").each(function() {
			var s = $(this);
			var z = parseInt(s.css("z-index"));
			var dt = $(this).children("dt");
			var dd = $(this).children("dd");
			var _show = function() {
				dd.slideDown(200);
				dt.addClass("cur");
				s.css("z-index", z + 1);
			}; //展开效果
			var _hide = function() {
				dd.slideUp(200);
				dt.removeClass("cur");
				s.css("z-index", z);
			}; //关闭效果
			dt.click(function() {
				dd.is(":hidden") ? _show() : _hide();
			});
			dd.find("a").click(function() {
				dt.html($(this).html());
				_hide();
			}); //选择效果（如需要传值，可自定义参数，在此处返回对应的“value”值 ）
			$("body").click(function(i) {
				!$(i.target).parents(".select").first().is(s) ? _hide() : "";
			});
		})
	});
</script>
<script type="text/javascript">
	$(function() {
		//切换对象为其他，这里为包含图片和标题的层
		$('#change_32 div.changeDiv').soChange({//对象指向层，层内包含图片及标题
			thumbObj : '#change_32 .ul_change_a2 span',
			thumbNowClass : 'on'//自定义导航对象当前class为on
		});
	});
</script>

<script type="text/javascript">
	function setContentTab(name, curr, n) {
		for (i = 1; i <= n; i++) {
			var menu = document.getElementById(name + i);
			var cont = document.getElementById("con_" + name + "_" + i);
			if (menu != null) {
				menu.className = i == curr ? "up" : "";
			}
			if (i == curr) {
				if (cont != null) {
					cont.style.display = "block";
				}
			} else {
				if (cont != null) {
					cont.style.display = "none";
				}
			}
		}
	}
</script>


<script type="text/javascript">
	$(".pic ul li").hover(function() {
		$(this).stop(true).animate({
			width : "824px"
		}, 500).siblings().stop(true).animate({
			width : "50px"
		}, 500);
	});
	function ref() {
		$("p span").css("color", "white");
	}
	setTimeout("ref();", 4000);
</script>


<%
	String message = (String) session.getAttribute("message");
	if (message == null) {
		message = "";
	}
	if (!message.trim().equals("")) {
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("</script>");
	}
	session.removeAttribute("message");
%>