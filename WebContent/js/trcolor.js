
$(function(){
	$("#trcolor").find("tr:even").css("background-color","#DDD");
	$("#trcolor").find("tr:odd").css("background-color","#CCC");
	$("#trcolor").find("tr").hover(function(){
		$(this).css("background-color","gray");
	},function(){
		$("#trcolor").find("tr:even").css("background-color","#DDD");
	    $("#trcolor").find("tr:odd").css("background-color","#CCC");
	});	
});
