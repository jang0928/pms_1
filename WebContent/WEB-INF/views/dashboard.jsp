<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.bundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fetch/2.0.3/fetch.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/es6-promise/4.1.1/es6-promise.auto.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
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
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/css/bootstrap.min.css">
<!-- font awesome CSS
		============================================ -->
<link rel="stylesheet"
	href="${path}/a00_com/gant/css/font-awesome.min.css">
<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/css/owl.carousel.css">
<link rel="stylesheet" href="${path}/a00_com/gant/css/owl.theme.css">
<link rel="stylesheet"
	href="${path}/a00_com/gant/css/owl.transitions.css">
<!-- meanmenu CSS
		============================================ -->
<link rel="stylesheet"
	href="${path}/a00_com/gant/css/meanmenu/meanmenu.min.css">
<!-- animate CSS
		============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/css/animate.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/css/normalize.css">
<!-- mCustomScrollbar CSS
		============================================ -->

<link rel="stylesheet" href="${path}/a00_com/gant/css/wave/button.css">
<!-- main CSS
		============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/css/main.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/style.css">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Frank+Ruhl+Libre:wght@900&family=Gothic+A1:wght@200&display=swap" rel="stylesheet">


<style type="text/css">
body {
	font-family: 'Gothic A1', sans-serif;
}
.dashtitle{
	font-family: 'Frank Ruhl Libre', serif;
	font-size:40px;
}
#menu {
	width: 100%;
}

.feather {
	color: #666666;
}

.name {
	color: #ffffff;
	text-align: right;
	font-size: 12px;
	margin-top: 7px;
}

.title {
	margin-bottom: 15px;
}

.total {
	margin-top: 20px;
}
</style>
<script type="text/javascript">
	var event = "";
	var probability = "";
	var impact = "";
	var total = "";
	var ing = "";
	var rest = "";
	var risks="";
	var total_p ="";
	var days="";
	var chartLabels = [];
	var chartData = [];
	var chartReal = [];
	
	

	$(document).ready(
			function() {
				$("#logout").on("click", function() {
					$("form").submit();
				});

				ajaxCall();

				var ctx = document.getElementById("pie_chart2")
						.getContext('2d');

				function ajaxCall() {
					$.ajax({
						type : "get",
						url : "${path}/dashboard.do?method=data",
						dataType : "json",
						success : function(data) {
							console.log(data);
							total = data.list.mem_tot;
							ing = data.list.mem_ing;
							rest = (total - ing);						
							
							var per = Math.round((ing / total) * 100)

							event = data.list.risk_e;
							probability = data.list.risk_p;
							impact = data.list.risk_i;
							risks=event+probability+impact;
							
							projects = data.list.total_p;
							
							days = data.list.days;
							
							$('.no1').text(total);
							$('.no2').text(risks);
							$('.no3').text(projects);
							$('.no4').text(days);
							
							list=data.list;
							var show="";
							
							show+="<tr style='text-align:center; height:40px;'><td>Event</td><td>"+event+"개"+"</td></tr><tr style='text-align:center; height:40px;'><td>Probability</td><td>"+probability+"개"+"</td></tr>"
									+"<tr style='text-align:center; height:40px;'><td>Impact</td><td>"+impact+"개"+"</td></tr>"
						
							$("#show").html(show);
							
							var vm = new Vue({
								el:".data-table",
								data:{
									list:[]
								},
								mounted:function(){
									this.fetchList();
								},
								methods:{
									fetchList:function(){
										this.list=[];
										var vm = this;
										var url="http://localhost:7080/finalPJ/dashboard.do?method=data";
										fetch(url).then(function(response){
											console.log("#response#");
											console.log(response);
											return response.json();
										}).then(function(json){
											console.log("#json data#")
											console.log(json);
											console.log(json.list.project);
											vm.list = json.list.project;
											console.log(vm.list)
										}).catch(function(err){
						            		console.log("# e r r  o c c u r r e d #")
						            		console.log(err);
						            	});
									}
								}
								
							})				
							
							$(function() {
								  var count0 = count1 = count2 = count3 = 0;

								  timeCounter();

								  function timeCounter() {

								    id0 = setInterval(count0Fn, 100);

								    function count0Fn() {
								      count0++;
								      if (count0 > total) {
								        clearInterval(id0);
								      } else {
								        $(".no1").text(count0);
								      }

								    }

								    id1 = setInterval(count1Fn, 100);

								    function count1Fn() {
								      count1++;
								      if (count1 > risks) {
								        clearInterval(id1);
								      } else {
								        $(".no2").text(count1);
								      }
								    }

								    id2 = setInterval(count2Fn, 200);

								    function count2Fn() {
								      count2++;
								      if (count2 > projects) {
								        clearInterval(id2);
								      } else {
								        $(".no3").text(count2);
								      }
								    }

								    id3 = setInterval(count3Fn, 7);

								    function count3Fn() {
								      count3++;
								      if (count3 > days) {
								        clearInterval(id3);
								      } else {
								        $(".no4").text(count3);
								      }
								    }
								  }
								});

							var title1 = document.getElementById("title1");
							title1.innerHTML = "전체의  " + per + "% 참여 중";


							var ctx = document.getElementById("pie_chart1")
									.getContext('2d');
							var ctx1 = document.getElementById("pie_chart2")
									.getContext('2d');

							var myPie = new Chart(ctx, {
								type : 'doughnut',
								data : {
									datasets : [ {
										data : [ ing, rest ],
										backgroundColor : [ '#2196f3',
												'white' ],
										borderWidth : 0
									} ],
									labels : [ '프로젝트 참여 인원', '미참여 인원' ]
								},
								options : {
									title : {
										display : true,
										text : '프로젝트 참여 인원',
										position : 'top',
										fontSize : 20,
										fontColor : '#000'
									},
									responsive : false,
									animation : {
										animateScale : true,
										animateRotate : true
									}
								}
							});

							var myPie1 = new Chart(ctx1,
									{
										type : 'doughnut',
										data : {
											datasets : [ {
												data : [ event, probability,
														impact ],
												backgroundColor : [ '#00BCD4',
														'#FF9800', '#2196f3' ],
												borderWidth : 0
											} ],
											labels : [ 'Event', 'Probability',
													'Impact' ]
										},
										options : {
											title : {
												display : true,
												text : '리스크별 비율',
												position : 'top',
												fontSize : 20,
												fontColor : '#000'
											},
											responsive : false,
											animation : {
												animateScale : true,
												animateRotate : true
											}
										}
									});

						},
						error : function(request, status, error) {
							alert("code:" + request.status + "\n" + "message:"
									+ request.responseText + "\n" + "error:"
									+ error);
						}
					})

					var ctx2 = document.getElementById("bar_chart").getContext('2d');
					
					$.ajax({
						type : "get",
						url : "${path}/dashboard.do?method=data",
						dataType : "json",
						success : function(data) {
							var list = data.list.project;
							console.log(list);
							var show1="";
							$.each(list, function(idx, p, arry) {
								console.log(p.pr_title)
								chartLabels.push(p.pr_title);
								console.log(p.prog);
								chartData.push(p.prog);
								console.log(p.prog_tot);
								chartReal.push(p.prog_tot);
								
								show1+="<tr style='text-align:center; height:40px;'><td>"+p.pr_title+"</td><td>"+p.pr_sdate+"</td><td>"+p.pr_edate+"</td></tr>"
							
								$("#show1").html(show1);
							})

							var myChart = new Chart(ctx2, {
								type : 'horizontalBar',
								data : {
									labels : chartLabels,
									datasets : [ {
										label : '총 기간(%)',
										data : chartReal,
										backgroundColor : '#434343'
									}, {
										label : '진행 기간(%)',
										data : chartData,
										backgroundColor : '#2196f3'
									} ],

								},
								options : {
									
									legend : {
										position : 'right',
									},
									
									responsive : false,
									maintainAspectRatio : true, // default value. false일 경우 포함된 div의 크기에 맞춰서 그려짐.
									scales : {
										xAxes : [ {
											ticks : {
												beginAtZero : true
											}
										} ]
									}
								}
							});

						},
						error : function(request, status, error) {
							alert("code:" + request.status + "\n" + "message:"
									+ request.responseText + "\n" + "error:"
									+ error);
						}
					});
				}

			});
</script>
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- Start Header Top Area -->
	<jsp:include page="main_top.jsp"></jsp:include>
	<!-- End Header Top Area -->

	<!-- Main Menu area start-->
	<div class="main-menu-area mg-tb-40">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"></div>
				<!--  style='margin:auto'-->
			</div>
		</div>
	</div>
	<!-- Main Menu area End-->
	
	<!-- Main Menu area End-->
	<!-- 여기에 본문 넣으시면 됩니다. -->
	<!-- dashboard 제목 -->
	<div style='padding-bottom: 50px;'>
		<p style='text-align: center;' class="dashtitle"><spring:message code="dashboard"/></p>
	</div>
	<!-- dashboard 제목 끝 -->
    <!-- Start Status area -->
    <div class="notika-status-area" style='padding-bottom:50px;'>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2 class="no1"></h2>
                            <p><spring:message code="totalEmp"/></p>
                        </div>
                        <div class="sparkline-bar-stats1">9,4,8,6,5,6,4,8,3,5,9,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2 class="no2"></h2>
                            <p><spring:message code="totalRisk"/></p>
                        </div>
                        <div class="sparkline-bar-stats2">1,4,8,3,5,6,4,8,3,3,9,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2 class="no3"></h2>
                            <p><spring:message code="totalproj"/></p>
                        </div>
                        <div class="sparkline-bar-stats3">4,2,8,2,5,6,3,8,3,5,9,5</div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                    <div class="wb-traffic-inner notika-shadow sm-res-mg-t-30 tb-res-mg-t-30 dk-res-mg-t-30">
                        <div class="website-traffic-ctn">
                            <h2 class="no4"></h2>
                            <p><spring:message code="totalper"/></p>
                        </div>
                        <div class="sparkline-bar-stats4">2,4,8,4,5,7,4,7,3,5,7,5</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Status area-->	
	
	<div class="container">
	<div class="row" style='width: 100%;'>
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12" style='height: 100%; width:25%;'>
			<div style='width: 100%; height: 350px; background-color:white;'>
				<div style='width: 100%; height: 300px;'>
					<canvas id="pie_chart1"
						style='width: 100%; height: 100%; margin: auto;'></canvas>
				</div>
				<div class="total">
					<h4 id="title1" style="text-align: center;"></h4>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12" style='height: 100%; background-color:white;'>
			<div  style='width: 100%; height: 350px;'>
				<div style='width: 100%; height: 330px;'>
					<canvas id="pie_chart2"
						style='width: 100%; height: 100%; margin: auto;'></canvas>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12" style='height: 100%; float:right; background-color:white;'>
		<div style='height: 100%;'>
			<div  style='width: 100%; height: 350px;display: flex;'>
				<div style='width: 100%; height: 300px; display: flex; margin:auto;'>
					<table class="table-hover" style='vertical-align: middle; margin:auto; width:100%;'>
						<tr style='height:50px; border-bottom: 1px solid #E0E0E0; background-color:white;'><th style='text-align:center;'>리스크 종류</th><th style='text-align:center;'>리스크 개수</th></tr>
						<tbody id="show" >
						
						</tbody>
					</table>
				</div>
			</div>
		</div>
		</div>
	</div>
	</div>
	
	<!-- 파이차트 영역 끝 -->

	<!-- 막대 그래프 시작 -->
	<div class="container" style='padding-top: 100px;'>
		<div class="row" style='padding-top: 20px; background-color:white; '>
		<div style='height: 100%; width:40%; margin:auto;'>
		<div class="data-table" style='width: 100%;'>
		<table class="table-hover" style='width:100%;'>
			<tr style='height:50px; border-bottom: 1px solid #E0E0E0; background-color:white;'><th style='text-align:center;'>프로젝트 이름</th><th style='text-align:center;'>프로젝트 시작일</th><th style='text-align:center;'>프로젝트 종료일</th></tr>
			<tr v-for="l in list" style='height:40px; text-align:center;'>
				<td>{{l.pr_title}}</td>
				<td>{{l.pr_sdate}}</td>
				<td>{{l.pr_edate}}</td>
			</tr>
		</table>
		</div>
		</div>
		<div style='height: 100%; width:60%; background-color:white;'>
			<h2 style='text-align: center; width: 100%;'>프로젝트 진행률</h2>
			<canvas id="bar_chart" style="width: 100%; maring: auto;"></canvas>
		</div>	
		</div>
	</div>
	<!-- 막대 그래프 끝 -->

	<!-- Start Footer area-->
	<div class="footer-copyright-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="footer-copy-right">
						<p>
							Copyright © 2018 . All rights reserved. Template by <a
								href="https://colorlib.com">Colorlib</a>.
						</p>
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
	<script
		src="${path}/a00_com/gant/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
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
	<!-- plugins JS
		============================================ -->
	<script src="${path}/a00_com/gant/js/plugins.js"></script>
	<!-- main JS
		============================================ -->
	<script src="${path}/a00_com/gant/js/main.js"></script>
	<script>
		feather.replace()
	</script>
</body>

</html>