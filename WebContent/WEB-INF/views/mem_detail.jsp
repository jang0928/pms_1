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
<title>RISK DETAIL</title>
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
      // [ 수정 ] 버튼 눌렀을 때
      $("#uptBtn").click(function(){
            if(confirm("수정하시겠습니까?")){
               var email = document.getElementById('email').value;
               var exptext = /^[0-9a-zA-Z]([-a_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

            if(exptext.test(email)==false){
            alert("메일 형식이 올바르지 않습니다.\n abc@ssit.com 형식으로 작성해주세요.");

            $("[name = email]").focus();

            return false;

            }
               
            $("[name=proc]").val("upt");
            $("form").attr("action", "${path}/memUpdate.do");
            $("form").submit();
            
            } else{
               return false;
            }
            
         
      });
      var proc="${param.proc}";
      if(proc=="upt"){
         if(confirm("수정되었습니다!\n조회화면으로 이동하시겠습니까?")){
            $(location).attr("href","${path}/memlist.do");
         }
      }
      
      $("#delBtn").click(function(){
         if(confirm("삭제하시겠습니까?")){
            $("[name=proc]").val("del");
            $("form").attr("action", "${path}/memDelete.do");
            $("form").submit();
            }
   });  
      var proc="${param.proc}";
      if(proc=="del"){
         if(confirm("삭제되었습니다!\n조회화면으로 이동하시겠습니까?")){
            $(location).attr("href","${path}/memlist.do");
         }
      }
      
      $("#goList").click(function(){
            if(confirm("목록으로 가시겠습니까?")){
               $("form").attr("action", "${path}/memlist.do");
               $("form").submit();
               
            }else{
               return false;
            }
            
         
      });
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
      <div class="inbox-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="view-mail-list sm-res-mg-t-30">
                        <div class="view-mail-hd">
                            <div class="view-mail-hrd">
                                <h2>사원 상세</h2><br><br><br>
                            </div>
                           
                        </div>   
                         <form method="post" >
                        <div class="mail-ads mail-vw-ph">
                  <input type="hidden" name="proc"/>
                            <div class=" cmp-email-over">
                            <b>아이디  </b><input type="text" class="form-control" name="mem_no" value="${mem.mem_no }" readonly/>
                            </div>
                              <div class=" cmp-email-over">
                            <p><b>이름  </b><input type="text" class="form-control" name="mem_name" value="${mem.mem_name}"></p>
                            </div>
                            <c:choose>
                               <c:when test="${log.mem_no eq mem.mem_no}">
                                    <div class=" cmp-email-over">
                                  <p><b>비밀번호  </b><input type="password" class="form-control" name="mem_pass" value="${mem.mem_pass}"></p>
                                  </div>
                               </c:when>
                               <c:otherwise>
                                  <div class=" cmp-email-over" style="display:none;">
                                  <p><b>비밀번호  </b><input type="password" class="form-control" name="mem_pass" value="${mem.mem_pass}"></p>
                                  </div>
                               </c:otherwise>
                            </c:choose>
                              <div class=" cmp-email-over">
                            <p><b>이메일  </b><input type="email" class="form-control" name="email" value="${mem.email }" id="email"></p>
                            </div>
                              <div class=" cmp-email-over">
                            <p><b>현재 권한 : ${mem.auth}  </b>
                            <p><b>수정 권한 : </b>
	                            <select name="auth">
	                            	<c:if test="${mem.auth  == 'pm'}">
		                                <option value="${mem.auth}" selected>${mem.auth}</option>
		                                <option value="개발자">개발자</option>
		                                <option value="매니저">매니저</option>	                            	
	                            	</c:if>
	                            	<c:if test="${mem.auth  == '개발자'}">
		                                <option value="pm">pm</option>
		                                <option value="${mem.auth}" selected>${mem.auth}</option>
		                                <option value="매니저">매니저</option>	                            	
	                            	</c:if>
	                            	<c:if test="${mem.auth  == '매니저'}">
		                                <option value="pm">pm</option>
		                                <option value="개발자">개발자</option>	                            	
		                                <option value="${mem.auth}" selected>${mem.auth}</option>
	                            	</c:if>
	                             </select></p>
                            
                          <!--   <input type="text" class="form-control" name="auth" value="${mem.auth }"></p> -->
                            </div>
                            <c:choose>
                               <c:when test="${log.auth eq '매니저' }">
                              <div class=" cmp-email-over">
                               <p><b>현재 팀 : ${mem.dname } </b> <br>
                               <p><b>수정 팀 : </b>  
                               <select name="deptno">
                                            <c:forEach var="dept" items="${depts }">
                                       <c:choose>
                                                  <c:when test="${mem.dname  == dept.dname}">
                                                      <option value="${dept.deptno}" selected>${dept.dname}</option>
                                                   </c:when>
                                                   <c:otherwise>
                                                      <option value="${dept.deptno}">${dept.dname}</option>
                                                     </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            </select></p> 
                                     </div> 
                                 <div class=" cmp-email-over">
                               </div>
                               </c:when>
                               <c:otherwise>
                                 <div class=" cmp-email-over">
                                  <p><b>현재 팀 : ${mem.dname } </b>  
                                  <br>
                                  <p style="display:none;"><b>수정 팀 : </b>  
                                  <select name="deptno" style="display:none;">
                                               <c:forEach var="dept" items="${depts }">
                                          <c:choose>
                                                     <c:when test="${mem.dname  == dept.dname}">
                                                         <option value="${dept.deptno}" selected>${dept.dname}</option>
                                                      </c:when>
                                                      <c:otherwise>
                                                         <option value="${dept.deptno}">${dept.dname}</option>
                                                        </c:otherwise>
                                                   </c:choose>
                                               </c:forEach>
                                               </select></p> 
                                        </div> 
                               </c:otherwise>
                            </c:choose>
                        </div>
                      
                                
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                                <c:if test="${log.auth eq '매니저' || log.mem_no eq mem.mem_no  }">
                               <button class="btn btn-default btn-sm waves-effect" id="uptBtn"><i class="notika-icon notika-next"></i> 수정</button>
                               </c:if>
                               <button class="btn btn-default btn-sm waves-effect" id = "goList"><i class="notika-icon notika-right-arrow"></i> 목록으로 </button>
                                <c:if test="${log.auth eq '매니저' }">
                               <button class="btn btn-default btn-sm waves-effect" id="delBtn" type="button"><i class="notika-icon notika-trash"></i> 삭제</button>
                               </c:if>
                            </div>
                        </div>
                        </form>
                          <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                        <%--    <form >
                              <input type="hidden" name="mem_no" value="${mem.mem_no}"/>
                                <button class="btn btn-default btn-sm waves-effect" id="delBtn" type="button"><i class="notika-icon notika-trash"></i> 삭제</button></form>
                                </div></div> --%>
                    </div>
                </div>
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
    
   <script>
      feather.replace()
    </script>
</body>
</html>