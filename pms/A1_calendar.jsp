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
<link href='${path}/a00_com/lib/main.css' rel='stylesheet' />
<link href='https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.css' rel='stylesheet' />
<link href='https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.13.1/css/all.css' rel='stylesheet'>
<script src='${path}/a00_com/lib/main.js'></script>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
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


    
    
    
    
    
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- Notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/notika-custom-icon.css">

    
    
    
    <link rel="stylesheet" href="${path}/a00_com/gant/css/wave/button.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/main.css">
    <!-- style CSS
		============================================ -->
  
  
  
    <link rel="stylesheet" href="${path}/a00_com/gant/style.css">
    <!-- responsive CSS
		============================================ -->
    <script src="${path}/a00_com/gant/js/vendor/modernizr-2.8.3.min.js"></script>

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

body {
   padding: 0;
   font-family: 'Nanum Gothic Coding', monospace;
   font-size: 14px;
}

#calendar {
   max-width: 1100px;
   margin: 0 auto;
}

input[type=text], select, label, textarea{
   margin-bottom:12px;
   padding:.4em;
   width:95%;
}

.input-group-text{
   width:100%;
   text-align:center;
   background-color:linen;
   color:black;
   font-weight:bolder;
}

.input-group-prepend{
   width:35%;
}



</style>
<script type="text/javascript">   


	// 전역변수로 날짜 데이터 가져오기 위해 선언.
	var date = {};
	
	
   // document.addEventListener("DOMContentLoaded")
   // 전체 DOM에 로딩되었을 때, JQuery $(document).ready(); 와 동일
   document.addEventListener('DOMContentLoaded', function() {
      var opts={
         autoOpen:false, // 초기에 로딩하지 않게 처리
         width: "350px",
         modal:true // 입력 시 그 외의 화면은 비활성화
      };
      $("#schDialog").dialog(opts);
      var calendarEl = document.getElementById('calendar');
      // new FullCalendar.Calendar(대상 DOM객체, {속성:속성값, 속성2:속성값2...}
//      alert(new Date().toISOString());
      var calendar = new FullCalendar.Calendar(calendarEl, {
         headerToolbar : {
            left : 'prevYear prev today next nextYear',
            center : 'title',
            right : 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
         },
         themeSystem: 'bootstrap',
         initialDate : new Date().toISOString(), // 초기 로딩 날짜(현재 날짜)
         navLinks : true, // can click day/week names to navigate views
         selectable : true,
         selectMirror : true,
         // 이벤트명:function(){}: 각 날짜에 대한 이벤트를 통해 처리할 내용
         select : function(arg) {
        	 // 등록시, 기존 내용 로딩을 방지 처리, 초기화 처리.
        	 $("#schDialog>form")[0].reset();
        	// 화면에 보이는 형식 설정.
        	// 클릭한 날자를 전역변수에 할당/시작일과 마지막을 date형식으로 할당
        	date.start=arg.start;
        	date.end=arg.end;
            opts.buttons={
                  "등록":function(){ 
                	  //alert("등록 처리합니다!!");
                	  var sch = callSch(); // 리턴값이 입력된 객체데이터
                	  console.log("## 등록할 데이터 ##");
                	  console.log(sch);
                	  // 화면에 출력
                	  if(sch.title){
                		  // 화면에 할당할 데이터 ??
                		  calendar.addEvent(sch);
                		  calendar.unselect();
                	  }

                	  // ajax처리. (DB 등록)
                	  $.ajax({
                		  type:"post",
                          url:"${path}/calendar.do?method=insert",
                          dataType:"json",
                		  data:sch, // 요청값을 json객체로 전달 가능
                		  success:function(data){
                			  // data.모델명
                			  if(data.success=="Y"){
                				  alert("등록 성공");
                			  }
                		  },
                		  error:function(err){
                			  console.log(err);
                		  }
                	  });
                	  $("#schDialog").dialog("close");
                  }
            };
            // 등록 버튼을 클릭시. 옵션을 다시 처리.
            $("#schDialog").dialog(opts);
            // $("#btn01").click(); // 부트스트랩 호출?? 
            $("#schDialog").dialog("open");
            // arg륿 받은 기본 속성값으로 특정한 form요소객체의 값을 설정해준다.
            // 날짜/시간을 클릭하거나 드래그한 날짜 시간으로, Data()객체. toLocalstrig() : 서울 기준으로 날짜 출력 형식 처리...(GMMt)
            
   //alert("시작일 : "+arg.start.toISOString());
            console.log("# 매개변수 arg의 속성 #");
            console.log(arg); // console을 통해서 해당 속성 확인
            $("#schDialog").dialog("open");
            //$("#btn01").click();
            //화면에 보이는 형식 설정
            //클릭한 날짜를 전역변수에 할당/시작일과 마지막을 date 형식으로 할당
            /*
            date.start=arg.start;
            date.end=arg.end;
            */            
            
            
            
            $("[name=start]").val(arg.start.toLocaleString());
            $("[name=end]").val(arg.end.toLocaleString());
            // boolean값인데 문자열로 표기해야 하기에 ""로 처리.
            $("[name=allDay]").val(""+arg.allDay);
            $("#schDialog").dialog(opts);
            $("#schDialog").dialog("open");
         },
         eventDrop:function(arg){
        	//alert("이벤트 드랍");
        	//console.log("### 이벤트 드랍 ###");
        	//console.log(arg.event);
        	 eventUpt(arg.event);
         },
         eventResize:function(arg){
        	 //alert("이벤트 날짜 크기 수정");
        	 //console.log("### 이벤트 날짜 크기 수정 ###");
        	 //console.log(arg.event);
        	 eventUpt(arg.event);
         },
         eventClick : function(arg) {
            // 있는 일정을 클릭 시, 상세 화면 보이기(등록되어 있는 데이터 출력)
            // ajax를 통해서 데이터 삭제
         	date.start=arg.event.start;
        	date.end=arg.event.end; 
        	/* 각 form에 값 추가 */
        	// 1. 화면 로딩
            detail(arg.event);
			// 2. 기능별 버튼에 대한 처리
            opts.buttons={
            	"수정":function(){
            		// 수정 후, json데이터 가져오기
            		// 화면에 form 하위에 있는 요소 객체의 값을 가져오는 부분
            		var sch = callSch();
            		console.log("#수정할 값#");
            		console.log(sch);
            		// 1. 화면단 처리 변경
            		// 현재 캘린더 api의 속성 변경하기
            		var event = calendar.getEventById(sch.id);
            		// 속성값 변경 setProp
            		event.setProp("title",sch.title);
            		event.setProp("textColor",sch.textColor);
            		event.setProp("backgroundColor",sch.backgroundColor);
            		event.setProp("borderColor",sch.borderColor);
            		// 화장 속성 : 		writer [입력]
            		// 화장 속성 : 		content [입력]
					event.setExtendedProp("writer", sch.writer);
					event.setExtendedProp("content", sch.content);
					event.setAllDay(sch.allDay);
					/* 2. DB 변경 */
					updateCall(sch);
					$("#schDialog").dialog("close");
            	},
            	"삭제":function(){
            		var idVal = $("[name=id]").val();
            		// 화면에서 삭제 처리
            		var event = calendar.getEventById(idVal);
            		event.remove();
            		// DB 삭제 처리
                    $.ajax({
                        type:"post",
                        url:"${path}/calendar.do?method=delete",
                        data:{id:idVal},
                        dataType:"json",
                        success:function(data){
             			   if(data.success=="Y"){
            				   alert("삭제완료");
            			   }
            		   },
            		   error:function(err){
            			   alert("에러발생:"+err);
            			   console.log(err);
            		   }
                     });
                    $("#schDialog").dialog("close");  
            	}
            }
            $("#schDialog").dialog(opts);
            $("#schDialog").dialog("open");
            /*
            if (confirm('일정을 삭제하시겠습니까?')) {
               arg.event.remove()
            }
            */
         },
         editable : true,
         dayMaxEvents : true, // allow "more" link when too many events
         events :function(info, successCallback, failureCallback){
            // ajax처리로 데이터를 로딩 시킨다.
            // 화면에 나타날 일정들을 ajax를 통해서 호출하고,
            // success 함수를 통해서 서버에서 받은 데이터를 가져오고,
            // successCallback이라는 매개변수를 받는 함수에 일정 내용을 전달하면 전체 화면에서 일징이 반영된다.
            $.ajax({
               type:"get",
               url:"${path}/calendar.do?method=data",
               dataType:"json",
               success:function(data){
                  console.log(data.list);
                  successCallback(data.list);
               },
               error:function(err){
                  console.log(err);
               }
            });
         }
      });

      calendar.render();
   });
   function callSch(){
	   var sch={};
	   sch.id=$("[name=id]").val();
	   sch.title=$("[name=title]").val();
	   sch.writer=$("[name=writer]").val();
	   sch.content=$("[name=content]").val();
	   // Date타입은 화면에서 사용되는 형식으로 설정하여야 한다.
	   // 저너역변수에 할당한 date.start//date.end의 ISO형태로 속성 할당.
	   sch.start=date.start.toISOString();
	   sch.end=date.end.toISOString();
	   //alert("등록할 시작일:"+sch.start);
	   // sch.allDay : calendar로 처리할 데이터 boolean형식으로 true/false
	   // 으로 처리되어야 하는데, 화면에 보이는 내용 문자열로 되어 있다.
	   // option value="true"이 선택되어 졌을 때는 == 비교연산을 통해서
	   // true로 boolean값을 넘기고, 그외는 false을 boolean값으로 전달.
	   sch.allDay=$("[name=allDay]").val()=="true";
	   // 문자열이 "true"일 때, 그 외는 false
	   sch.textColor=$("[name=textColor]").val();
	   sch.backgroundColor=$("[name=backgroundColor]").val(); // 배경색상
	   sch.borderColor=$("[name=borderColor]").val();
	   return sch;
   }
   function detail(event){
	   // event안에 기본 속성값이 초기에 데이터 로딩시, 가지고 있음.
	   // form 하위 객체에 할당
	   $("[name=id]").val(event.id);
	   $("[name=title]").val(event.title);
	   // calendar에서 추가된 속성들
	   var exProps = event.extendedProps;
	   $("[name=writer]").val(exProps.writer);
	   $("[name=content]").val(exProps.content);
	   $("[name=start]").val(event.start.toLocaleString());
	   $("[name=end]").val(event.end.toLocaleString());
	   $("[name=allDay]").val(""+event.allDay);
	   $("[name=textColor]").val(event.textColor);
	   $("[name=backgroundColor]").val(event.backgroundColor);
	   $("[name=borderColor]").val(event.borderColor);
   }
   // 수정 처리 ajax
   function updateCall(sch){
	   // callSch() 입력된 수정된 데이터를 요청값으로 전달.
	   $.ajax({
		   type:"post",
		   url:"calendar.do?method=update",
		   data:sch,
		   dataType:"json",
		   success:function(data){
			   if(data.success=="Y"){
				   console.log("성공");
				   alert("수정완료");
			   }else{
				   console.log("실패");
			   }
		   },
		   error:function(err){
			   alert("에러발생:"+err);
			   console.log(err);
		   }
	   });
   }
   function eventUpt(event){
	      var sch={}; 
	      sch.id=event.id;
	      sch.title=event.title;  
	      sch.start=event.start.toISOString();  
	      sch.end=event.end.toISOString();  
	      sch.content=event.extendedProps.content;
	      sch.textColor=event.textColor; 
	      sch.backgroundColor=event.backgroundColor;
	      sch.borderColor=event.borderColor;
	      sch.allDay=event.allDay;
	      console.log("#이벤트에 의한 수정#");
	      console.log(sch);
	      updateCall(sch);
}
</script>
</head>
<body>
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
                        <button class="btn btn-info notika-btn-info" style='font-size:10px;'>+</button>
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
    				  <li  style='width : 14%'><a data-toggle="tab" onclick="location.href='ganttpage.jsp'" style=''><i class="feather" data-feather="bar-chart"></i> 일정 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='template_risk.jsp'"><i class="feather" data-feather="briefcase"></i> 리스크 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" onclick="location.href='A1_List.jsp'"><i class="feather" data-feather="alert-triangle"></i> 내 업무 관리</a>
                        </li>
                        <li style='width : 14%'><a data-toggle="tab" data-toggle="tab" onclick="location.href='template_member.jsp'"><i class="feather" data-feather="list"></i> 사원 리스트</a>
                        </li>
                        <li class="active" style='width : 14%'><a data-toggle="tab" onclick="location.href='A1_calendar.jsp'" ><i class="feather" data-feather="calendar"></i> 캘린더</a>
                        </li>               
                    </ul>
                    </div>
                    <!--  style='margin:auto'-->
                </div>
            </div>
        </div>
    <!-- Main Menu area End-->
    <!-- 여기에 본문 넣으시면 됩니다. -->
	<!-- Breadcomb area Start-->
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="breadcomb-list">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="breadcomb-wp">
									<div class="breadcomb-icon">
										<i class="notika-icon notika-bar-chart"></i>
									</div>
									<div class="breadcomb-ctn">
										<h2>캘린더</h2>
									</div>
								</div>
							</div>
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcomb area End-->
	

                       
                       				<div id='calendar'></div>
										  <div id="schDialog" title="일정"> 
										      <form id="frm">
										         <input name="id" type="hidden" value="0"/>
										      <div class="input-group mb-3">
										            <div class="input-group-prepend">
										         <span class="input-group-text">제목</span>
										      </div>
										      <input class="form-control" name="title" type="text"/>
										      </div>
										      <div class="input-group mb-3">
										         <div class="input-group-prepend">
										            <span class="input-group-text">작성자</span>
										         </div>
										         <input class="form-control" name="writer" type="text"/>
										      </div>
										      <div class="input-group mb-3">
										         <div class="input-group-prepend">
										            <span class="input-group-text">내용</span>
										         </div>
										         <textarea rows="5" class="form-control" cols="20" name="content"></textarea>
										      </div>
										      <div class="input-group mb-3">
										         <div class="input-group-prepend">
										            <span class="input-group-text">종일여부</span>
										         </div>
										         <select name="allDay" class="form-control">
										            <option value="true">종일</option>
										            <option value="false">시간</option>
										         </select>
										      </div>
										      <div class="input-group mb-3">
										         <div class="input-group-prepend">
										            <span class="input-group-text">시작일</span>
										         </div>
										         <input class="form-control" name="start" type="text"/>
										      </div>
										      <div class="input-group mb-3">
										         <div class="input-group-prepend">
										            <span class="input-group-text">종료일</span>
										         </div>
										         <input class="form-control" name="end" type="text"/>
										      </div>
										      <div class="input-group mb-3">
										         <div class="input-group-prepend">
										            <span class="input-group-text">배경 색상</span>
										         </div>
										         <input class="form-control" name="backgroundColor" type="color" value="#0099cc"/>
										      </div>  
										      <div class="input-group mb-3">
										         <div class="input-group-prepend">
										            <span class="input-group-text">보드 색상</span>
										         </div>
										         <input class="form-control" name="borderColor" type="color" value="#0099cc"/>  
										      </div>      
										      <div class="input-group mb-3">
										         <div class="input-group-prepend">         
										            <span class="input-group-text">글자 색상</span>
										         </div>
										         <input class="form-control" name="textColor" type="color" value="#ccffff"/>  
										      </div>                  
										 </form>
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