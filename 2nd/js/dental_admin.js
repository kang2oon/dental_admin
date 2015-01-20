$(function(){
	// Mobile Sidebar
	var win_width = $(window).width();
	if(win_width < 768){
		$("#wrapper").removeClass("toggled");
	}
	// Sidebar Toggle
	$("#menu-toggle").click(function(e) {
		e.preventDefault();
		$("#wrapper").toggleClass("toggled");
	});
	// Sidebar Menu Active
	$(".panel-heading a").each(function(){
		$(this).click(function(){
			$(".panel-heading").removeClass('active');
			$(".panel-collapse").removeClass('in');
			$(".panel-collapse").addClass('collapse');
			$(this).parent().parent().addClass('active');
		});
	});
	// Menu Active Fixed
	function fixed_menu(){
		$('#side_menu .panel-body a').each(function() {
			var dir_path = window.location.href;
			var href_array = dir_path.split('/');
			var last_segment = href_array.pop();
			var href = $(this).attr('href');
			var breadcrumb = $(this).text();
			if (href == last_segment) {
				$(this).parent().addClass('on');
				$('.panel-collapse').removeClass('in').css('height','0');
				$(".panel-heading").removeClass('active');
				$(this).parent().parent().parent().parent().addClass('collapse').addClass('in').css('height','auto');
				$(this).parent().parent().parent().parent().parent().find('.panel-heading').addClass('active');
				
				var breadcrumb_parent = $(this).parent().parent().parent().parent().parent().find('.panel-heading h4 a').text();
				$('#breadcrumb_parent').html(breadcrumb_parent);
				$('#breadcrumb').html(breadcrumb);
			}
		});
		$('#side_menu .panel-title a').each(function() {
			var dir_path = window.location.href;
			var href_array = dir_path.split('/');
			var last_segment = href_array.pop();
			var href = $(this).attr('href');
			var breadcrumb = $(this).text();
			if (href == last_segment) {
				$(".panel-heading").removeClass('active');
				$('.panel-collapse').removeClass('in').css('height','0');
				$(this).parent().parent().addClass('active');
				
				$('#breadcrumb_parent').hide();
				$('#breadcrumb').html(breadcrumb);
			}
		});
	}
	fixed_menu();
	// Department Tooltip
	$('.department').tooltip({
		placement: 'auto left',
		trigger: 'click hover focus'
	});
	// Data Picker 하위 Browser 호환성
	Modernizr.load({
		test: Modernizr.inputtypes.date,
		nope: "/js/datepicker.js",
		callback: function() {
			$("input[type=date]").datepicker();
		}
	});
	// Placeholder 하위 Browser 호환성
	Modernizr.load({
		test: Modernizr.input.placeholder,
		nope: "/js/placeholder.js"
	});
	// Check if the browser supports the date input type
    if (!Modernizr.inputtypes.date){
        // Add the jQuery UI DatePicker to all
        // input tags that have their type attributes
        // set to 'date'
        $('input[type=date]').datepicker({
            // specify the same format as the spec
            dateFormat: 'yy-mm-dd'
        });
    }
});

$('#cashier a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
});

$('#add_income').click(function(){
	var t1 = "<tr><td>1</td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td><td><input type='text'/></td></tr>";
	$('#income table tbody').append(t1);
});

$('#add_outgoing').click(function(){
	var t1 = "<tr><td>1</td><td><label><input type='radio' name='account' />주요</label> <label><input type='radio' name='account' />기타</label> <select><option>복리후생비</option></select></td><td><input type='text' /></td><td><input type='text' /></td><td><input type='text' /></td><td><input type='text' /></td><td><input type='text' /></td><td><input type='text' style='width:300px;'/></td></tr>"; 
	$('#outgoings table tbody').append(t1);
});

// Calendar
$(document).ready(function() {
	$('#calendar').fullCalendar({
		lang: 'ko',
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		defaultDate: '2015-01-20',
		selectable: true,
		selectHelper: true,
		select: function(start, end) {
			var title = prompt('간편예약:');
			var eventData;
			if (title) {
				eventData = {
					title: title,
					start: start,
					end: end
				};
				$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
			}
			$('#calendar').fullCalendar('unselect');
		},
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: [
			{
				title: 'All Day Event',
				start: '2015-01-01'
			},
			{
				title: 'Long Event',
				start: '2015-01-07',
				end: '2015-01-10'
			},
			{
				id: 999,
				title: 'Repeating Event',
				start: '2015-01-09T16:00:00'
			},
			{
				id: 999,
				title: 'Repeating Event',
				start: '2015-01-16T16:00:00'
			},
			{
				title: 'Conference',
				start: '2015-01-11',
				end: '2015-01-13'
			},
			{
				title: 'Meeting',
				start: '2015-01-12T10:30:00',
				end: '2015-01-12T12:30:00'
			},
			{
				title: 'Lunch',
				start: '2015-01-12T12:00:00'
			},
			{
				title: 'Meeting',
				start: '2015-01-12T14:30:00'
			},
			{
				title: 'Happy Hour',
				start: '2015-01-12T17:30:00'
			},
			{
				title: 'Dinner',
				start: '2015-01-12T20:00:00'
			},
			{
				title: 'Birthday Party',
				start: '2015-01-13T07:00:00'
			}
		]
	});
});

function openDaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			// 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
			document.getElementById('post1').value = data.postcode1;
			document.getElementById('post2').value = data.postcode2;
			document.getElementById('addr').value = data.address;

			//전체 주소에서 연결 번지 및 ()로 묶여 있는 부가정보를 제거하고자 할 경우,
			//아래와 같은 정규식을 사용해도 된다. 정규식은 개발자의 목적에 맞게 수정해서 사용 가능하다.
			//var addr = data.address.replace(/(\s|^)\(.+\)$|\S+~\S+/g, '');
			//document.getElementById('addr').value = addr;

			document.getElementById('addr2').focus();
		}
	}).open();
}

//DaumEditor
var config = {
    txHost: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
    txPath: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
    txService: 'sample', /* 수정필요없음. */
    txProject: 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
    initializedId: "", /* 대부분의 경우에 빈문자열 */
    wrapper: "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
    form: 'tx_editor_form' + "", /* 등록하기 위한 Form 이름 */
    txIconPath: "images/icon/editor/", /*에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
    txDecoPath: "images/deco/contents/", /*본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
    canvas: {
        styles: {
            color: "#123456", /* 기본 글자색 */
            fontFamily: "굴림", /* 기본 글자체 */
            fontSize: "10pt", /* 기본 글자크기 */
            backgroundColor: "#fff", /*기본 배경색 */
            lineHeight: "1.5", /*기본 줄간격 */
            padding: "8px" /* 위지윅 영역의 여백 */
        },
        showGuideArea: false
    },
    events: {
        preventUnload: false
    },
    sidebar: {
        attachbox: {
            show: true
        }
    },
    size: {
        contentWidth: 700 /* 지정된 본문영역의 넓이가 있을 경우에 설정 */
    }
};

EditorJSLoader.ready(function(Editor) {
    var editor = new Editor(config);
});

Editor.getContent();

Editor.modify({
    "attachments": function() { /* 저장된 첨부가 있을 경우 배열로 넘김, 위의 부분을 수정하고 아래 부분은 수정없이 사용 */
        var allattachments = [];
        for (var i in attachments) {
            allattachments = allattachments.concat(attachments[i]);
        }
        return allattachments;
    }(),
    "content": document.getElementById("sample_contents_source") /* 내용 문자열, 주어진 필드(textarea) 엘리먼트 */
});
