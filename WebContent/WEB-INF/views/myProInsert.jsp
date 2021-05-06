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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Frank+Ruhl+Libre:wght@900&family=Gothic+A1:wght@200&display=swap" rel="stylesheet">


<style type="text/css">
body {
   font-family: 'Gothic A1', sans-serif;
}

.text{
   width:800px;
}
</style>

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


<script type="text/javascript">

   $(document).ready(function(){
   //${path}/insProject.do
      var title = "${param.pr_title}";
      var sdate = "${param.pr_sdate}";
      var edate = "${param.pr_edate}";
	
	$("#insBtn").on("click", function(){
		if($("[name=pr_title]").val() == ""){
			alert("프로젝트 명을 입력하세요.")
			$("[name=pr_title]").focus();
			return false;
		}
		if($("[name=pr_sdate]").val() == ""){
			alert("시작날짜를 입력하세요.")
			$("[name=pr_sdate]").focus();
			return false;
		}
		if($("[name=pr_edate]").val() == ""){
			alert("종료날짜를 입력하세요.")
			$("[name=pr_edate]").focus();
			return false;
		}
		if($("[name=pr_sdate]").val() >= $("[name=pr_edate]").val()){
			alert("종료 날짜를 잘못 입력하셨습니다.")
			$("[name=pr_edate]").focus();
			return false;
		}
		if(confirm("등록하시겠습니까?")){
			$("[name=procs]").val("ins");
			$("form").attr("action", "${path}/insProject.do");
			$("form").submit();
		}
	});
	var procs="${param.procs}";
	if(procs=="ins"){
		if(confirm("등록되었습니다!\nMy project로 이동하시겠습니까?")){
			$(location).attr("href","${path}/pjtlist.do");
		}
	}

      // 프로젝트 페이지 이동
      $("#mypro").on("click",function(){
 		 if(confirm("My project로 이동하시겠습니까?")){
			 $("form").attr("action", "${path}/pjtlist.do");
			// $("form").submit()
				
		 }
      });
      
   });
   
</script>

</head>
<body>
   <!-- Start Header Top Area -->
<jsp:include page="main_top.jsp"></jsp:include>
    <!-- End Header Top Area -->
    <!-- Main Menu area start-->
   <div class="breadcomb-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <div class="breadcomb-list">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="breadcomb-wp">
                           <i class="feather" data-feather="file-plus"></i>
                           <div class="breadcomb-ctn">
                              <h2>신규 프로젝트 등록</h2>
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
    


<!-- 프로젝트 리스트 -->

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
                           <input type="hidden" name="procs"/>
                         <table id="data-table-basic" class="table table-striped">
                         <colgroup>
                            <col style="width:20%;">
                            <col style="width:80%;">
                         </colgroup>
                           <tr><th>프로젝트명</th><td><input type="text" name="pr_title" class="text"/></td></tr>
                           <tr><th>시작 일자</th><td><input type="date" name="pr_sdate" placeholder="YYYY-MM-DD" class="text"/></td></tr>
                           <tr><th>종료 일자</th><td><input type="date" name="pr_edate" placeholder="YYYY-MM-DD" class="text"/></td></tr>
                           <tr><th>상태</th><td><input type="radio" name="pr_state" value="진행전" checked><label>진행전</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <input type="radio" name="pr_state" value="진행중" ><label>진행중</label>
                                       </td></tr>
                           <tr><th>담당PM</th><td><input type="text" name="mem_no" readonly value="${log.mem_no }" class="text"/></td></tr>
                     <tr><td colspan="2">
                       <button class="btn btn-default btn-sm waves-effect" id = "insBtn" ><i class="notika-icon notika-down-arrow"></i> 등록</button>
				       <button class="btn btn-default btn-sm waves-effect" id = "mypro" ><i class="notika-icon notika-right-arrow"></i> 목록으로 </button>
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
                        <p>Copyright © 2018 
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