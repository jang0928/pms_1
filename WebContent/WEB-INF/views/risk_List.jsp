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
<title>RISK LIST</title>
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
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
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
	   // [ 등록 ] 버튼 눌렀을 때
	   $("#regBtn").on("click",function(){
	    	 location.href="${path}/riskInsform.do";
	   });
	   
	   $(".data").click(function(){
		   var risk_no = $(this).attr("id");
		   location.href = "${path}/riskDetail.do?risk_no="+risk_no;
	   });
	   
	   $(".detail").dblclick(function(){
           var no1 = $(this).attr("id");  
             location.href= "${path}/memDetail.do?mem_no="+no1
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
        
    <!-- Main Menu area End-->
    <!-- 여기에 본문 넣으시면 됩니다. -->
    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                <div class="breadcomb-wp">
                <i class="feather" data-feather="alert-triangle"></i>
                    <div class="breadcomb-ctn">
                            <h2>리스크 목록</h2>
                    </div>
                    </div>
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
                     
                            	<button class="btn btn-info" id="regBtn" style = "margin-left : 1000px;" >등록</button>
                             <table  class="table table-striped table-hover" id="search">
                               <div class="dialog-pro dialog" style = "margin-left : 1000px;">
                        		</div><br>
                                <thead>
                                <c:choose>
                                         <c:when test="${log.auth eq 'pm'}">
                                    <tr>
                                        <th>프로젝트명</th>
                                        <th>제목</th>
                                        <th>개발명</th>
                                        <th>작성자</th>
                                        <th>리스크 항목</th>
                                        <th>해결방안</th>
                                        <th>처리 상태</th>
                                        <th>등록 날짜</th>
                                        <th>수정 날짜</th>
                                    </tr>
                                    </c:when>
                                    <c:otherwise>
                                              <tr>
                                        <th>제목</th>      
                                        <th>개발명</th>
                                        <th>작성자</th>
                                        <th>리스크 항목</th>
                                        <th>해결방안</th>
                                        <th>처리 상태</th>
                                        <th>등록 날짜</th>
                                        <th>수정 날짜</th>
                                    </tr>
                                         </c:otherwise>
                                </c:choose>
                                </thead>
                                <tbody>
                                <!-- 
                                 var resources = [
								    <c:forEach items="${ganttlist}" var="gant" varStatus="index">
								        {id: ${gant.ts_no}, resource: "${gant.mem_name}"
								        <c:choose>
								       <c:when test="${!index.last }">
								        },
								       </c:when>
								       <c:otherwise>
								       }
								       </c:otherwise>
								       </c:choose>
								     </c:forEach>
  ];
                                 -->
                                <c:forEach var = "risk" items = "${riskList}">
                                 <c:choose>
                                         <c:when test="${log.auth eq 'pm'}">
                                    <tr class ="data" id = "${risk.risk_no}">
                                    
                                        <td>${risk.pr_title}</td>
                                        <td>${risk.risk_title}</td>
                                        <td>${risk.ts_title}</td>
                                        <td>${risk.mem_name}</td>
                                        <td>${risk.risk_list}</td>
                                        <td>${risk.risk_sol}</td>
                                        <td>${risk.risk_state}</td>
                                         <td><fmt:formatDate value="${risk.risk_indate}"/></td>
                                       <td><fmt:formatDate value="${risk.risk_findate}"/></td>
                                              </c:when>
                                                 <c:otherwise>
                                              <tr class ="data" id = "${risk.risk_no}">
                                         <td>${risk.risk_title}</td>     
                                         <td>${risk.ts_title}</td>
                                        <td>${risk.mem_name}</td>
                                        <td>${risk.risk_list}</td>
                                        <td>${risk.risk_sol}</td>
                                        <td>${risk.risk_state}</td>
                                          <td><fmt:formatDate value="${risk.risk_indate}"/></td>
                                          <td><fmt:formatDate value="${risk.risk_findate}"/></td>
                                    </tr>
                                         </c:otherwise>
                                              </c:choose>
                                </c:forEach>
                                        </tbody>
                                        
                                        <%--
                                        <td>
                                        	<select class="selectpicker">
												<option>조치전</option>
												<option>조치중</option>
												<option>조치완료</option>
											</select>
										</td>
										--%>
                                
                                </tbody>
                            </table>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <
	
	<br><br><br><br><br><br><br>
	
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
		<script src="${path}/a00_com/js/data-table/jquery.dataTables.min.js"></script>
<script src="${path}/a00_com/js/data-table/data-table-act3.js"></script>
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