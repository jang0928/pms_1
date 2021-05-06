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
<script src="https://unpkg.com/feather-icons"></script>
 <!-- favicon
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css"> -->
    <!-- Notika icon CSS
      ============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/notika-custom-icon.css">
    <!-- Data Table JS
      ============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/jquery.dataTables.min.css">
    <!-- main CSS
      ============================================ -->
    <!-- modernizr JS
      ============================================ -->
    <script src="${path}/a00_com/gant/js/vendor/modernizr-2.8.3.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <!-- favicon
      ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="${path}/a00_com/gant/img/favicon.ico">
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
                        <div class="name">홍길동 님</div>
                        
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
                       <li  style='width : 14%'><a data-toggle="tab" onclick="location.href='ganttpage.jsp'" style=''><i class="feather" data-feather="bar-chart"></i> 일정 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='template_risk.jsp'"><i class="feather" data-feather="briefcase"></i> 리스크 관리</a>
                        </li>
                        <li class="active" style='width : 14%'><a data-toggle="tab" onclick="location.href='A1_List.jsp'"><i class="feather" data-feather="alert-triangle"></i> 내 업무 관리</a>
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
        	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="breadcomb-list">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="breadcomb-wp">
									<div class="breadcomb-icon">
										<i class="notika-icon notika-bar-chart"></i>
									</div>
									<div class="breadcomb-ctn">
										<h2>내 업무 관리 조회 [Project Name]</h2>
									</div>
								</div>
							</div>
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    <!-- Main Menu area End-->
    <!-- 여기에 본문 넣으시면 됩니다. -->
    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">             
                    <div class="header-top-menu">

                       <!--  <ul class="nav navbar-nav notika-top-nav">
                            <li class="nav-item dropdown">
                                <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><span><i class="notika-icon notika-search"></i></span></a>
                                <div role="menu" class="dropdown-menu search-dd animated flipInX">
                                    <div class="search-input">
                                        <i class="notika-icon notika-left-arrow"></i>
                                        <input type="text" />
                                    </div>
                                </div>
                            </li>
                            </ul> -->
                            </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                     
                         <table id="data-table-basic" class="table table-striped">
                               <%--<div class="dialog-pro dialog" style = "margin-left : 1000px;">                                 
                             <button class="btn btn-info" id="sa-title">등록</button> 
                               
                              </div>--%>
                              <br>
                                <thead>
                                    <tr>
                                        <th>게시글 번호</th>
                                        <th>보고날짜</th>
                                        <th>사원명</th>
                                        <th>담당업무</th>
                                        <th>프로젝트 담당 업무기간</th>
                                        <th>파일 업로드</th>
                                        <th>결재 상태</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr onclick="location.href='A1_form_view.jsp'" >
                                       <td>1</td>
                                        <td>2021-03-30</td>
                                        <td>홍길동</td>
                                        <td>@@@</td>
                                        <td>2021-03-21~2021-08-23</td>
                                        <td>@@@@@@@</td>
                                        <td>검토중</td>
                                    </tr> 
                                    <tr onclick="location.href='A1_form_view.jsp'" >
                                       <td>2</td>
                                        <td>2021-03-30</td>
                                        <td>홍길동</td>
                                        <td>@@@</td>
                                        <td>2021-03-21~2021-08-23</td>
                                        <td>@@@@@@@</td>
                                        <td>검토중</td>
                                    </tr>
                                    <tr onclick="location.href='A1_form_view.jsp'" >
                                       <td>3</td>
                                        <td>2021-03-30</td>
                                        <td>홍길동</td>
                                        <td>@@@</td>
                                        <td>2021-03-21~2021-08-23</td>
                                        <td>@@@@@@@</td>
                                        <td>검토중</td>
                                    </tr>
                                    <tr onclick="location.href='A1_form_view.jsp'" >
                                       <td>4</td>
                                        <td>2021-03-30</td>
                                        <td>홍길동</td>
                                        <td>@@@</td>
                                        <td>2021-03-21~2021-08-23</td>
                                        <td>@@@@@@@</td>
                                        <td>검토중</td>
                                    </tr>
                                    <tr onclick="location.href='A1_form_view.jsp'" >
                                       <td>5</td>
                                        <td>2021-03-30</td>
                                        <td>홍길동</td>
                                        <td>@@@</td>
                                        <td>2021-03-21~2021-08-23</td>
                                        <td>@@@@@@@</td>
                                        <td>검토중</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
   <br><br><br><br><br><br><br>
   
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
    <!-- Data Table JS
      ============================================ -->
    <script src="js/data-table/jquery.dataTables.min.js"></script>
    <script src="js/data-table/data-table-act.js"></script>
    <!-- main JS
      ============================================ -->
    <script src="js/main.js"></script>
   <!-- tawk chat JS
      ============================================ -->
    
   <script>
      feather.replace()
    </script>
</body>

</html>