// Menu
function menu_toggle(){
	var menu = $('.menu');
	var hc = $('.menu-area');
	if(menu.hasClass('menu-open')) {
		menu.removeClass('menu-open');
		hc.removeClass('menu-on');
	} else {
		menu.addClass('menu-open');
		hc.addClass('menu-on');
	}
}
$('.main-lome .menu .menu-trigger').click(function(){
	menu_toggle();
});
$('.sub2').click(function(){
	if($(this).hasClass('on')){
		$(this).removeClass('on');
		$(this).next('.menu-dp2').slideUp();
	}else{
		$(this).addClass('on');
		$(this).next('.menu-dp2').slideDown();
	}
	
})

// Main Slider
$('.carousel').carousel({
	interval:5000
})

// bootstrap select
$('.selectpicker').selectpicker();