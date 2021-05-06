<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<c:set var = "path" value = "${pageContext.request.contextPath}" />  
<fmt:requestEncoding value = "UTF-8" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RISK INSERT</title>
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
    <!-- dropzone CSS
      ============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/dropzone/dropzone.css">


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
      $("#insBtn").click(function(){
         
         if($("[name = mem_pass]").val() == ""){
            alert("비밀번호를 생성하세요.")
            $("[name = mem_pass]").focus();
            return false;
         }
         
       
         if($("[name = mem_name]").val() == ""){
            alert("이름을 입력해주세요.")
            $("[name = mem_name]").focus();
            return false;
         }
         
         if($("[name = auth]").val() == ""){
            alert("직급을 입력해주세요.")
            $("[name = auth]").focus();
            return false;
         }
         if($("[name = email]").val() == ""){
            alert("이메일을 입력하세요.")
            $("[name = email]").focus();
            return false;
         }

         
         var email = document.getElementById("email").value;

         var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

         if(exptext.test(email)==false){

            //이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐경우         

            alert("메일 형식이 올바르지 않습니다.\n ex)abc@ssit.com 형식으로 작성해주세요.");
            $("[name = email]").focus();
            return false;

         }
         
         var phone = document.getElementById("phone").value;
         var phoneval = /^\d{3}-\d{3,4}-\d{4}$/; 
         if(phoneval.test(phone)==false){
            alert("핸드폰 번호 형식이 올바르지 않습니다.\n ex)010-0000-0000 형식으로 작성해주세요.")
            $("[name = phone]").focus();
            return false;
         }
         
         if($("[name = pnum]").val() == ""){
            alert("폰번호를 입력해주세요.")
            $("[name = pnum]").focus();
            return false;
         }
         if(confirm("등록하시겠습니까?")){
            $("[name=proc]").val("ins");
            $("form").attr("action", "${path}/insertMem.do");
            $("form").submit()
            
            ;}
         
      
   });
     $("#ch04").click(function(){
         var addPass="";
            for(var col=1;col<=4;col++){
               var pass=Math.floor(Math.random()*9+1)
               addPass+=pass;
            }
         $('input[name=mem_pass]').attr('value', addPass);
      })
      
    
   });
   var proc="${param.proc}";
   if(proc=="ins"){
      if(confirm("등록되었습니다!\n조회화면으로 이동하시겠습니까?")){
         $(location).attr("href","${path}/memlist.do");
         
      }
   }
   
    $("#goList").click(function(){
          if(confirm("조회화면으로 이동하시겠습니까?")){
             $(location).attr("href","${path}/memlist.do");
               
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
        
      
              <div class="container">
                    <div class="view-mail-list sm-res-mg-t-30">
                        <div class="view-mail-hd">
                            <div class="view-mail-hrd">
                                <h2>사원 등록</h2><br><br><br>
                                <br>
                            </div>
                        </div>
                         <div class="view-mail-atn">
                        <div class="cmp-int mg-t-20">
                        <form method="post">
                          <input type="hidden" name="proc"/>
                          <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                    
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">비밀번호</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                              <input class="btn btn-info notika-btn-info" type="button" value="비밀번호생성" id="ch04"/>
                                            <input type="password" class="form-control" name="mem_pass"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                              <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">이름</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="text" class="form-control" placeholder="이름 " name="mem_name" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                              <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">직급</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                        <select class="selectpicker" name = "auth">
                        					<option value = "">직급을 선택하세요.</option>
                        					<option value = "pm">pm</option>
                        					<option value = "개발자">개발자</option>
                        					<option value = "매니저">매니저</option>
                        				</select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
             
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 10.5px;">팀 이름</span>
                                       <%--   <form:select path="deptno" class="form-control mr-sm-2" items="${depts}" itemLabel="dname" itemValue="deptno"/> --%>
                                         
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                        <br>
                                           <select name="deptno">
                                         <c:forEach var="dept" items="${depts }">
                                            <option value="${dept.deptno}">${dept.dname}</option>
                                         </c:forEach>
                                         </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">email</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="text" class="form-control" placeholder="email " name="email" id="email"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">폰번호</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <div class="view-mail-atn">
                                               <input type="text" class="form-control" placeholder="000-0000-0000 " name="pnum" id="phone"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                              
                                <button class="btn btn-default btn-sm waves-effect" id = "insBtn" ><i class="notika-icon notika-down-arrow"></i> 등록</button>
                             <button class="btn btn-default btn-sm waves-effect" id = "goList" ><i class="notika-icon notika-right-arrow" ></i> 목록으로 </button>
                               
                            </div>
                        </div>
                          </form>
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
                        <p>COPYRIGHT (c) 2021 SSIT COMPANY. ALL RIGHT RESERVED. </p>
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
    <!-- dropzone JS
      ============================================ -->
    <script src="js/dropzone/dropzone.js"></script>
    
   <script>
      feather.replace()
    </script>
</body>
</html>