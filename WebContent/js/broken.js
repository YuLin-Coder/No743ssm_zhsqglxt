$(function() {

$("#bno").blur(
		function() {
			$("#bno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#bno").after("<span id='bno_msg' style='color: red'>报损单号不能为空</span>");
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

$("#reason").blur(
		function() {
			$("#reason_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#reason").after("<span id='reason_msg' style='color: red'>报损原因不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>损失描述不能为空</span>");
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
var bno = $("#bno").val();
var usersid = $("#usersid").val();
var reason = $("#reason").val();
var contents = $("#contents").val();
var memo = $("#memo").val();
$("#bno_msg").empty();
$("#usersid_msg").empty();
$("#reason_msg").empty();
$("#contents_msg").empty();
$("#memo_msg").empty();
if (bno == "" || bno == null) {
	$("#bno").after("<span id='bno_msg' style='color: red'>报损单号不能为空</span>");
	return false;
}
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>业主用户不能为空</span>");
	return false;
}
if (reason == "" || reason == null) {
	$("#reason").after("<span id='reason_msg' style='color: red'>报损原因不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>损失描述不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#bno_msg").empty();
$("#usersid_msg").empty();
$("#reason_msg").empty();
$("#contents_msg").empty();
$("#memo_msg").empty();
});

});
