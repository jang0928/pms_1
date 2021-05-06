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
<title>RISK INSERT</title>
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
    <!-- dropzone CSS
		============================================ -->
    <link rel="stylesheet" href="${path}/a00_com/gant/css/dropzone/dropzone.css">


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
	
	   $("#insBtn").click(function(){
		   // 유효성 체크
		   if($("[name = risk_title]").val() == ""){
				alert("제목을 입력하세요.")
				$("[name = risk_title]").focus();
				return false;
			}
		   
		   /*
		   if($("[name = ts_title]").val() == ""){
				alert("개발명을 선택하세요.")
				$("[name = ts_title]").focus();
				return false;
			}
		   
		   if($("[name = pr_no]").val() == ""){
				alert("프로젝트명을 선택하세요.")
				$("[name = pr_no]").focus();
				return false;
			}
		   
		   if($("[name = risk_list]").val() == ""){
				alert("리스크 항목을 선택하세요.")
				$("[name = risk_list]").focus();
				return false;
			}
		   */
		   
		   if($("[name = risk_content]").val() == ""){
				alert("내용을 입력하세요.")
				$("[name = risk_content]").focus();
				return false;
			}
		   
		   var param2 = $("#gogo option:selected").attr('value2'); 
	/* 	   var ts_title=$("span[name=gogo]").val() */
		   var pr_no=$("[name = pr_no]").val()
		

		    if(param2 != pr_no){
				alert("프로젝트 맞추세요.")
				return false;
			}
		    
			if(confirm("등록하시겠습니까?")){
				$("[name=procs]").val("ins");
				$("form").attr("action", "${path}/riskInsert.do");
				$("form").submit()
				
				;}
			
		
	});
	 $("#goList").click(function(){
		 if(confirm("조회화면으로 이동하시겠습니까?")){
			 $("form").attr("action", "${path}/risklist.do");
			 $("form").submit()
				
			}
		
	}); 
	var procs="${param.procs}";
	if(procs=="ins"){
		if(confirm("등록되었습니다!\n조회화면으로 이동하시겠습니까?")){
			$(location).attr("href","${path}/risklist.do");
			
		}
	}
/* 	var proc="${proc}";
	if(proc=="insert"){
		//답글 처리 후 모델값을 초기하 
		$("[name=refno]").val("0");
		$("[name=subject]").val("");
		$("[name=content]").val("");
		if(!confirm("등록 완료!!\n 계속 등록 하시겠습니까")){
			location.href="${path}/board.do?method=list";
		}
	} */
	$("#addFun").click(function(){
		// .clone()을 복사해서 DOM객체가 추가하여 생성할 수 있게 한다.
		$("#fileArea").append($(".custom-file").eq(0).clone());
	});
	
	   
	
	   

});
	function rm(obj){
	// 삭제 전에 validate check(유효성) file객체가 한개 초과하여
	// 있을 때, 가능하도록 설정.
	var len=$("[type=file]").length;
	if(len>1){
		// $(obj).parent() : <div class="custom-file">를 삭제
		// 상위 custom-file을 삭제시, 하위에 현재 file 객체도 함께
		// 삭제된다.
		$(obj).parent().remove();
	}
} 
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
        <%--
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
                              <h2>결재 서류 작성</h2>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
        --%>
        <form method="post"
     		 enctype="multipart/form-data">
     		<%-- <form:hidden path="risk_no"/>
     		<form:hidden path="risk_refno"/> --%>
     		 <input type="hidden" name="procs"/>
        		<div class="container">
                    <div class="view-mail-list sm-res-mg-t-30">
                        <div class="view-mail-hd">
                            <div class="view-mail-hrd">
                                <h2>리스크 등록</h2><br><br><br>
                                
                            <%--       <c:forEach var="i" begin="0" end="1">
										
										<c:if test=" ${ts_title.get(i).getPr_title()}== ${pr_title.get(i).getPr_title()}">
											heloo
										
                                  ${ts_title.get(i).getPr_title()}
                                    ${pr_title.get(1).getPr_title()}
										</c:if>



                                  </c:forEach> --%>
                                 
                                <br>
                            </div>
                        </div>
                         <div class="view-mail-atn">
                        <div class="cmp-int mg-t-20">
                            <div class="row">
                              <%--  <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 11px;">프로젝트명</span>
                                    </div>
                                </div>
                                 <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <form:input path="pr_title" class="form-control" placeholder="프로젝트명" />
                                        </div>
                                    </div>
                                </div> --%>
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">제목</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input name="risk_title" class="form-control" placeholder="제목" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">개발명</span>
                                    </div>
                                </div>
                                
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">

                                        	   <select name="ts_title" id="gogo"  class="custom-select">
                                         	<c:forEach var="ts" items="${ts_title }">
                                         		<option value="${ts.ts_title}" value2 ="${ts.pr_no }" }>${ts.ts_title}  (${ts.pr_title})</option>
                                       	  </c:forEach>
                                         </select></p> 
                          		  </div> 
                          				  <%--  <select name="gogo" class="custom-select">
                                         	<c:forEach var="ts" items="${ts_title }">
                                         		<option  value="${ts.pr_no}"></option>
                                       	  </c:forEach>
                                         </select></p>  --%>
                          				<%--   <c:forEach var="ts" items="${ts_title }">
                                         		<input type="hidden" name="gogo" value="${ts.pr_no} ">
                                         		 </c:forEach> --%>
                                        </div>
                                    </div>
                                  
                                         <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                            <div class="cmp-int-lb cmp-int-lb1 text-right">
                                    <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">플젝명</span></div>
                                    </div>
                                    
                                     <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                        	   <select name="pr_no" class="custom-select">
                                         	<c:forEach var="pr" items="${pr_title }">
                                         		<option value="${pr.pr_no}">${pr.pr_title} </option>
                                       	  </c:forEach>
                                       	  
                                         </select></p> 
                          		  </div> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 10.5px;">리스크 항목</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                        <br>
                                            <select class="custom-select" name = "risk_list">
												<option value = "Event">Event</option>
												<option value = "Probability">Probability</option>
												<option value = "Impact">Impact</option>
											</select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">작성자</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input name="mem_name" class="form-control"  value="${log.mem_name }" readonly/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">내용</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <div class="view-mail-atn">
                                            	<textarea class = "form-control" rows="10" cols="145" name = "risk_content"
                                            					placeholder="내용"></textarea>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
						<%--
							rm(this) : rm함수를 호출하면서 클릭한 span객체를 함수의 매개변수로 object로 전송.
							계층구조로 상위 DOM(parent) <div class = "custom-file>를 가지고 있다.
						 --%>
						</div>			
                     <!--        <div class="row">
                            <tr>
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;" >첨부 파일</span>
                                        <span class="badge badge-info" id="addFun">[추가]</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                           				 <td id="fileArea">
                                            <span onclick="rm(this)" class="form-control">X </span>
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input type="file" class="form-control" name="report" />
                                            </td>
                                            </tr>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
						<table class="table table-hover table-striped">
                            <tr class="text-left">
					<th class="table-secondary">첨부파일
						<span class="badge badge-danger" id="addFun">[추가]</span>
					</th>
					<td id="fileArea" class="table-active">
						<div class="custom-file">
						<%--
							rm(this) : rm함수를 호출하면서 클릭한 span객체를 함수의 매개변수로 object로 전송.
							계층구조로 상위 DOM(parent) <div class = "custom-file>를 가지고 있다.
						 --%>
							<div onclick="rm(this)" class="badge badge-danger"> [X] </div>
							<input name="report" type="file"/><br>
						</div>					
					</td>
				</tr>
				</table>
                        
                            <%--
                        <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">해결방안</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                        <br>
                                            <form:select class="selectpicker" path = "risk_sol">
												<optgroup label = "긍정적인 리스크일 경우">
													<option value = "활용(Exploit)">활용(Exploit)</option>
													<option value = "공유(Share)">공유(Share)</option>
													<option value = "증대(Enhance)">증대(Enhance)</option>
													<option value = "수용(Acceptance)">수용(Acceptance)</option>
												</optgroup>
												<optgroup label = "부정적인 리스크일 경우">
													<option value = "회피(Avoidance)">회피(Avoidance)</option>
													<option value = "전가(Transfer)">전가(Transfer)</option>
													<option value = "완화(Mitigation)">완화(Mitigation)</option>
													<option value = "수용(Acceptance)">수용(Acceptance)</option>
												</optgroup>
											</form:select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            --%>
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                              <button class="btn btn-default btn-sm waves-effect" id = "insBtn" ><i class="notika-icon notika-down-arrow"></i> 등록</button>
				                 <button class="btn btn-default btn-sm waves-effect" id = "goList" ><i class="notika-icon notika-right-arrow" ></i> 목록으로 </button>
                            </div>
                        </div>
                    </div>
                        </div>
                        </div>
                 </div>
        
               </form>  
                 
        
        
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
	<script>
      feather.replace()
    </script>
</body>
</html>