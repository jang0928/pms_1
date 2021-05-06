<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>       
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.bundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.css"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.css"></script>
<script src="https://unpkg.com/feather-icons"></script>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/bootstrap.min.css">
    <!-- font awesome CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/owl.carousel.css">
    <link rel="stylesheet" href="${path}/a00_com/gant/css/owl.theme.css">
    <link rel="stylesheet" href="${path}/a00_com/gant/css/owl.transitions.css">
    <!-- meanmenu CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/meanmenu/meanmenu.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/normalize.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- Notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/notika-custom-icon.css">
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/wave/waves.min.css">
    <link rel="stylesheet" href="${path}/a00_com/gant/css/wave/button.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/main.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/vendor/modernizr-2.8.3.min.js"></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<style type="text/css">

body{
	font-family: 'Nanum Gothic Coding', monospace;
}

#menu{
	width: 100%;
}


.feather{
	color:#666666;
}

.name{
	color:#ffffff;
	text-align:right;
	font-size:12px;
	margin-top : 7px;
}

.title{
	margin-bottom : 15px;
}

.total{
	margin-top : 20px;
}
</style>
<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){
      
   });
</script>
</head>
<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Start Header Top Area -->
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="logo-area">
                        <a href="dashboard.jsp"><img src="${path}/a00_com/gant/img/logo/SSIT.png" style='width:100px;' /></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                        <div class="name">PM 홍길동 님</div>
                        
                        <div style='float:right; font-size:12px;'>
                        <button class="btn btn-info notika-btn-info" style='font-size:10px;'>+</button>
                        <button class="btn btn-primary notika-btn-primary" style='font-size:10px;'>로그아웃</button>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Top Area -->
    
    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    </div>
                    <!--  style='margin:auto'-->
                </div>
            </div>
        </div>
    <!-- Main Menu area End-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro" style='width : 100%,'>
    				  <li  style='width : 14%'><a data-toggle="tab" onclick="location.href='ganttpage.jsp'" style=''><i class="feather" data-feather="bar-chart"></i> 일정 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='template_risk.jsp'"><i class="feather" data-feather="briefcase"></i> 리스크 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='A1_List.jsp'"><i class="feather" data-feather="alert-triangle"></i> 내 업무 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" data-toggle="tab" onclick="location.href='template_member.jsp'"><i class="feather" data-feather="list"></i> 사원 리스트</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='A1_calendar.jsp'" ><i class="feather" data-feather="calendar"></i> 캘린더</a>
                        </li>                         
                    </ul>
                    </div>
                    <!--  style='margin:auto'-->
                </div>
            </div>
        </div>
    <!-- Main Menu area End-->
    <!-- 여기에 본문 넣으시면 됩니다. -->
    <!-- dashboard 제목 -->
	<div style='padding-bottom:100px;'>
		<h1 style='text-align:center;'>DashBoard</h1>
	</div>
    <!-- dashboard 제목 끝 -->
    <!-- 파이차트-->
    <div class="notika-email-post-area">
        <div class="container">
            <div class="row">
                <div style='width:50%; height:300px;'>
                    <div style='width:100%; height:100%;'>
                        <div class="email-ctn-round" style='width:100%; height:100%;'>
                            <div class="title" style='width:100%; height:10%' >
								<h2 style='text-align:center;'>프로젝트중인 인원 비율</h2>
							</div>
                            <div class="email-statis-wrap" style='width:100%; height:90%;'>
                                <div class="email-round-nock" style='width:100%; height:100%;'>
                                    <input style="vertical-align:middle;" type="text" class="knob" value="0" data-rel="90" data-width="200" data-bgcolor="#F6F8FA" data-fgcolor="#2196f3" data-thickness=".50" data-readonly="true">
                                <div class="total">                                    
                                	<h4>전체 인원 대비</h4>
                                </div>
                                </div>    
                            </div>
                        </div>
                    </div>
                </div>
                <div style='width:50%; height:300px;'>
                    <div style='width:100%; height:100%;'>
                        <div class="email-ctn-round" style='width:100%; height:100%;'>
                            <div class="title" style='width:100%; height:10%' >
								<h2 style='text-align:center;'>리스크 종류별 비율</h2>
							</div>
                            <div class="email-statis-wrap" style='width:100%; height:90%;'>
                                <div class="email-round-nock" style='width:100%; height:100%;'>
                                    <canvas id="chart-area" style='width:200px; height:200px; margin:auto;'></canvas>
                                <div class="total">                                    
                                	<h4>전체 리스크</h4>
                                </div>
                                </div>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- 파이차트 영역 끝 -->
    
    
    
    <!-- 막대 그래프 시작 -->
    <div class="container" style='padding-top:100px;'>
	 <div class="row" style="margin:auto;'">
	 	<h2 style='text-align:center; width:100%;'>프로젝트 진행률</h2>
		<canvas id="bar_chart" style="width:100%; maring:auto;"></canvas>
	</div>
	</div>
    <!-- 막대 그래프 끝 -->     
<!-- Start Footer area-->
    <div class="footer-copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2018 
. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Footer area-->
    <!-- jquery
		============================================ -->
    <script src="${path}/a00_com/gant/js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/counterup/jquery.counterup.min.js"></script>
    <script src="${path}/a00_com/gant/js/counterup/waypoints.min.js"></script>
    <script src="${path}/a00_com/gant/js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="${path}/a00_com/gant/js/sparkline/sparkline-active.js"></script>
    <!-- flot JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/flot/jquery.flot.js"></script>
    <script src="${path}/a00_com/gant/js/flot/jquery.flot.resize.js"></script>
    <script src="${path}/a00_com/gant/js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/knob/jquery.knob.js"></script>
    <script src="${path}/a00_com/gant/js/knob/jquery.appear.js"></script>
    <script src="${path}/a00_com/gant/js/knob/knob-active.js"></script>
    <!-- Charts JS
        ============================================ -->
    <script src="${path}/a00_com/gant/js/charts/Chart.js"></script>
    <script src="${path}/a00_com/gant/js/charts/bar-chart.js"></script>    
    <!--  todo JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/todo/jquery.todo.js"></script>
    <!--  wave JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/wave/waves.min.js"></script>
    <script src="${path}/a00_com/gant/js/wave/wave-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="${path}/a00_com/gant/js/main.js"></script>
	<script>
      feather.replace()
      
      		var randomScalingFactor = function() {
			return Math.round(Math.random() * 100);
		};

		var config = {
			type: 'doughnut',
			data: {
				datasets: [{
					data: [
						randomScalingFactor(),
						randomScalingFactor(),
						randomScalingFactor()
					],
		            backgroundColor: [
		                '#2196f3',
		                '#03a9f4',
		                '#00BCD4'
		            ],
		            borderWidth: 0
				}],
				labels: [
					'리스크 1',
					'리스크 2',
					'리스크 3'
				]
			},
			options: {
				responsive: false,
				legend: {
					display:false
				},
				animation: {
					animateScale: true,
					animateRotate: true
				}
			}
		};


		var color = Chart.helpers.color;
		var ctx1 = document.getElementById("bar_chart").getContext('2d');


		var myChart = new Chart(ctx1, {
		    type: 'horizontalBar',
		    data: {
		        labels: ['Project 1', 'Project 2', 'Project 3'],
		        datasets: [{
		            label: '예상 진행률',
		            data: [100, 100, 100],
		            backgroundColor: '#434343'
		        },{
		            label: '실 진행률',
		            data: [100, 80, 50],
					backgroundColor: '#2196f3'
		        }],
		        
		    },
		    options: {
		    	legend: {
					position: 'right',
				},
		    	responsive:false,
		        maintainAspectRatio: true, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
		        scales: {
		            xAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});

		window.onload = function() {
			var ctx = document.getElementById('chart-area').getContext('2d');
			window.myDoughnut = new Chart(ctx, config);
		};
    </script>
</body>

</html>