$(function() {

$("#programsname").blur(
		function() {
			$("#programsname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#programsname").after("<span id='programsname_msg' style='color: red'>项目名称不能为空</span>");
			}
	});







$('#sub').click(function(){
var programsname = $("#programsname").val();
$("#programsname_msg").empty();
if (programsname == "" || programsname == null) {
	$("#programsname").after("<span id='programsname_msg' style='color: red'>项目名称不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#programsname_msg").empty();
});

});
