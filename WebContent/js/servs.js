$(function() {

$("#servsname").blur(
		function() {
			$("#servsname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#servsname").after("<span id='servsname_msg' style='color: red'>服务名称不能为空</span>");
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

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>服务介绍不能为空</span>");
			}
	});







$('#sub').click(function(){
var servsname = $("#servsname").val();
var money = $("#money").val();
var contents = $("#contents").val();
$("#servsname_msg").empty();
$("#money_msg").empty();
$("#contents_msg").empty();
if (servsname == "" || servsname == null) {
	$("#servsname").after("<span id='servsname_msg' style='color: red'>服务名称不能为空</span>");
	return false;
}
if (money == "" || money == null) {
	$("#money").after("<span id='money_msg' style='color: red'>收费金额不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>服务介绍不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#servsname_msg").empty();
$("#money_msg").empty();
$("#contents_msg").empty();
});

});
