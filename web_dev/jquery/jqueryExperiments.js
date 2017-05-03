$(document).ready(function(){
	$('h2').click(function(){
		$(this).hide(5000);
	});

	$('#paragraph').mouseenter(function(){
		$(this).css("background", "pink");
	});

	$('#paragraph').mouseleave(function(){
		$(this).css("background", "tan");
	});	

	$('.class').click(function(){
		$(this).animate({
			fontSize: '240px'
		});
	});
});