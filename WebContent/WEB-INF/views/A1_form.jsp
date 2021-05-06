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

.view-mail-list {
width:66%;
margin-right:210px;
margin-left:288px;
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
<jsp:include page="main_top.jsp"></jsp:include>
    <!-- End Header Top Area -->
    <!-- Main Menu area start-->
  
    <!-- Main Menu area End-->
    <!-- 여기에 본문 넣으시면 됩니다. -->
   <!-- Breadcomb area Start-->
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
                              <h2>결재 서류 작성</h2>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Breadcomb area End-->
   
     <div class="view-mail-list sm-res-mg-t-30" >
                        
                         <div class="view-mail-atn">
                        <div class="cmp-int mg-t-20">
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 14px; text-align:center;">글 번호</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="email" class="form-control" placeholder="sequence 자동 생성" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                               <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 14px; text-align:center;">담당업무</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="email" class="form-control" placeholder="프로젝트명" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 14px; text-align:center;">시작일</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="email" class="form-control" placeholder="yyyy-mm-dd" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 14px; text-align:center;">종료일</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="email" class="form-control" placeholder="yyyy-mm-dd" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 14px; text-align:center;">사원명</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="email" class="form-control" placeholder="이름" readonly/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 14px; text-align:center;" >전달사항</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <div class="view-mail-atn">
                                               <textarea rows="10px" cols="120px">
                                                  
                                                                    내용
                                                                                                    
                                               </textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 14px; text-align:center;">첨부파일</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="file" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                                <button class="btn btn-default btn-sm waves-effect"><i class="notika-icon notika-down-arrow"></i> 등록</button>
                            </div>                          
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
    <!--  Chat JS
      ============================================ -->
    <script src="${path}/a00_com/gant/js/chat/jquery.chat.js"></script>
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
    </script>
</body>

</html>