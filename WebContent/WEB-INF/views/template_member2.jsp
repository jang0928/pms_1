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
<title>MEMBERS LIST</title>
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
    <!-- modernizr JS
      ============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<style type="text/css">


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

.move{
   position:relative;
   left :1000px;
   bottom :100px;
}

.go{
   position:relative;
   left :850px;
   bottom :100px;
}

</style>
<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){
      // 사원등록 버튼 눌렀을 때
      $("#insBtn").click(function(){
              location.href= "insForm.do"
         
      }); 
      
     
   $(".data").click(function(){
        //  var no = $(this).children().eq(0).text();
            /* var name = $(this).children().eq(1).text();
            var pass = $(this).children().eq(2).text(); */
           var no = $(this).attr("id");  
            location.href= "${path}/mail.do?no="+no 
        }); 
   
   $(".normal").click(function(){
       //  var no = $(this).children().eq(0).text();
           /* var name = $(this).children().eq(1).text();
           var pass = $(this).children().eq(2).text(); */
          var no = $(this).attr("id");  
           location.href= "${path}/mail2.do?no="+no 
       }); 
     $(".detail").dblclick(function(){
             var no1 = $(this).attr("id");  
               location.href= "${path}/memDetail.do?mem_no="+no1
           }); 
     $("#gogo").click(function(){
           location.href= "deptList.do"
      
}); 
   });
</script>
</head>
<body>
    
     <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                        <div class="breadcomb-wp">
                           <i class="feather" data-feather="users"></i>
                           <div class="breadcomb-ctn">                            
                            <h2>프로젝트 미참여 인원 </h2><br><br> 
                           </div>
                          </div>  
                        
                                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="header-top-menu">
                            </div>
                            </div>
                        </div>
                             <c:if test="${log.auth eq '매니저' }">
                           <span class="move"> <button class="btn btn-info notika-btn-info"
                            style='font-size:10px;' id = "insBtn">사원 등록</button></span>
                            
                            
                       
                      </c:if>  
                            <button class="btn btn-primary notika-btn-primary go"
                            style='font-size:10px;' id = "gogo">부서 목록</button>
                      
                      
                            
                        <div class="table-responsive">
                      <table  class="table table-striped table-hover" id="member2">
                                <thead>
                                    <tr>
                                        <th>소속팀</th>
                                        <th>이름</th>
                                        <th>연락처</th>
                                        <th>이메일</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                         <c:forEach var="mem2" items="${memlist_2}">
                                         <c:choose>
                                         <c:when test="${log.auth eq '매니저' }">
                                             <tr class="detail" id= "${mem2.mem_no}">
                                      <td><button class="data"  style='font-size:10px;' 
                                      id = "${mem2.mem_no}" >사원 정보 발송</button>
                                      ${mem2.dname}</td>
                                      <td>${mem2.mem_name}</td>
                                      <td>${mem2.pnum}</td>
                                      <td>${mem2.email}</td>
                                     <td><button class="normal"  style='font-size:10px;' 
                                      id = "${mem2.mem_no}" >메일 발송</button>  
                                    </tr>
                                         </c:when>
                                         <c:otherwise>
                                              <tr class="detail" id= "${mem2.mem_no}">
                                      <td> ${mem2.dname}</td>
                                      <td>${mem2.mem_name}</td>
                                      <td>${mem2.pnum}</td>
                                      <td>${mem2.email}</td>
                                     <td><button class="normal"  style='font-size:10px;' 
                                      id = "${mem2.mem_no}" >메일 발송</button>  
                                    </tr>
                                         </c:otherwise>
                                         </c:choose>
                                           </c:forEach>
                    
                                </tbody>
                                    </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
<!-- Start Footer area-->
  
    <script src="js/plugins.js"></script>
    <!-- Data Table JS
      ============================================ -->
      <script src="${path}/a00_com/js2/data-table/jquery.dataTables.min.js"></script>
      <script src="${path}/a00_com/js2/data-table/data-table-act2.js"></script>
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