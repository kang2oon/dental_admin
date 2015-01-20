<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
	<title>Dental Admin</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/fontawesome.min.css">
	<link rel="stylesheet" href="css/ionicons.min.css">
	<link rel="stylesheet" href="css/datepicker.css">
	<link rel="stylesheet" href="daumeditor/css/editor.css" type="text/css" charset="utf-8"/>
	<link rel="stylesheet" href="css/dropzone.css">
	<link rel="stylesheet" href="css/fullcalendar.min.css">
	<link rel="stylesheet" href="css/fullcalendar.print.css" media='print'>
	<link rel="stylesheet" href="css/dental_admin.css">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="/js/html5shiv.js"></script>
		<script src="/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<header class="header">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 col-sm-3 col-xs-12">
					<h1><img src="images/logo_header.png" alt="한국치과" /></h1>
					<div class="toggle_menu" style="width:50px;">
						<a href="#menu-toggle" id="menu-toggle"><i class="ion-navicon-round"></i></a>
					</div>
				</div>
				<div class="col-md-10 col-sm-9 col-xs-12 prealtive">
					<ol class="breadcrumb">
						<li><i class="ion-home"></i></li>
						<li id="breadcrumb_parent">회원관리</li>
						<li id="breadcrumb" class="active">회원목록</li>
					</ol>
					<div class="pabsolute login_user">
						<strong>관리자</strong>님 반갑습니다.&nbsp;&nbsp;&nbsp;<button class="btn btn-success btn-xs">홈페이지</button> <button class="btn btn-primary btn-xs">로그아웃</button>
					</div>
				</div>
			</div>
		</div>
	</nav>
</header>

<div id="wrapper" class="toggled">
	<!-- Sidebar -->
	<div id="sidebar-wrapper">
		<h2>관리자 메뉴</h2>
		<div class="panel-group" id="side_menu">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#side_menu" href="javascript:void(0);">
						<a href="index.aspx"><i class="ion-stats-bars"></i> Dashboard</a>
						</a>
					</h4>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading active">
					<h4 class="panel-title">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#side_menu" href="#sm1">
						<i class="ion-person-stalker"></i> 회원관리
						</a>
					</h4>
				</div>
				<div id="sm1" class="panel-collapse in" style="height: auto;">
					<div class="panel-body">
						<ul>
							<li><a href="member_list.aspx">회원목록</a></li>
							<li><a href="member_register.aspx">회원등록</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#side_menu" href="javascript:void(0);">
						<a href="reservation_list.aspx"><i class="ion-calendar"></i> 예약현황</a>
						</a>
					</h4>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#side_menu" href="#sm3">
						<i class="ion-heart"></i> 진료관리
						</a>
					</h4>
				</div>
				<div id="sm3" class="panel-collapse" style="height: 0;">
					<div class="panel-body">
						<ul>
							<li><a href="health_care_list.aspx">진료목록</a></li>
							<li><a href="health_care_register.aspx">진료등록</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#side_menu" href="javascript:void(0);">
						<a href="cashier_manager.aspx"><i class="ion-cash"></i> 출납관리</a>
						</a>
					</h4>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#side_menu" href="#sm5">
						<i class="ion-ios-flask"></i> 병원정보관리
						</a>
					</h4>
				</div>
				<div id="sm5" class="panel-collapse" style="height: 0;">
					<div class="panel-body">
						<ul>
							<li><a href="hospital_info.aspx">병원정보</a></li>
							<li><a href="hospital_news.aspx">병원소식</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#side_menu" href="#sm6">
						<i class="ion-iphone"></i> 앱콘텐츠관리
						</a>
					</h4>
				</div>
				<div id="sm6" class="panel-collapse" style="height: 0;">
					<div class="panel-body">
						<ul>
							<li><a href="app_implant.aspx">임플란트</a></li>
							<li><a href="app_orthodontic.aspx">치아교정</a></li>
							<li><a href="app_children.aspx">소아치료</a></li>
							<li><a href="app_normal.aspx">일반검진</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>