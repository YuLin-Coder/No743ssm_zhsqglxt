$(function() {

$("#ordercode").blur(
		function() {
			$("#ordercode_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#ordercode").after("<span id='ordercode_msg' style='color: red'>预约单号不能为空</span>");
			}
	});

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>业主用户不能为空</span>");
			}
	});

$("#houseid").blur(
		function() {
			$("#houseid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#houseid").after("<span id='houseid_msg' style='color: red'>房产不能为空</span>");
			}
	});

$("#servsid").blur(
		function() {
			$("#servsid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#servsid").after("<span id='servsid_msg' style='color: red'>服务不能为空</span>");
			}
	});

$("#orderdate").blur(
		function() {
			$("#orderdate_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#orderdate").after("<span id='orderdate_msg' style='color: red'>服务日期不能为空</span>");
			}
	});

$("#memo").blur(
		function() {
			$("#memo_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
			}
	});







$('#sub').click(function(){
var ordercode = $("#ordercode").val();
var usersid = $("#usersid").val();
var houseid = $("#houseid").val();
var servsid = $("#servsid").val();
var orderdate = $("#orderdate").val();
var memo = $("#memo").val();
$("#ordercode_msg").empty();
$("#usersid_msg").empty();
$("#houseid_msg").empty();
$("#servsid_msg").empty();
$("#orderdate_msg").empty();
$("#memo_msg").empty();
if (ordercode == "" || ordercode == null) {
	$("#ordercode").after("<span id='ordercode_msg' style='color: red'>预约单号不能为空</span>");
	return false;
}
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>业主用户不能为空</span>");
	return false;
}
if (houseid == "" || houseid == null) {
	$("#houseid").after("<span id='houseid_msg' style='color: red'>房产不能为空</span>");
	return false;
}
if (servsid == "" || servsid == null) {
	$("#servsid").after("<span id='servsid_msg' style='color: red'>服务不能为空</span>");
	return false;
}
if (orderdate == "" || orderdate == null) {
	$("#orderdate").after("<span id='orderdate_msg' style='color: red'>服务日期不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#ordercode_msg").empty();
$("#usersid_msg").empty();
$("#houseid_msg").empty();
$("#servsid_msg").empty();
$("#orderdate_msg").empty();
$("#memo_msg").empty();
});

});
