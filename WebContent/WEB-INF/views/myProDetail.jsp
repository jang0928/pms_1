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

<script type="text/javascript">

   $(document).ready(function(){
      var proc="${param.proc}";
      var pr_no = ${param.pr_no};
      var auth = "${log.auth}";
      var mem_no = ${log.mem_no };
      var deptno = ${log.deptno};
      
      // ?????? ??????
      $("#uptBtn").on("click",function(){
  		if($("[name=pr_title]").val() == ""){
			alert("???????????? ?????? ???????????????.")
			$("[name=pr_title]").focus();
			return false;
		}
		if($("[name=pr_sdate]").val() == ""){
			alert("??????????????? ???????????????.")
			$("[name=pr_sdate]").focus();
			return false;
		}
		if($("[name=pr_edate]").val() == ""){
			alert("??????????????? ???????????????.")
			$("[name=pr_edate]").focus();
			return false;
		}
		if($("[name=pr_sdate]").val() >= $("[name=pr_edate]").val()){
			alert("?????? ????????? ?????? ?????????????????????.")
			$("[name=pr_edate]").focus();
			return false;
		}
         if(confirm("?????????????????????????")){
            $("[name=proc]").val("pUpt");
            //$("[name=deptno]").val("deptno");
            $("form").attr("action", "${path}/proUpdate.do");
            $("form").submit();
         }
      });
      // ?????? ??? ????????? ??????
      if(proc=="pUpt"){
         if(confirm("?????????????????????!\nMy project??? ?????????????????????????")){
            $(location).attr("href","${path}/pjtlist.do");
         }
      }
      // ??????????????? ??????
      $("#mypro").on("click",function(){
         location.href="${path}/pjtlist.do";
      });
      
         // ?????? ??????
      $("#delBtn").on("click",function(){
         if(confirm("?????????????????????????")){
            $("[name=proc]").val("pDel");
            //$("[name=deptno]").val("deptno");
            $("form").attr("action", "${path}/proDelete.do");
            $("form").submit();
         }
      });
      // ?????? ??? ????????? ??????
      if(proc=="pDel"){
    	 alert("?????????????????????!\nMy project??? ???????????????.")
            $(location).attr("href","${path}/pjtlist.do");
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
                           <div class="breadcomb-ctn">
                              <h2>???????????? : ${project.pr_title }</h2>         
                              <h4>???????????? ?????? : ${project.pr_sdate} ~ ${project.pr_edate}</h4>         
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
                            <c:choose>
                        <c:when test="${not empty project.pr_title }">
                           <tr style="display:none;"><th>??????????????????</th><td><input type="text" name="pr_no" value="${project.pr_no }"/></td></tr>
                           <tr><th>???????????????</th><td><input type="text" name="pr_title" value="${project.pr_title }"/></td></tr>
                           <!-- <tr><th>????????????</th><td><input type="text" name="ts_refno" value="${project.pr_date }"/></td></tr> -->
                           <tr><th>????????????</th><td><input type="date" name="pr_sdate" value="${project.pr_sdate }"/></td></tr>
                           <tr><th>????????????</th><td><input type="date" name="pr_edate" value="${project.pr_edate }"/></td></tr>
                           <tr><th>??????</th><td>
                                       <c:choose>
                                       <c:when test="${project.pr_state == '?????????' }">
                                          <input type="radio" name="pr_state" value="?????????" checked><label>?????????</label>
                                       </c:when>   
                                       <c:otherwise>
                                          <input type="radio" name="pr_state" value="?????????"><label>?????????</label>
                                       </c:otherwise>
                                       </c:choose>
                                       <c:choose>
                                       <c:when test="${project.pr_state == '?????????' }">
                                          <input type="radio" name="pr_state" value="?????????" checked><label>?????????</label>
                                       </c:when>   
                                       <c:otherwise>
                                          <input type="radio" name="pr_state" value="?????????"><label>?????????</label>
                                       </c:otherwise>
                                       </c:choose>
                                       <c:choose>
                                       <c:when test="${project.pr_state == '??????' }">
                                          <input type="radio" name="pr_state" value="??????" checked><label>??????</label>
                                       </c:when>   
                                       <c:otherwise>
                                          <input type="radio" name="pr_state" value="??????"><label>??????</label>
                                       </c:otherwise>
                                       </c:choose>
                                       </td></tr>
                           <tr><th>?????????</th><td><select name="mem_no">
                                                <c:forEach var="memp" items="${memPm}">
                                                <c:choose>
                                                   <c:when test="${memp.mem_name == project.mem_name}">
                                                   <option value="${memp.mem_no}" selected>${memp.mem_name}</option>
                                                </c:when>
                                                <c:otherwise>
                                                   <option value="${memp.mem_no}">${memp.mem_name}</option>
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
                                    <input class="btn btn-primary notika-btn-primary" type="button" value="My project" id="mypro"/>
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