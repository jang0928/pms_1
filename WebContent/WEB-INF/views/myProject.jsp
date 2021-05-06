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
<link href="https://fonts.googleapis.com/css2?family=Frank+Ruhl+Libre:wght@900&family=Gothic+A1:wght@200&display=swap" rel="stylesheet">
<style>
body {
   font-family: 'Gothic A1', sans-serif;
}
</style>
<script type="text/javascript">

   $(document).ready(function(){
      
     $(".data").on("click",function(){
      // location.href="${path}/empInsert.do";
      // # jquery에서는 js코드를 사용 가능
      var pr_no = $(this).children().eq(0).text();
      var auth = "${log.auth}";
      var mem_no = ${log.mem_no };
      var deptno = ${log.deptno};
      location.href="${path}/gantt.do?method=list&pr_no="+pr_no+"&auth="+auth+"&mem_no="+mem_no+"&deptno="+deptno;
   });
     
     // 프로젝트 페이지 이동
   $("#regBtn").on("click",function(){
      if(confirm("프로젝트를 등록 하시겠습니까???")){
         location.href="${path}/insProForm.do";
      }
      //location.href="${path}/ganttUpt.do?pr_no="+;
   });
   
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
                           <i class="feather" data-feather="file"></i>
                           <div class="breadcomb-ctn">
                              <h2>나의 프로젝트 [My Project]</h2>
                              <c:choose>
                                 <c:when test="${log.auth == 'pm'}">
                                    <button id="regBtn" class="btn btn-info notika-btn-info"
                                       type="button">프로젝트 추가</button>
                                 </c:when>
                                 <c:otherwise>
                                    <br>
                                 </c:otherwise>
                              </c:choose>

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
                         <table id="data-table-basic" class="table table-striped">
                              <br>
                                <thead>
                                    <tr>
                                       <th style='text-align:center;'>번호</th>
                                        <th style='text-align:center;'>프로젝트명</th>
                                        <th style='text-align:center;'>등록일</th>
                                        <th style='text-align:center;'>시작일</th>
                                        <th style='text-align:center;'>종료일</th>
                                        <th style='text-align:center;'>상태</th>              
                                    </tr>
                                </thead>
                                <tbody>
                                   <c:choose>
                                      <c:when test="${not empty pjlist}">
                                      <c:forEach var = "plist" items = "${pjlist}" varStatus="index">
                                          <tr class="data">
                                              <td style="display:none;">${plist.pr_no}</td>
                                              <td style='text-align:center;'>${index.count}</td>
                                              <td style='text-align:center;'>${plist.pr_title}</td>
                                              <td style='text-align:center;'><fmt:formatDate value="${plist.pr_date}" pattern="yyyy-MM-dd"/></td>
                                              <td style='text-align:center;'>${plist.pr_sdate}</td>
                                              <td style='text-align:center;'>${plist.pr_edate}</td>
                                              <td style='text-align:center;'>${plist.pr_state}</td>
                                          </tr>       
                                      </c:forEach>
                                      </c:when>
                                      <c:otherwise>
                                         <tr><td colspan="6" style="text-align:center;">등록된 프로젝트가 없습니다.</td></tr>
                                      </c:otherwise>
                                    </c:choose>        
                                </tbody>
                            </table>
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
</body>
   <script>
      feather.replace()
    </script>
</html>