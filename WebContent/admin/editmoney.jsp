<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" href="asset/page/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="asset/page/css/bootstrap-fileupload.min.css" type="text/css" />
<script type="text/javascript" src="asset/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/money.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>

	<div class="mainwrapper">
		<div class="maincontent">
			<div class="maincontentinner">
				<div class="widget" style="width: 90%; margin: 0 auto;">
					<h4 class="widgettitle">编辑物业收费</h4>
					<div class="widgetcontent nopadding">
						<form class="stdform stdform2" method="post" action="money/updateMoney.action" name="myform" method="post">

							<p>
								<label>收费单号</label><span class="field"><input type="text" name="mno" class="input-xxlarge"
									style="width: 430px;" id="mno" value="${money.mno}" readonly="readonly" /></span>
							</p>
							<p>
								<label>房产</label><span class="field"><select name="houseid" class="input-xxlarge" style="width: 430px;"
									id="houseid"><c:forEach items="${houseList}" var="house">
											<option value="${house.houseid}" ${house.houseid == money.houseid?"selected":"" }>${house.houseno }</option>
										</c:forEach></select></span>
							</p>
							<p>
								<label>收费项目</label><span class="field"><select name="programsid" class="input-xxlarge"
									style="width: 430px;" id="programsid"><c:forEach items="${programsList}" var="programs">
											<option value="${programs.programsid}" ${programs.programsid == money.programsid?"selected":"" }>${programs.programsname }</option>
										</c:forEach></select></span>
							</p>
							<p>
								<label>收费金额</label><span class="field"><input type="text" name="money" class="input-xxlarge"
									style="width: 430px;" id="money" value="${money.money}" /></span>
							</p>
							<p>
								<label>备注</label><span class="field"><input type="text" name="memo" class="input-xxlarge"
									style="width: 430px;" id="memo" value="${money.memo}" /></span>
							</p>

							<p class="stdformbutton" align="center">
								<input type="hidden" name="moneyid" id="moneyid" value="${money.moneyid}" /><input type="hidden" name="usersid"
									id="usersid" value="${money.usersid}" /> <input type="hidden" name="addtime" id="addtime"
									value="${money.addtime}" /> <input type="hidden" name="status" id="status" value="${money.status}" />

								<button class="btn btn-primary" type="submit" id="sub">确认保存</button>
								<button type="reset" class="btn">重新输入</button>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


