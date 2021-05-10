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
<title>일정관리</title>
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
<!-- 간트 -->
 <link href="${path}/a00_com/gant/css/gcGantt.css" media="all" rel="stylesheet" type="text/css" />
 <link href="${path}/a00_com/gant/layout-gcGantt.css" media="all" rel="stylesheet" type="text/css" />
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
 // '새 프로젝트 등록' 다이얼로그 초기 옵션
      var opts={
         autoOpen:false, // 초기에 나타나지 않음
         width:"500px",
         modal:true
      }
      $("#dialog01").dialog(opts);
      // 이벤트에 의해 기능 버튼 option 변경
      $("#regBtn").click(function(){
         $("[name=pr_title]").val("프로젝트명");
         $("[name=pr_sdate]").val("");
         $("[name=pr_edate]").val("");
         $("[name=mem_no]").val("담당자명");
         opts.buttons={
            "확인":function(){
               alert("등록합니다.");
               console.log("# ajax 처리 #");
               //console.log($("form").serialize());
            }
         }
         $("#dialog01").dialog(opts); // 등록 버튼 추가
         $("#dialog01").dialog("open"); // 기본 창 로드
      });
// '프로젝트 수정' 다이얼로그 초기 옵션
      var opts4={
         autoOpen:false, // 초기에 나타나지 않음
         width:"500px",
         modal:true
      }
      $("#dialog01").dialog(opts);
      // 이벤트에 의해 기능 버튼 option 변경
      $("#regBtn4").click(function(){
         $("[name=pr_title]").val("프로젝트명");
         $("[name=pr_sdate]").val("");
         $("[name=pr_edate]").val("");
         $("[name=mem_no]").val("담당자명");
         opts4.buttons={
            "확인":function(){
               alert("등록합니다.");
               console.log("# ajax 처리 #");
               //console.log($("form").serialize());
            }
         }
         $("#dialog01").dialog(opts4); // 등록 버튼 추가
         $("#dialog01").dialog("open"); // 기본 창 로드
      });    
// '일정 등록' 다이얼로그 초기 옵션
       var opts2={
         autoOpen:false, // 초기에 나타나지 않음
         width:"1000px",
         modal:true
      }
      $("#dialog02").dialog(opts2);
      // 이벤트에 의해 기능 버튼 option 변경
      $("#regBtn2").click(function(){
         $("[name=ts_no]").val();
         $("[name=ts_title]").val("업무명");
         $("[name=ts_rate]").val(0);
         $("[name=ts_sdate]").val("");
         $("[name=ts_edate]").val("");
         $("[name=ts_ereal]").val("");
         $("[name=endDateT]").val("");        
         $("[name=mem_no]").val("");
         opts2.buttons={
            "확인":function(){
               alert("등록합니다.");
               console.log("# ajax 처리 #");
             // console.log($("form").serialize());
            }
         }
         $("#dialog02").dialog(opts2); // 등록 버튼 추가
         $("#dialog02").dialog("open"); // 기본 창 로드
      });     
 // '일정 수정' 다이얼로그 초기 옵션
       var opts3={
         autoOpen:false, // 초기에 나타나지 않음
         width:"1000px",
         modal:true
      }
      $("#dialog02").dialog(opts3);
      // 이벤트에 의해 기능 버튼 option 변경
      $("#regBtn3").click(function(){
          $("[name=ts_no]").val();
          $("[name=ts_title]").val("업무명");
          $("[name=ts_rate]").val(0);
          $("[name=ts_sdate]").val("");
          $("[name=ts_edate]").val("");
          $("[name=ts_ereal]").val("");
          $("[name=endDateT]").val("");        
          $("[name=mem_no]").val("");
         opts3.buttons={
            "확인":function(){
               alert("수정합니다.");
               console.log("# ajax 처리 #");
             // console.log($("form").serialize());
            }
         }
         $("#dialog02").dialog(opts3); // 등록 버튼 추가
         $("#dialog02").dialog("open"); // 기본 창 로드
      });     
      
      
     //캘린더 처리 - input을 datepicker로 선언
       $("#datepicker").datepicker({
           dateFormat: "yy-mm-dd" //Input Display Format 변경
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
            ,changeYear: true //콤보박스에서 년 선택 가능
            ,changeMonth: true //콤보박스에서 월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
        });                    
        
        //초기값을 오늘 날짜로 설정
        $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
  
         //input을 datepicker로 선언
        $("#startDate").datepicker();  
        $("#endDate").datepicker();  
      
        //Form의 초기값을 오늘 날짜로 설정
        $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
   });
   
</script>

</head>
<body>
   <!-- Start Header Top Area -->
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="logo-area">
                        <a href="dashboard.jsp"><img src="${path}/a00_com/gant/img/logo/SSIT.png" style='width:100px;' /></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                        <div class="name">PM 홍길동 님</div>
                        <div style='float:right; font-size:12px;'>
                        <button id="regBtn" class="btn btn-info notika-btn-info" type="button" style='font-size:10px;'>+</button>
                        <button class="btn btn-primary notika-btn-primary" style='font-size:10px;'>로그아웃</button>
                       </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Top Area -->
    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro" style='width : 100%,'>
    		        <li class="active" style='width : 14%'><a data-toggle="tab" onclick="location.href='ganttpage.jsp'" style=''><i class="feather" data-feather="bar-chart"></i> 일정 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='template_risk.jsp'"><i class="feather" data-feather="briefcase"></i> 리스크 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='A1_List.jsp'"><i class="feather" data-feather="alert-triangle"></i> 내 업무 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" data-toggle="tab" onclick="location.href='template_member.jsp'"><i class="feather" data-feather="list"></i> 사원 리스트</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='A1_calendar.jsp'" ><i class="feather" data-feather="calendar"></i> 캘린더</a>
                        </li>              
                    </ul>
                    </div>
                    <!--  style='margin:auto'-->
                </div>
            </div>
        </div>
    <!-- Main Menu area End-->
    <!-- 여기에 본문 넣으시면 됩니다. -->
    
<!--'새 프로젝트 생성' 다이얼로그 -->    
<div class="container">
   <div id="dialog01" title="새 프로젝트 생성">
      <form>
         <table class="table table-hover table-striped">
            <tbody>
               <tr class="text-center">
                  <th>프로젝트명</th><td><input type="text" name="pr_title" class="form-control" style='width:100%;'/></td>
               </tr>
               <tr class="text-center">
                  <th>시작일자</th><td><input  type="text"  name="pr_sdate" class="date" id="startDate" style='width:100%;'></td>
               </tr>
               <tr class="text-center">
                  <th>종료일자</th><td><input  type="text" name="pr_edate" class="date" id="endDate" style='width:100%;'></td>
               </tr>   
               <tr class="text-center">
                  <th>상태</th>
                  <td>
                  <input name="pr_state" type="radio"  value="진행전" checked="checked">진행 전
               <input name="pr_state" type="radio"  value="진행중" >진행 중
              <input name="pr_state" type="radio"  value="완료">완료
              </td>
               </tr>                
               <tr class="text-center">
                  <th>담당자명</th>
                  <td><select name="mem_no" style='width:100%;'>
                   <option value="" selected>담당자</option>
                   <option value="">홍과장</option>
                   <option value="">남대리</option>
                   <option value="">신사원</option>
                   <option value="">나차장</option>
                 </select>  
              </td>
               </tr>                                    
            </tbody>
         </table> 
      </form>   
   </div>
</div>

<!-- '업무 등록' 다이얼로그  -->
<div class="container">
   <div id="dialog02" title="업무 수정">
      <form>
         <table class="table table-hover table-striped">
         <col width="12%"><col width="25%"><col width="10%"><col width="15%"><col width="15%"><col width="13%"><col width="10%">
            <tbody>
            <tr><th>업무 번호</th><th>업무명</th><th>진척도(%)</th><th>업무 시작 날짜</th><th>업무 종료 날짜</th><th>실제 종료 날짜</th><th>담당자</th></tr>
            <c:forEach var="cnt" begin="1" end="14">
               <tr>
                  <td><input type="text" name="ts_no" class="form-control" value="${cnt}"/></td>
                  <td><input type="text" name="ts_title" class="form-control"></td>
                  <td><input type="text" name="ts_rate" class="form-control" value="0"/></td>
                  <td><input type="date" id="ts_sdate" type="text" name="startDate"></td>
                  <td><input type="date" id="ts_ereal" type="text" name="endtDate"></td>
                  <td><input type="date" id="ts_edate" type="text" name="endtDate"></td>
                  <td><select name="mem_no">
                   <option value="" selected>담당자</option>
                   <option value="">홍과장</option>
                   <option value="">남대리</option>
                   <option value="">신사원</option>
                   <option value="">나차장</option>
                 </select>  
              </td>
               </tr>
             </c:forEach>                           
            </tbody>
         </table> 
      </form>   
   </div>
</div>

<!-- 간트차트 -->
    <div style='margin:auto; width:1600px;'>
     <span  style=" font-size:2.5em; font-weight: bold;">미니홈피 구현 프로젝트 </span> 
     <button id="regBtn4" class="btn btn-primary notika-btn-primary" type="button">프로젝트 수정</button>   
     <button id="regBtn2" class="btn btn-info notika-btn-info" type="button">일정 등록</button>   
     <button id="regBtn3" class="btn btn-info notika-btn-info" type="button">일정 수정</button><br>    
     <span  style=" font-size:1.5em;">2021.03.22~2021.04.29</span>
     
      <div style="overflow: auto;">
         <div id="gc-gantt"></div>
         <div id="cg-date"></div>
     </div>
     </div>
 <script>
 var resources = [
     {id: 1, resource: "홍과장"},
     {id: 2, resource: "남과장"},
     {id: 3, resource: "신사원"},
     {id: 4, resource: "나차장"}
  ];
  var jsonData = [{
        "id": 1,
        "description": "분석 설계",
        "start": "2021-03-22",
        "end": "2021-03-28",
        "calculatePercent": true,
        "color": "#004d00",
        "tasks": [
           {
              "id": 2,
             "description": "요구사항 정의서",
             "start": "2021-03-22",
             "end": "2021-03-25",
             "resources": [1],
             "percent": 40
           },
           {
             "id": 3,
             "description": "일정계획",
             "start": "2021-03-23",
             "end": "2021-03-26",
             "resources": [1],
             "percent": 60
           },
           {
             "id": 4,
             "description": "application설계",
             "start": "2021-03-24",
             "end": "2021-03-26",
             "resources": [1],
             "percent": 20
           },
           {
             "id": 5,
             "description": "화면설계",
             "start": "2021-03-26",
             "end": "2021-03-28",
             "resources": [1],
             "percent": 50
           }
        ]
     },
     {
        "id": 6,
        "description": "front end 개발",
        "start": "2021-03-29",
        "end": "2021-04-11",
        "calculatePercent": true,
        "color": "#004d00",
        "tasks": [
           {
              "id": 7,
             "description": "DB 설계",
             "start": "2021-03-29",
             "end": "2021-04-07",
             "resources": [2],
             "percent": 50
           },
           {
             "id": 8,
             "description": "front end단 구현",
             "start": "2021-03-29",
             "end": "2021-04-11",
             "resources": [2],
             "percent": 50
           },
           {
             "id": 9,
             "description": "공통모듈 구현",
             "start": "2021-03-29",
             "end": "2021-04-09",
             "resources": [2],
             "percent": 50
           }
        ]
     },
     {
        "id": 10,
        "description": "back end 개발",
        "start": "2021-04-12",
        "end": "2021-04-25",
        "calculatePercent": true,
        "color": "#004d00",
        "tasks": [
           {
              "id": 11,
             "description": "스프링 데이터베이스 연동",
             "start": "2021-04-12",
             "end": "2021-04-25",
             "resources": [3],
             "percent": 50
           }
        ]
     },
     {
        "id": 12,
        "description": "통합 test 및 배포",
        "start": "2021-04-26",
        "end": "2021-04-29",
        "calculatePercent": true,
        "color": "#004d00",
        "tasks": [
           {
              "id": 13,
             "description": "통합 test",
             "start": "2021-04-26",
             "end": "2021-04-28",
             "resources": [4],
             "percent": 50
           },
           {
              "id": 14,
             "description": "배포",
             "start": "2021-04-28",
             "end": "2021-04-29",
             "resources": [4],
             "percent": 40
           },
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
         gcGantt.onTaskNameClick = function (id, group) {
     		if(confirm("문서를 작성하시겠습니까??")){
    			location.href="A1_form.jsp"
    		}
          };
 
      </script>
</body>
   <script>
      feather.replace()
    </script>
</html>