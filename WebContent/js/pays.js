$(function() {

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>业主用户不能为空</span>");
			}
	});

$("#moneyid").blur(
		function() {
			$("#moneyid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#moneyid").after("<span id='moneyid_msg' style='color: red'>缴费单不能为空</span>");
			}
	});

$("#money").blur(
		function() {
			$("#money_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#money").after("<span id='money_msg' style='color: red'>金额不能为空</span>");
			}
	});







$('#sub').click(function(){
var usersid = $("#usersid").val();
var moneyid = $("#moneyid").val();
var money = $("#money").val();
$("#usersid_msg").empty();
$("#moneyid_msg").empty();
$("#money_msg").empty();
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>业主用户不能为空</span>");
	return false;
}
if (moneyid == "" || moneyid == null) {
	$("#moneyid").after("<span id='moneyid_msg' style='color: red'>缴费单不能为空</span>");
	return false;
}
if (money == "" || money == null) {
	$("#money").after("<span id='money_msg' style='color: red'>金额不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#usersid_msg").empty();
$("#moneyid_msg").empty();
$("#money_msg").empty();
});

});
