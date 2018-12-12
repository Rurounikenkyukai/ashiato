$(function(){
 
	var nav = $(".sidemenu");
	
	var navTop = nav.offset().top;
	
	$(window).scroll(function () {
		var winTop = $(this).scrollTop();
		nav.stop(); 
		if (winTop >= navTop) {
			nav.addClass('fixed');
			nav.animate({top: winTop + "px"}, "slow");
			
		} else if (winTop <= navTop) {
			nav.removeClass('fixed');
		}
	});
});