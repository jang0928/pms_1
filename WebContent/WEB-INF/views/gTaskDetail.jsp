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
<title>My Project</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://unpkg.com/feather-icons"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
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
body {
   font-family: 'Gothic A1', sans-serif;
}

.text{
   width:800px;
}
</style>

<script type="text/javascript">

   $(document).ready(function(){
      var proc="${param.proc}";
      var pr_no = ${param.pr_no};
      var auth = "${log.auth}";
      var mem_no = ${log.mem_no };
      var deptno = ${log.deptno};
      
      // ?????? ??????
      $("#uptBtn").on("click",function(){
      	  if($("[name=ts_title]").val() == ""){
    		 alert("?????? ?????? ???????????????.")
    		 $("[name=ts_title]").focus();
    		 return false;
    	 }
      	  if($("[name=ts_rate]").val() == ""){
    		 alert("???????????? ???????????????.")
    		 $("[name=ts_title]").focus();
    		 return false;
    	 }
    	 if($("[name=ts_sdate]").val() == ""){
    		 alert("??????????????? ???????????????.")
    		 $("[name=ts_sdate]").focus();
    		 return false;
    	 }
    	 if($("[name=ts_edate]").val() == ""){
    		 alert("??????????????? ???????????????.")
    		 $("[name=ts_edate]").focus();
    		 return false;
    	 }
    	 if($("[name=ts_sdate]").val() >= $("[name=ts_edate]").val()){
    	 	 alert("?????? ????????? ?????? ?????????????????????.")
    	 	 $("[name=ts_edate]").focus();
    		 return false;
    		 } 
         if(confirm("?????????????????????????")){
            $("[name=proc]").val("upt");
            //$("[name=deptno]").val("deptno");
            $("form").attr("action", "${path}/gantt.do?method=update");
            $("form").submit();
         }
      });
      // ?????? ??? ????????? ??????
      if(proc=="upt"){
         if(confirm("?????????????????????!\n?????????????????? ?????????????????????????")){
            $(location).attr("href","${path}/gantt.do?method=list&pr_no="+pr_no+"&auth="+auth+"&mem_no="+mem_no+"&deptno="+deptno);
         }
      }
      // ??????????????? ??????
      $("#gantt").on("click",function(){
         location.href="${path}/gantt.do?method=list&pr_no="+pr_no+"&auth="+auth+"&mem_no="+mem_no+"&deptno="+deptno;
      });
      
         // ?????? ??????
      $("#delBtn").on("click",function(){
         if(confirm("?????????????????????????")){
            $("[name=proc]").val("del");
            //$("[name=deptno]").val("deptno");
            $("form").attr("action", "${path}/gantt.do?method=delete");
            $("form").submit();
         }
      });
      // ?????? ??? ????????? ??????
      if(proc=="del"){
         alert("?????????????????????!\n?????????????????? ???????????????.")
            $(location).attr("href","${path}/gantt.do?method=list&pr_no="+pr_no+"&auth="+auth+"&mem_no="+mem_no+"&deptno="+deptno);
         
      }

   });
   
</script>

</head>
<body>
   <!-- Start Header Top Area -->
<jsp:include page="main_top.jsp"></jsp:include>
    <!-- End Header Top Area -->
    <!-- Main Menu area start-->
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <div class="breadcomb-list">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="breadcomb-wp">
                        <i class="feather" data-feather="file-text"></i>
                           <div class="breadcomb-ctn">
                              <h2>???????????? : ${tasklist.pr_title }</h2>         
                              <h4>???????????? ?????? : ${tasklist.pr_sdate} ~ ${tasklist.pr_edate}</h4>         
                           </div>                           
                        </div>                     
                     </div>                                 
                  </div>                                 
               </div>
            </div>
         </div>
      </div>
   
    <!-- Main Menu area End-->
    <!-- ????????? ?????? ???????????? ?????????. -->
    


<!-- ???????????? ????????? -->

    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">             
                    <div class="header-top-menu">
                            </div>
                            </div>
                        </div>
                        <div class="table-responsive">    
                           <form method="post">
                        <input type="hidden" name="proc" value=""/> <!-- ?????????????????? ??????????????????? -->             
                         <table id="data-table-basic" class="table table-striped">
                        <colgroup>
                            <col style="width:20%;">
                            <col style="width:80%;">
                         </colgroup>
                            <c:choose>
                        <c:when test="${not empty tasklist.ts_no }">
                           <tr style="display:none;"><th>??????????????????</th><td><input type="text" name="pr_no" value="${tasklist.pr_no }"/></td></tr>
                           <tr style="display:none;"><th>????????????</th><td><input type="text" name="deptno" value="${log.deptno }"/></td></tr>
                           <tr style="display:none;"><th>????????????</th><td><input type="text" name="ts_no" value="${tasklist.ts_no }"/></td></tr>
                           <tr><th>?????????</th><td><select name="ts_refno">
                                     <c:choose>
                                          <c:when test="${tasklist.ts_refno == 0}">
                                                <option value="0" selected>??????</option>
                                           </c:when>
                                           <c:otherwise>
                                                <c:forEach var="ref" items="${refno}">
                                                    <c:choose>
                                                      <c:when test="${ref.ts_no == tasklist.ts_refno}">
                                                         <option value="${ref.ts_no}" selected>${ref.ts_title}</option>
                                                      </c:when>
                                                      <c:otherwise>
                                                      <option value="${ref.ts_no}">${ref.ts_title}</option>
                                                       </c:otherwise>
                                                   </c:choose>
                                                </c:forEach>
                                                </c:otherwise>
                                                </c:choose>
                                             </select>
                                       </td></tr>                           
                           <tr><th>?????????</th><td><input type="text" name="ts_title" value="${tasklist.ts_title }" class="text"/></td></tr>
                           <tr><th>?????????</th><td><input type="text" name="ts_rate" value="${tasklist.ts_rate }" class="text"/></td></tr>
                           <tr><th>????????????</th><td><input type="date" name="ts_sdate" value="${tasklist.ts_sdate }" class="text"/></td></tr>
                           <tr><th>????????????</th><td><input type="date" name="ts_edate" value="${tasklist.ts_edate }" class="text"/></td></tr>
                           <tr style="display:none;"><th>??????????????????</th><td><input type="date" name="ts_ereal" value="${tasklist.ts_ereal }" class="text"/></td></tr>
                           <tr><th>?????????</th><td><select name="mem_no">
                                                <c:forEach var="mems" items="${deptmems}">
                                                    <c:choose>
                                                      <c:when test="${mems.mem_name == tasklist.mem_name}">
                                                         <option value="${mems.mem_no}" selected>${mems.mem_name}</option>
                                                      </c:when>
                                                      <c:otherwise>
                                                      <option value="${mems.mem_no}">${mems.mem_name}</option>
                                                       </c:otherwise>
                                                   </c:choose>
                                                </c:forEach>
                                             </select>
                                       </td></tr>
                                       
                        </c:when>
                        <c:otherwise>
                           <tr><td colspan="2">?????? ???????????? ??????????????? ????????????!</td></tr>
                        </c:otherwise>
                     </c:choose>
                     <tr><td colspan="2"><input class="btn btn-info notika-btn-info" type="button" value="??????" id="uptBtn"/>
                                    <input class="btn btn-warning notika-btn-warning" type="button" value="??????" id="delBtn"/>
                                    <input class="btn btn-primary notika-btn-primary" type="button" value="???????????? ????????? ??????" id="gantt"/>
                        </td></tr>
                            </table>
                            </form>
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
                        <p>Copyright ?? 2018 
. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
   <script>
      feather.replace()
    </script>
</html>