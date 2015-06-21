function setDivHeight(objSet, objTar)
{
	var  _height = $('#' + objTar).height();
	$('#' + objSet).height(_height);
	$('#' + objSet).css({'overflow':'hidden'});
	//alert(_height);
} 

$(window).on("load resize orientationchange",function(){
	setDivHeight('banner','gnb');
});

// Device Check
//@ return String (device name)
function check_device(){
	var mobileKeyWords = new Array('iPhone', 'iPad', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
	var device_name = '';
	for (var word in mobileKeyWords){
		if (navigator.userAgent.match(mobileKeyWords[word]) != null){
			device_name = mobileKeyWords[word];
		break;
		}
	}
return device_name
}

// device check -> Message Print
var device = check_device();
if(device !=''){
	//alert(device);
	// 모바일 페이지 이동 및 레이아웃 변경 작업 실행은 여기서 작성하심 됩니당
	if(device == 'Android'){
		$('#home_bookmark').click(function () {
			$('#android_bookmark').toggle();
		});
	}else{
		$('#home_bookmark').click(function () {
			$('#iphone_bookmark').toggle();
		});
	}
}

// Main Slider
$('.carousel').carousel({
	interval:5000
})

// Reservation
$(window).on("load",function(){
	$('.calendar .complete').append('<div>예약완료</div>');
});

// Tab
$('#course a').click(function (e) {
	e.preventDefault()
	$(this).tab('show')
})
$('#caddy a').click(function (e) {
	e.preventDefault()
	$(this).tab('show')
})
$('#valid a').click(function (e) {
	e.preventDefault()
	$(this).tab('show')
})

// Page Load 
function login(){
	window.location.assign("/html/login.aspx")
}
function res_info(){
	window.location.assign("/html/reservation_info.aspx")
}
function caddy_info(){
	window.location.assign("/html/caddy_info.aspx")
}
function contact_us(){
	window.location.assign("/html/contact_us.aspx")
}
function terms(){
	window.location.assign("/html/terms.aspx")
}
function private(){
	window.location.assign("/html/private.aspx")
}
function res_date(){
	window.location.assign("/html/reservation_date.aspx")
}
function res_course(){
	window.location.assign("/html/reservation_course.aspx")
}
function res_comp(){
	window.location.assign("/html/reservation_comp.aspx")
}
function specify_caddy(){
	window.location.assign("/html/specify_caddy.aspx")
}
function res_valid(){
	window.location.assign("/html/reservation_validation.aspx")
}
function res_valid_detail(){
	window.location.assign("/html/reservation_validation_detail.aspx")
}
function mod_course(){
	window.location.assign("/html/modify_course.aspx")
}
function mod_commision(){
	window.location.assign("/html/modify_commission.aspx")
}
function mod_caddy(){
	window.location.assign("/html/modify_caddy.aspx")
}
function mod_comp(){
	window.location.assign("/html/modify_comp.aspx")
}

// top
var cur_path = window.location.pathname;
//alert(cur_path);
if (cur_path == '/') {
	$('#gotop').addClass('display_hide');
}else{
	$('#bookmark').addClass('display_hide');
}

// Page Title
$(window).on("load",function(){
	switch(cur_path) {
		case('/html/login.aspx') : 
			$('#ptitle').append('로그인');
		break;
		case('/html/reservation_info.aspx') :
			$('#ptitle').append('예약안내');
		break;
		case('/html/caddy_info.aspx') :
			$('#ptitle').append('전문캐디 안내');
		break;
		case('/html/contact_us.aspx') :
			$('#ptitle').append('오시는 길');
		break;
		case('/html/terms.aspx') :
			$('#ptitle').append('이용약관');
		break;
		case('/html/private.aspx') :
			$('#ptitle').append('개인정보취급방침');
		break;
		case('/html/reservation_date.aspx') : 
			$('#ptitle').append('예약하기');
			$('#step1').css('background-position-y','100%');
		break;
		case('/html/reservation_course.aspx') :
			$('#ptitle').append('예약하기');
			$('#step2').css('background-position-y','100%');
		break;
		case('/html/reservation_comp.aspx') :
			$('#ptitle').append('예약하기');
			$('#step3').css('background-position-y','100%');
		break;
		case('/html/specify_caddy.aspx') :
			$('#ptitle').append('전문캐디 지정/지명');
		break;
		case('/html/reservation_validation.aspx') :
			$('#ptitle').append('예약확인/취소');
		break;
		case('/html/reservation_validation_detail.aspx') :
			$('#ptitle').append('예약확인/취소');
		break;
		case('/html/modify_course.aspx') :
			$('#ptitle').append('코스/시간 변경');
		break;
		case('/html/modify_comp.aspx') :
			$('#ptitle').append('예약하기');
		break;
		case('/html/modify_caddy.aspx') :
			$('#ptitle').append('전문캐디 변경');
		break;
		case('/html/modify_commission.aspx') :
			$('#ptitle').append('예약위임 변경');
		break;
	}
});

// bootstrap select
$('.selectpicker').selectpicker();

// modal windows
$('#commission_cancel').modal(options);
$('#reservation_cancel').modal(options);
$('#wait_cancel').modal(options);