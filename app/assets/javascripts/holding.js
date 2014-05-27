// JavaScript Document

$(document).ready(function() {
	
 //LOGO HIGHLIGHT 
	$('#logo_frame').mouseenter(function() {
		 $("#logo_frame").css("background-color","#95a5a6");
	});
	
	
	$('#logo_frame').mouseleave(function() {
		 $("#logo_frame").css("background-color","#fff");
		 
	});
	
	$('#name').mouseenter(function() { 
		 $("#logo_frame").css("background-color","#95a5a6");
	});
	
	
	$('#name').mouseleave(function() {
		 $("#logo_frame").css("background-color","#fff");
	});	
	

	
	
	
	
//MANTRA HIGHLIGHT

	$('.menu2').mouseenter(function() {
		 $(".menu2").css("background-color","#95a5a6");
	});
	
	
	$('.menu2').mouseleave(function() {
		 $(".menu2").css("background-color","#fff");
	});

	
});
