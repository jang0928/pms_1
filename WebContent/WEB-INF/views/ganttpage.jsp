<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정관리</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://unpkg.com/feather-icons"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
   href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap"
   rel="stylesheet">
<script src="https://unpkg.com/feather-icons"></script>
<!-- 간트 -->
<link href="${path}/a00_com/gant/css/gcGantt.css" media="all"
   rel="stylesheet" type="text/css" />
<link href="${path}/a00_com/gant/layout-gcGantt.css" media="all"
   rel="stylesheet" type="text/css" />
<script src="${path}/a00_com/gant/js/gcGantt.js" type="text/javascript"></script>

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
<link
   href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
   rel="stylesheet">
<!-- Bootstrap CSS
      ============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/css/bootstrap.min.css">
<!-- font awesome CSS
      ============================================ -->
<link rel="stylesheet"
   href="${path}/a00_com/gant/css/font-awesome.min.css">
<!-- owl.carousel CSS
      ============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/css/owl.carousel.css">
<link rel="stylesheet" href="${path}/a00_com/gant/css/owl.theme.css">
<link rel="stylesheet"
   href="${path}/a00_com/gant/css/owl.transitions.css">
<!-- meanmenu CSS
      ============================================ -->
<link rel="stylesheet"
   href="${path}/a00_com/gant/css/meanmenu/meanmenu.min.css">
<!-- animate CSS
      ============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/css/animate.css">
<!-- normalize CSS
      ============================================ -->
<link rel="stylesheet" href="${path}/a00_com/gant/css/normalize.css">
<!-- mCustomScrollbar CSS
      ============================================ -->
<link rel="stylesheet"
   href="${path}/a00_com/gant/css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- Notika icon CSS
      ============================================ -->
<link rel="stylesheet"
   href="${path}/a00_com/gant/css/notika-custom-icon.css">
<!-- wave CSS
      ============================================ -->
<link rel="stylesheet"
   href="${path}/a00_com/gant/css/wave/waves.min.css">
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
<link
   href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap"
   rel="stylesheet">

<script type="text/javascript">

$(document).ready(function(){
   var pr_no = ${param.pr_no};
   var auth = "${log.auth}";
   var mem_no = ${log.mem_no };
   var deptno = ${log.deptno};
   // '새 프로젝트 등록' 다이얼로그 초기 옵션
    var optsIn={
            autoOpen:false, // 초기에 나타나지 않음
            width:"500px",
            modal:true
         }
         $("#schDialog").dialog(optsIn);
         // 이벤트에 의해 기능 버튼 option 변경
         $("#regBtn").click(function(){
            $("[name=pr_no]").val();
            $("[name=ts_no]").val();
            $("[name=ts_refno]").val(0);
            $("[name=ts_title]").val("");
            $("[name=ts_rate]").val(0);
            $("[name=ts_sdate]").val("");
            $("[name=ts_edate]").val("");
            //$("[name=ts_ereal]").val();
            $("[name=mem_no]").val(mem_no);
            optsIn.buttons={
               "등록":function(){
            	if($("[name=ts_title]").val() == ""){
            		alert("업무 명을 입력하세요.")
            		$("[name=ts_title]").focus();
            		return false;
            	}
            	if($("[name=ts_sdate]").val() == ""){
            		alert("시작날짜를 입력하세요.")
            		$("[name=ts_sdate]").focus();
            		return false;
            	}
            	if($("[name=ts_edate]").val() == ""){
            		alert("종료날짜를 입력하세요.")
            		$("[name=ts_edate]").focus();
            		return false;
            	}
            	if($("[name=ts_sdate]").val() >= $("[name=ts_edate]").val()){
            		alert("종료 날짜를 잘못 입력하셨습니다.")
            		$("[name=ts_edate]").focus();
            		return false;
            		}
                  alert("등록합니다.");
                  console.log("# ajax 처리 #");
                  console.log($("form").serialize());
                 // ajax처리. (DB 등록)
                 $.ajax({
                    type:"post",
                      url:"${path}/gantt.do?method=insert",
                      dataType:"json",
                    data:$("#frm").serialize(), // 요청값을 json객체로 전달 가능
                    success:function(){
                       alert("등록 성공");

                     location.href="${path}/gantt.do?method=list&pr_no="+pr_no+"&auth="+auth+"&mem_no="+mem_no+"&deptno="+deptno;
                    },
                    error:function(err){
                       console.log(err);
                    }
                 });
                 $("#schDialog").dialog("close");
               }
            }
            $("#schDialog").dialog(optsIn); // 등록 버튼 추가
            $("#schDialog").dialog("open"); // 기본 창 로드
         });   
         
          // 프로젝트 수정 페이지 이동
        $("#proBtn").on("click",function(){
           if(confirm("프로젝트를 수정 하시겠습니까?")){
              location.href="${path}/proDetail.do?&pr_no="+pr_no;
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
   <!-- Main Menu area End-->
   <!-- 여기에 본문 넣으시면 됩니다. type="hidden" -->

   <div id="schDialog" title="업무 일정">
      <form id="frm">
         <input name="pr_no" type="hidden" value="${param.pr_no}" />
         <!--  <div class="input-group mb-3">
            <div class="input-group-prepend">
         <span class="input-group-text">업무 번호</span>
      </div>
      <input class="form-control" name="ts_no" type="text"/>
      </div> -->
         <div class="input-group mb-3">
            <div class="input-group-prepend">
               <span class="input-group-text">대분류</span>
            </div>
            <select name="ts_refno">
               <option value="0" selected>없음</option>
               <c:forEach var="ref" items="${refno}">

                  <option value="${ref.ts_no}">${ref.ts_title}</option>
               </c:forEach>
            </select>
         </div>
         <!-- <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="input-group-text">상위업무</span>
         </div>
         <select name="ts_refno">
         <option value="0" selected>없음</option>
         <option value="1">분석설계</option>
         <option value="2">front end 개발</option>
         <option value="3">back end 개발</option>
         <option value="4">통합 test 및 배포</option>
         </select>
      </div> -->
         <div class="input-group mb-3">
            <div class="input-group-prepend">
               <span class="input-group-text">업무 명</span>
            </div>
            <input class="form-control" name="ts_title" type="text" />
         </div>
         <div class="input-group mb-3">
            <div class="input-group-prepend">
               <span class="input-group-text">진척도</span>
            </div>
            <input class="form-control" name="ts_rate" type="text" readonly value=""/>
         </div>
         <div class="input-group mb-3">
            <div class="input-group-prepend">
               <span class="input-group-text">시작날짜</span>
            </div>
            <input class="form-control" name="ts_sdate" type="date"
               placeholder="YYYY-MM-DD" />
         </div>
         <div class="input-group mb-3">
            <div class="input-group-prepend">
               <span class="input-group-text">종료날짜</span>
            </div>
            <input class="form-control" name="ts_edate" type="date"
               placeholder="YYYY-MM-DD" />
         </div>
         <div class="input-group mb-3" style="display:none;">
            <div class="input-group-prepend">
               <span class="input-group-text">실제 종료날짜</span>
            </div>
            <input class="form-control" name="ts_ereal" type="date"
               placeholder="YYYY-MM-DD" />
         </div>
         <div class="input-group mb-3">
            <div class="input-group-prepend">
               <span class="input-group-text">담당자</span>
            </div>
            <select name="mem_no">
               <c:forEach var="mems" items="${deptmems}">
                  <option value="${mems.mem_no}">${mems.mem_name}</option>
               </c:forEach>
            </select>
         </div>
         <!-- <button class="btn btn-info" type="submit">등록</button>  <input class="form-control" name="mem_no" type="text"/> -->
      </form>
   </div>




   <!-- 간트차트 -->

   <div class="container">
      <div class="row">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div style='margin: auto;'>
                  <span style="font-size: 2.5em; font-weight: bold;">${proDetail.pr_title}</span>&nbsp;&nbsp;
               <c:choose>
                  <c:when test="${log.auth == 'pm'}">
                     <button id="proBtn" class="btn btn-primary notika-btn-primary"
                        type="button">프로젝트 수정</button>&nbsp;   
           <button id="regBtn" class="btn btn-info notika-btn-info"
                        type="button">업무 등록</button>
                     <br>
                  </c:when>
                  <c:otherwise>
                     <br>
                  </c:otherwise>
               </c:choose>
                  <span style="font-size: 1.5em;">${proDetail.pr_sdate} ~
                     ${proDetail.pr_edate}</span>

               <div style="overflow: auto;">
                  <div id="gc-gantt"></div>
                  <div id="cg-date"></div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <script>
 
 //var arr = new Array();
 //function ajaxCall(){

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

 var jsonData = [
     <c:forEach items="${ganttlist}" var="gant" varStatus="index">
      <c:if test="${gant.ts_refno ==0 && !index.first }">
      ]
     },
     </c:if>
     <c:if test="${gant.ts_refno==0}">
     {
     "id": ${gant.ts_no},
     "description": "${gant.ts_title}",
     "start": "${gant.ts_sdate}",
     "end": "${gant.ts_edate}",
     "calculatePercent": true,
     "color": "#004d00",
     "tasks": [
     </c:if>
     <c:if test="${gant.ts_refno!=0}">
     {
         "id": ${gant.ts_no}.${gant.mem_no},
        "description": "${gant.ts_title}",
        "start": "${gant.ts_sdate}",
        "end": "${gant.ts_edate}",
        "resources": [${gant.ts_no}],
        "percent": ${gant.ts_rate} 
      },
        </c:if>
     </c:forEach>
      ] 
     }
];   
         var gcGantt = new GCGantt('gc-gantt', jsonData, resources, {
            showResources: true, 
            showStartDate: true,
            showEndDate: true,
            showResourceFilter: true,  
            "title": {
               task: "Task name",
               start: "Start",
               end: "End",   
               resources: "Resources",
               percent: "Percent (%)"  
            }
         });     
         var pr_no = ${param.pr_no};
         var auth = "${log.auth}";     
         var mem_no = ${log.mem_no };    
         var deptno = ${log.deptno};
         gcGantt.onTaskNameClick = function (id, group) {  
     	   var no = id;
    	   var nos = no.split('.');	 
           if(auth == "pm"){
              if(confirm("업무를 수정하시겠습니까?")){
                    location.href="${path}/gantt.do?method=detail&pr_no="+pr_no+"&ts_no="+nos[0]+"&auth="+auth+"&mem_no="+mem_no+"&deptno="+deptno;
              }
           }else{
    	   var noss = nos[1].padEnd(4, 0);
               if(group != true){
            		if(noss == mem_no){
		                  if(confirm("업무 문서를 작성하시겠습니까?")){
		                    location.href="${path}/board.do?method=insForm&ts_no="+nos[0]+"&pr_no="+pr_no;  
		                 }
            		}   

               }
           }
          };
 
      </script>
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