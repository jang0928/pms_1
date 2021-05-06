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
					$("[name=proc]").val("upt");
					$("form").attr("action", "${path}/deptUpdate.do");
					$("form").submit()
					
					;}
				else{
		               return false;
		            }
				
			
		});
		var proc="${param.proc}";
		if(proc=="upt"){
			if(confirm("수정되었습니다!\n조회화면으로 이동하시겠습니까?")){
				$(location).attr("href","${path}/deptList.do");
			}
		}
		
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				$("[name=proc]").val("del");
				$("form").attr("action", "${path}/deptDelete.do");
				$("form").submit();
				}
			else{
	               return false;
	            }
	});  
		var proc="${param.proc}";
		if(proc=="del"){
			alert("삭제되었습니다. ")
				$(location).attr("href","${path}/deptList.do");
			
		}
		
		$("#goList").click(function(){
				if(confirm("목록으로 가시겠습니까?")){
					$("[name=proc]").val("go");
					$("form").attr("action", "${path}/deptList.do");
					$("form").submit();
					
					}
				else{
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
          
<%--  <input type = "hidden" name = "proc" /> 
 <input type = "hidden" name = "risk_no" value = "${risk.risk_no}" /> --%>
<div class="view-mail-list sm-res-mg-t-30">
		<div class="inbox-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <div class="view-mail-list sm-res-mg-t-30">
                        <div class="view-mail-hd">
                            <div class="view-mail-hrd">
           				  <div class="breadcomb-wp">
                           <i class="feather" data-feather="minus-square"></i>
                           <div class="breadcomb-ctn">                              
                                <h2>부서 상세</h2><br><br><br>
                                <br>
                           </div>
                        </div>                               
                            </div>
                        </div>
                    <form method="post">
                         <input type = "hidden" name = "proc" /> 
                     	    <b>부서 번호</b>	 <input type = "text" name = "deptno" value="${b.deptno }" class="form-control"  readonly/> 
                         <p class="first-ph"><b>부서명 : </b>
                         <input name = "dname" value = "${b.dname }" class="form-control"/></p>
                            <p><b>부서 인원 : </b>  <br>
                           <c:forEach var = "dept" items = "${a}">
                             	<b>${dept.mem_name }</b>
                             	<br>
                             </c:forEach> 
                            </p>
				
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                            <c:if test="${log.auth eq '매니저' }">
                                <button class="btn btn-default btn-sm waves-effect" id = "uptBtn"><i class="notika-icon notika-next" ></i> 수정</button>
                                <button class="btn btn-default btn-sm waves-effect" id = "delBtn"><i class="notika-icon notika-trash"></i> 삭제</button>
                            </c:if>	
                            	<button class="btn btn-default btn-sm waves-effect" id = "goList"><i class="notika-icon notika-right-arrow"></i> 목록으로 </button>
                            </div>
                            </div>
                               </form>
                        </div>
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
    
	<script>
      feather.replace()
    </script>
</body>
</html>