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
	   // [ 목록으로 ] 버튼 눌렀을 때
	   $("#goList").click(function(){
		   if(confirm("목록으로 이동하시겠습니까?")){
		   $("form").attr("action", "${path}/risklist.do");}
	   });
	   
	   
	   
       $(".custom-file-input").on("change",function(){
           $(this).next(".custom-file-label").text($(this).val());
        })
	   
	   // [ 수정 ] 버튼 눌렀을 때
	/*    $("#uptBtn").click(function(){
		   var mem_name = $("[name = mem_name]")
	   }); */
       
   	$("[name=fnames]").click(function(){
		var fname = $(this).val();
		if(confirm(fname+"파일을 다운로드 하시겠습니까?")){
			location.href="${path}/riskDownload.do?fname="+fname;
		}
	});
   	
    // 수정 처리
	   
	   // [ 수정 ] 버튼 눌렀을 때
	   $("#uptBtn").click(function(){
		   // 유효성 체크
		   if($("[name = risk_title]").val() == ""){
				alert("제목을 입력하세요.")
				$("[name = risk_title]").focus();
				return false;
			}
		   
		   if($("[name = risk_content]").val() == ""){
				alert("내용을 입력하세요.")
				$("[name = risk_content]").focus();
				return false;
			}
		   
		   if($("[name = risk_sol]").val() == ""){
				alert("해결방안을 선택하세요.")
				$("[name = risk_sol]").focus();
				return false;
			}
		   
		   if($("[name = risk_state]").val() == ""){
				alert("처리 상태를 선택하세요.")
				$("[name = risk_state]").focus();
				return false;
			}
		   
		   if(confirm("수정하시겠습니까?")){
			   $("[name = proc]").val("upt");
			   
			   $("form").attr("action", "${path}/riskUpdate.do");
			   
			   $("form").submit();
		   }
	   });
	   
	   
	   var proc = "${param.proc}";
	   if(proc == "upt"){
		   if(confirm("수정되었습니다!\n목록으로 이동하시겠습니까?")){
			   var risk_no = "${param.risk_no}";
			/*    $(location).attr("href", "${path}/riskDetail.do?risk_no="+risk_no); */
			   $(location).attr("href", "${path}/risklist.do"); 
		   }
	   }
	   
	   // 삭제 처리
	   // [ 삭제 ] 버튼 눌렀을 때
	   $("#delBtn").on("click",function(){
		   if(confirm("삭제 하시겠습니까 ?")){
			   $("[name = proc]").val("del");
			   
			   $("form").attr("action", "${path}/riskDelete.do");
			   
			   $("form").submit();
			   }
		   
	   });
	   if(proc == "del"){   // 삭제
		   alert("삭제되었습니다!")
			   $(location).attr("href", "${path}/risklist.do");
		   }
	   
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
	                <i class="feather" data-feather="alert-triangle"></i>
	                    <div class="breadcomb-ctn">     
                                <h2>리스크 상세 ( ${risk.risk_no} )</h2><br><br><br>
                          </div>
                          </div>
                        
                            </div>
                        </div>
                    <form method="post"  enctype="multipart/form-data">
                        <div class="mail-ads mail-vw-ph">
                         <input type = "hidden" name = "proc" /> 
                           <input type = "hidden" name = "risk_no" value = "${risk.risk_no}" />
                        	<p class="first-ph"><b>제목 : </b><input name = "risk_title" value = "${risk.risk_title}" class="form-control"/></p>
                            <p><b>프로젝트명 : </b><input name = "pr_title" value = "${risk.pr_title}" readonly class="form-control"/></p>
                            <p><b>개발명 : </b><input name = "ts_title" value = "${risk.ts_title}" readonly class="form-control" /></p>
                            <p><b>리스크 항목 : </b><input name = "risk_list" value = "${risk.risk_list}" readonly class="form-control" /></p>
                            <p><b>작성자 : </b><input name = "mem_name" value = "${risk.mem_name}" readonly class="form-control"/></p>
                        </div>
           
                        
                        <div class="mail-ads mail-vw-ph">
                       		 <p class="last-ph"><b>내용 </b></p>
                              	<div class = "input-group mb-3">
     								<textarea class = "form-control" name = "risk_content"
     											rows = "10" placeholder = "내용을 입력하세요.">${risk.risk_content}</textarea>
     							</div>
                        </div>        
                           <c:if test="${log.auth eq 'pm' }"> 
                        <div class="mail-ads mail-vw-ph">
                            <p class="first-ph"><b>해결방안 : </b>
                        <select class="selectpicker" name = "risk_sol">
                        	<option value = "">해결방안을 선택하세요.</option>
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
                        </select>
                            </p>   
                        </div>     
                        <div class="mail-ads mail-vw-ph">
                            <p class="first-ph"><b>처리 상태</b>
                      <!--   <select class="selectpicker" name = "risk_state">
                                    <option value = "조치전">조치전</option>
									<option value = "조치중">조치중</option>
									<option value = "조치완료">조치완료</option>
                        </select> -->
                        
                          	 	 <select name ="risk_state" class="form-control mr-sm-2">
							 	 	<option value="">처리 선택</option>
							 	 	<c:forEach var="state" items="${state }">
							 	 	<option>${state }</option>
							 	 	</c:forEach>
							 	</select>
 	
                     		</p>
                          
                        </div>
             -         </c:if> 
                        
                      <div class="mail-ads mail-vw-ph">
                   
                            <p><b>등록 날짜 : </b> <b class="form-control"><fmt:formatDate value="${risk.risk_indate}" pattern="yyyy-MM-dd hh:mm" /></b>
                            	<b>수정 날짜 : </b><b class="form-control"><fmt:formatDate value="${risk.risk_findate}" pattern="yyyy-MM-dd hh:mm"/></b></p>
                        </div>

          	      <c:set var="fcnt" value="${risk.fileInfo.size()}"/>
					<c:forEach var="finf" items="${risk.fileInfo}" varStatus="sts">
					<div class="input-group">
					<div class="input-group-prepend">
					<span> <i class="notika-icon notika-paperclip"></i> 첨부파일(${sts.count}/${fcnt})</span>
					<!-- 다운로드할 파일 정보 -->
						<input class="form-control fileInfo" name="fnames" value="${finf.fname}" readonly/> 
				<br>
				<div class="custom-file">
					<!-- 변경할 파일 정보(report ==> vo의 property) -->
					 <input type="file" name="report" 
        				  class="custom-file-input" id="file01" >
        		  <label class="custom-file-label"  style='font-size:10px; text-align: center;' for="file01">변경파일을 선택하세요 </label>
				</div>
					</div>
				</div>
				
				</c:forEach> 
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                            <c:if test="${risk.risk_state != '조치완료'}">
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