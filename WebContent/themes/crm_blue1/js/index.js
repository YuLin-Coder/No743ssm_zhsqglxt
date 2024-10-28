$(function(){

jQuery(".slideBox1").slide({mainCell:".bd ul",autoPlay:true});

jQuery(".slideBox2").slide({mainCell:".bd ul",autoPlay:true});

jQuery(".slideBox3").slide({mainCell:".bd ul",autoPlay:true});

jQuery(".slideBox4").slide({mainCell:".bd ul",autoPlay:true});

jQuery(".slideBox5").slide({mainCell:".bd ul",autoPlay:true});

jQuery(".slideBox6").slide({mainCell:".bd ul",autoPlay:true});

jQuery(".picFocus").slide({ mainCell:".bd ul",effect:"left",autoPlay:true });

jQuery(".slideBox7").slide({mainCell:".bd ul",autoPlay:true});

jQuery(".slideBox8").slide({mainCell:".bd ul",autoPlay:true});
});
$(document).ready(function(){
	var $tab_li = $('.tab_menu li');
	$tab_li.hover(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
		var index = $tab_li.index(this);
		$('div.tab_box > div').eq(index).show().siblings().hide();
	});	
});

$(document).ready(function(){
	var $tab_li2 = $('.tab1_menu li');
	$tab_li2.hover(function(){
		$(this).addClass('selected1').siblings().removeClass('selected1');
		var index = $tab_li2.index(this);
		$('div.tab1_box > div').eq(index).show().siblings().hide();
	});	
});


