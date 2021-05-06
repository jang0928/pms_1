<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>       
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
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
<link href="https://fonts.googleapis.com/css2?family=Frank+Ruhl+Libre:wght@900&family=Gothic+A1:wght@200&display=swap" rel="stylesheet">

<style type="text/css">
body {
   font-family: 'Gothic A1', sans-serif;
}

#menu{
   width: 100%;
}


.feather{
   color:#666666;
}

.name{
   color:#ffffff;
   font-size:12px;
}

.title{
   margin-bottom : 15px;
}

.total{
   margin-top : 20px;
}

form {
   display: inline;
}

.selectLan {
  background-color: #434343;
  border: none;
}

[data-tooltip-text]:hover {
   position: relative;
}

[data-tooltip-text]:after {
   -webkit-transition: bottom .3s ease-in-out, opacity .3s ease-in-out;
   -moz-transition: bottom .3s ease-in-out, opacity .3s ease-in-out;
   transition: bottom .3s ease-in-out, opacity .3s ease-in-out;

   background-color: rgba(0, 0, 0, 0.8);

  -webkit-box-shadow: 0px 0px 3px 1px rgba(50, 50, 50, 0.4);
   -moz-box-shadow: 0px 0px 3px 1px rgba(50, 50, 50, 0.4);
   box-shadow: 0px 0px 3px 1px rgba(50, 50, 50, 0.4);
   
  -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
   
  color: #FFFFFF;
     text-align:center;
   font-size: 10px;
   margin-bottom: 10px;
   padding: 7px 12px;
   position: absolute;
   width: 60px;
   word-wrap: break-word;

   z-index: 9999;

   opacity: 0;
   left: -9999px;
  top: 90%;
   
   content: attr(data-tooltip-text);
}

[data-tooltip-text]:hover:after {
   top: 130%;
   left: 0;
   opacity: 1;
}
</style>
<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){
      $("#logout").on("click",function(){
         $("form").submit();
      });   
      

      $(".selectLan").val("${param.lang}");
     $(".selectLan").click(function(){    
        //alert($(this).attr("id"));  
         var lang = $(this).attr("id");
          location.href="${path}/choiceLan.do?lang="+lang;
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
                        <a href="${path}/dashboard.do?method=dash"><img src="${path}/a00_com/gant/img/logo/SSIT.png" style='width:100px;' /></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <table style='float:right; margin-top:15px;'>
                   <tr height="20">
                      <td class="name" style='text-align:center; width:100px;'>${log.auth } ${log.mem_name } 님</td>
                      <td style='text-align:center;'><form action ="logout.do"><button class="btn btn-primary notika-btn-primary" style='font-size:10px;' id="logout"><spring:message code="logout"/></button></form></td>
                   </tr>
                   <tr height="40">
                      <td style='text-align:right;' colspan="2">
                        <span data-tooltip-text="채팅"><button type="button" class='selectLan'><img id="chat" src="${path}/a00_com/gant/img/logo/chat.png" style='width:20px;' onclick="window.open('${path}/chatting.do','win','width=550,height=700,location=no,status=no,scrollbars=yes')" style='font-size:20px;'/></button></span>&nbsp;
                        <span data-tooltip-text="한국어"><button type="button" class='selectLan' id="ko"><img src="${path}/a00_com/gant/img/logo/south-korea.png" style='width:20px;'/></button></span>&nbsp;
                        <span data-tooltip-text="영어"><button type="button" class='selectLan' id="en"><img src="${path}/a00_com/gant/img/logo/united-states.png" style='width:20px;'/></button></span>

                    </td>
                   </tr>
                </table>
                </div>
            </div>
        </div>
    </div>
  
  
    <!-- Main Menu area End-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro" style='width : 100%,'>
                       <li  style='width : 14%'><a data-toggle="tab"onclick="location.href='${path}/pjtlist.do'"><i class="feather" data-feather="file"></i><spring:message code="myproject"/></a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='${path}/risklist.do'"><i class="feather" data-feather="alert-triangle"></i> <spring:message code="riskManagement"/></a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='${path}/board.do?method=list'"><i class="feather" data-feather="briefcase"></i><spring:message code="taskManagement"/></a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab"  onclick="location.href='${path}/memlist.do'"><i class="feather" data-feather="users"></i><spring:message code="employeeList"/></a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='${path}/calendar.do?method=list'" ><i class="feather" data-feather="calendar"></i><spring:message code="calendar"/></a>
                        </li> 

                    </ul>
                    </div>
                    <!--  style='margin:auto'-->
                </div>
            </div>
        </div>      
</body>

</html>