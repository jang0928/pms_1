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
<title>EMAIL</title>
<link rel="stylesheet" href="${path}/a00_com/gant/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/gant/jquery-ui.css" >
<script src="${path}/a00_com/gant/jquery.min.js"></script>
<script src="${path}/a00_com/gant/popper.min.js"></script>
<script src="${path}/a00_com/gant/bootstrap.min.js"></script>
<script src="${path}/a00_com/gant/jquery-ui.js"></script>
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


</style>
<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){
		// [ 목록으로 ] 버튼 눌렀을 때
	   $("#goList").click(function(){
		   location.href = "template_member.jsp";
	   });
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
                    <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro" style='width : 100%,'>
    				  <li style='width : 14%'><a data-toggle="tab" onclick="location.href='ganttpage.jsp'" style=''><i class="feather" data-feather="bar-chart"></i> 일정 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='template_risk.jsp'"><i class="feather" data-feather="briefcase"></i> 리스크 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='A1_List.jsp'"><i class="feather" data-feather="alert-triangle"></i> 내 업무 관리</a>
                        </li>
                        <li class="active" style='width : 14%'><a data-toggle="tab" data-toggle="tab" onclick="location.href='template_member.jsp'"><i class="feather" data-feather="list"></i> 사원 리스트</a>
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
	
	
	
				<div class="container">
                    <div class="view-mail-list sm-res-mg-t-30">
                        <div class="view-mail-hd">
                            <div class="view-mail-hrd">
                                <h2>Email view</h2><br><br><br>
                            </div>
                            <div class="view-ml-rl">
                                <p>08:26 PM (2 hours ago)</p>
                            </div>
                        </div>
                        <div class="mail-ads mail-vw-ph">
                            <p class="first-ph"><b>Subject: </b>Lorem Ipsum has been the industry's standard dummy text ever</p>
                            <p><b>Email:</b> <a href="#">example.@email.com</a></p>
                            <p class="last-ph"><b>Date:</b> 15.03.2018</p>
                        </div>
                        <div class="view-mail-atn">
                            <h2>Hello Mamunur Roshid!</h2>
                            <p>Dummy text of the printing and typesetting industry. Lorem Ipsum has been the <b>dustrys standard dummy text</b> ever since the 1500s, when an unknown printer took a galley of types and scrambleded it to make a type specimenen book. It hasn survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. when an unknown printer took a galley of types and scrambleded it to make a type specimenen book. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages <a href="#">Read more</a>.</p>
                            <p>All the Lorem Ipsum generators on the Internet tend to repeat the predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence crisity structures, to generate Lorem Ipsum which looks reasonable. recently with.Dummy text of the printing and typesetting industryunknown printer took a galley of type. when an unknown printer took a galley of types and scrambleded it's stambanner to make a type specimenen book.survived not only five centuries, but also the leap into the electronic typesetting, remaining essentially unchanged.</p>
                            <span class="vw-tr">Thanks and Regards</span>
                            <span>Mark Smith</span>
                        </div>
                        <div class="file-download-system">
                            <div class="dw-st-ic mg-t-20">
                                <div class="dw-atc-sn">
                                    <span><i class="notika-icon notika-paperclip"></i> 첨부 파일 <i class="notika-icon notika-arrow-right atc-sign"></i></span>
                                </div>
                                <div class="dw-atc-sn">
                                    <a class="btn dw-al-ft" href="#">Download <i class="notika-icon notika-file"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                                <button class="btn btn-default btn-sm waves-effect"><i class="notika-icon notika-next"></i> 발송 </button>
                                <button class="btn btn-default btn-sm waves-effect" id = "goList"><i class="notika-icon notika-right-arrow"></i> 목록으로 </button>
                            </div>
                        </div>
                    </div>
           		 </div>    
	
	
    
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
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="js/counterup/jquery.counterup.min.js"></script>
    <script src="js/counterup/waypoints.min.js"></script>
    <script src="js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/sparkline-active.js"></script>
    <!-- flot JS
		============================================ -->
    <script src="js/flot/jquery.flot.js"></script>
    <script src="js/flot/jquery.flot.resize.js"></script>
    <script src="js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="js/knob/jquery.knob.js"></script>
    <script src="js/knob/jquery.appear.js"></script>
    <script src="js/knob/knob-active.js"></script>
    <!--  Chat JS
		============================================ -->
    <script src="js/chat/jquery.chat.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="js/todo/jquery.todo.js"></script>
    <!--  wave JS
		============================================ -->
    <script src="js/wave/waves.min.js"></script>
    <script src="js/wave/wave-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
	<script>
      feather.replace()
    </script>
</body>

</html>