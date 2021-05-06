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
	    $(".data").click(function(){
	     	var board_no = $(this).attr("id");
	     	location.href="${path}/board.do?method=detail&board_no="+board_no;
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
    <!-- End Header Top Area -->
    <!-- Main Menu area start-->
 <div class="data-table-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                        <div class="breadcomb-wp">
                    <i class="feather" data-feather="briefcase"></i>
                    <div class="breadcomb-ctn">
									
										<h2>내 업무 관리 조회 [PM] </h2>
										</div>
										</div>
			                  <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                
                    <div class="header-top-menu">
									</div>
								</div>
								
						   <div class="table-responsive">
                     
                           <table  class="table table-striped" id="search">
                               <div class="dialog-pro dialog" style = "margin-left : 1000px;">
                              </div><br>	
                                <thead>
                                    <tr>
                                        <th>게시글 번호</th>
                                        <th>프로젝트명</th>
                                        <th>보고날짜</th>
                                        <th>사원명</th>
                                        <th>담당업무</th>
                                        <th>결재 상태</th>
                                    </tr>
                                </thead>
                                <tbody>
                               <c:forEach var="bd" items="${boardListPM}" varStatus="index">         
                                    <tr class="data" id="${bd.board_no }" ><td>${index.count }</td>        
                                   	 <td>${bd.pr_title }</td> 
                                    	<td><fmt:formatDate value="${bd.b_indate}" pattern="yyyy-MM-dd"/></td>
                                    	<td>${bd.mem_name }</td>  
                                    	<td>${bd.ts_title }</td>
                                 		<td>${bd.b_state }</td>
                                 		</tr>
                                   </c:forEach> 
                                </tbody>
                            </table>
                        </div>
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
    <script src="${path}/a00_com/js/data-table/jquery.dataTables.min.js"></script>
<script src="${path}/a00_com/js/data-table/data-table-act3.js"></script>
   <script>
      feather.replace()
    </script>
</body>

</html>
                                        	