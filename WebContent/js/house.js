$(function() {

$("#houseno").blur(
		function() {
			$("#houseno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#houseno").after("<span id='houseno_msg' style='color: red'>房产号不能为空</span>");
			}
	});

$("#address").blur(
		function() {
			$("#address_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#address").after("<span id='address_msg' style='color: red'>地址描述不能为空</span>");
			}
	});

$("#mianji").blur(
		function() {
			$("#mianji_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#mianji").after("<span id='mianji_msg' style='color: red'>面积不能为空</span>");
			}
	});

$("#chaoxiang").blur(
		function() {
			$("#chaoxiang_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#chaoxiang").after("<span id='chaoxiang_msg' style='color: red'>朝向不能为空</span>");
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
var houseno = $("#houseno").val();
var address = $("#address").val();
var mianji = $("#mianji").val();
var chaoxiang = $("#chaoxiang").val();
var memo = $("#memo").val();
$("#houseno_msg").empty();
$("#address_msg").empty();
$("#mianji_msg").empty();
$("#chaoxiang_msg").empty();
$("#memo_msg").empty();
if (houseno == "" || houseno == null) {
	$("#houseno").after("<span id='houseno_msg' style='color: red'>房产号不能为空</span>");
	return false;
}
if (address == "" || address == null) {
	$("#address").after("<span id='address_msg' style='color: red'>地址描述不能为空</span>");
	return false;
}
if (mianji == "" || mianji == null) {
	$("#mianji").after("<span id='mianji_msg' style='color: red'>面积不能为空</span>");
	return false;
}
if (chaoxiang == "" || chaoxiang == null) {
	$("#chaoxiang").after("<span id='chaoxiang_msg' style='color: red'>朝向不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#houseno_msg").empty();
$("#address_msg").empty();
$("#mianji_msg").empty();
$("#chaoxiang_msg").empty();
$("#memo_msg").empty();
});

});
