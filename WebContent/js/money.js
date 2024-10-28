$(function() {

$("#mno").blur(
		function() {
			$("#mno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#mno").after("<span id='mno_msg' style='color: red'>收费单号不能为空</span>");
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

$("#programsid").blur(
		function() {
			$("#programsid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#programsid").after("<span id='programsid_msg' style='color: red'>收费项目不能为空</span>");
			}
	});

$("#money").blur(
		function() {
			$("#money_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#money").after("<span id='money_msg' style='color: red'>收费金额不能为空</span>");
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
var mno = $("#mno").val();
var houseid = $("#houseid").val();
var programsid = $("#programsid").val();
var money = $("#money").val();
var memo = $("#memo").val();
$("#mno_msg").empty();
$("#houseid_msg").empty();
$("#programsid_msg").empty();
$("#money_msg").empty();
$("#memo_msg").empty();
if (mno == "" || mno == null) {
	$("#mno").after("<span id='mno_msg' style='color: red'>收费单号不能为空</span>");
	return false;
}
if (houseid == "" || houseid == null) {
	$("#houseid").after("<span id='houseid_msg' style='color: red'>房产不能为空</span>");
	return false;
}
if (programsid == "" || programsid == null) {
	$("#programsid").after("<span id='programsid_msg' style='color: red'>收费项目不能为空</span>");
	return false;
}
if (money == "" || money == null) {
	$("#money").after("<span id='money_msg' style='color: red'>收费金额不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#mno_msg").empty();
$("#houseid_msg").empty();
$("#programsid_msg").empty();
$("#money_msg").empty();
$("#memo_msg").empty();
});

});
