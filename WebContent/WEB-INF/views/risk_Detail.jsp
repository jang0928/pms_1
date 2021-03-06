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
	   // [ ???????????? ] ?????? ????????? ???
	   $("#goList").click(function(){
		   if(confirm("???????????? ?????????????????????????")){
		   $("form").attr("action", "${path}/risklist.do");}
	   });
	   
	   
	   
       $(".custom-file-input").on("change",function(){
           $(this).next(".custom-file-label").text($(this).val());
        })
	   
	   // [ ?????? ] ?????? ????????? ???
	/*    $("#uptBtn").click(function(){
		   var mem_name = $("[name = mem_name]")
	   }); */
       
   	$("[name=fnames]").click(function(){
		var fname = $(this).val();
		if(confirm(fname+"????????? ???????????? ???????????????????")){
			location.href="${path}/riskDownload.do?fname="+fname;
		}
	});
   	
    // ?????? ??????
	   
	   // [ ?????? ] ?????? ????????? ???
	   $("#uptBtn").click(function(){
		   // ????????? ??????
		   if($("[name = risk_title]").val() == ""){
				alert("????????? ???????????????.")
				$("[name = risk_title]").focus();
				return false;
			}
		   
		   if($("[name = risk_content]").val() == ""){
				alert("????????? ???????????????.")
				$("[name = risk_content]").focus();
				return false;
			}
		   
		   if($("[name = risk_sol]").val() == ""){
				alert("??????????????? ???????????????.")
				$("[name = risk_sol]").focus();
				return false;
			}
		   
		   if($("[name = risk_state]").val() == ""){
				alert("?????? ????????? ???????????????.")
				$("[name = risk_state]").focus();
				return false;
			}
		   
		   if(confirm("?????????????????????????")){
			   $("[name = proc]").val("upt");
			   
			   $("form").attr("action", "${path}/riskUpdate.do");
			   
			   $("form").submit();
		   }
	   });
	   
	   
	   var proc = "${param.proc}";
	   if(proc == "upt"){
		   if(confirm("?????????????????????!\n???????????? ?????????????????????????")){
			   var risk_no = "${param.risk_no}";
			/*    $(location).attr("href", "${path}/riskDetail.do?risk_no="+risk_no); */
			   $(location).attr("href", "${path}/risklist.do"); 
		   }
	   }
	   
	   // ?????? ??????
	   // [ ?????? ] ?????? ????????? ???
	   $("#delBtn").on("click",function(){
		   if(confirm("?????? ?????????????????? ?")){
			   $("[name = proc]").val("del");
			   
			   $("form").attr("action", "${path}/riskDelete.do");
			   
			   $("form").submit();
			   }
		   
	   });
	   if(proc == "del"){   // ??????
		   alert("?????????????????????!")
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
                                <h2>????????? ?????? ( ${risk.risk_no} )</h2><br><br><br>
                          </div>
                          </div>
                        
                            </div>
                        </div>
                    <form method="post"  enctype="multipart/form-data">
                        <div class="mail-ads mail-vw-ph">
                         <input type = "hidden" name = "proc" /> 
                           <input type = "hidden" name = "risk_no" value = "${risk.risk_no}" />
                        	<p class="first-ph"><b>?????? : </b><input name = "risk_title" value = "${risk.risk_title}" class="form-control"/></p>
                            <p><b>??????????????? : </b><input name = "pr_title" value = "${risk.pr_title}" readonly class="form-control"/></p>
                            <p><b>????????? : </b><input name = "ts_title" value = "${risk.ts_title}" readonly class="form-control" /></p>
                            <p><b>????????? ?????? : </b><input name = "risk_list" value = "${risk.risk_list}" readonly class="form-control" /></p>
                            <p><b>????????? : </b><input name = "mem_name" value = "${risk.mem_name}" readonly class="form-control"/></p>
                        </div>
           
                        
                        <div class="mail-ads mail-vw-ph">
                       		 <p class="last-ph"><b>?????? </b></p>
                              	<div class = "input-group mb-3">
     								<textarea class = "form-control" name = "risk_content"
     											rows = "10" placeholder = "????????? ???????????????.">${risk.risk_content}</textarea>
     							</div>
                        </div>        
                           <c:if test="${log.auth eq 'pm' }"> 
                        <div class="mail-ads mail-vw-ph">
                            <p class="first-ph"><b>???????????? : </b>
                        <select class="selectpicker" name = "risk_sol">
                        	<option value = "">??????????????? ???????????????.</option>
                        	<optgroup label = "???????????? ???????????? ??????">
									<option value = "??????(Exploit)">??????(Exploit)</option>
									<option value = "??????(Share)">??????(Share)</option>
									<option value = "??????(Enhance)">??????(Enhance)</option>
									<option value = "??????(Acceptance)">??????(Acceptance)</option>
							</optgroup>
							<optgroup label = "???????????? ???????????? ??????">
									<option value = "??????(Avoidance)">??????(Avoidance)</option>
									<option value = "??????(Transfer)">??????(Transfer)</option>
									<option value = "??????(Mitigation)">??????(Mitigation)</option>
									<option value = "??????(Acceptance)">??????(Acceptance)</option>
							</optgroup>
                        </select>
                            </p>   
                        </div>     
                        <div class="mail-ads mail-vw-ph">
                            <p class="first-ph"><b>?????? ??????</b>
                      <!--   <select class="selectpicker" name = "risk_state">
                                    <option value = "?????????">?????????</option>
									<option value = "?????????">?????????</option>
									<option value = "????????????">????????????</option>
                        </select> -->
                        
                          	 	 <select name ="risk_state" class="form-control mr-sm-2">
							 	 	<option value="">?????? ??????</option>
							 	 	<c:forEach var="state" items="${state }">
							 	 	<option>${state }</option>
							 	 	</c:forEach>
							 	</select>
 	
                     		</p>
                          
                        </div>
             -         </c:if> 
                        
                      <div class="mail-ads mail-vw-ph">
                   
                            <p><b>?????? ?????? : </b> <b class="form-control"><fmt:formatDate value="${risk.risk_indate}" pattern="yyyy-MM-dd hh:mm" /></b>
                            	<b>?????? ?????? : </b><b class="form-control"><fmt:formatDate value="${risk.risk_findate}" pattern="yyyy-MM-dd hh:mm"/></b></p>
                        </div>

          	      <c:set var="fcnt" value="${risk.fileInfo.size()}"/>
					<c:forEach var="finf" items="${risk.fileInfo}" varStatus="sts">
					<div class="input-group">
					<div class="input-group-prepend">
					<span> <i class="notika-icon notika-paperclip"></i> ????????????(${sts.count}/${fcnt})</span>
					<!-- ??????????????? ?????? ?????? -->
						<input class="form-control fileInfo" name="fnames" value="${finf.fname}" readonly/> 
				<br>
				<div class="custom-file">
					<!-- ????????? ?????? ??????(report ==> vo??? property) -->
					 <input type="file" name="report" 
        				  class="custom-file-input" id="file01" >
        		  <label class="custom-file-label"  style='font-size:10px; text-align: center;' for="file01">??????????????? ??????????????? </label>
				</div>
					</div>
				</div>
				
				</c:forEach> 
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                            <c:if test="${risk.risk_state != '????????????'}">
                                <button class="btn btn-default btn-sm waves-effect" id = "uptBtn"><i class="notika-icon notika-next" ></i> ??????</button>
                                <button class="btn btn-default btn-sm waves-effect" id = "delBtn"><i class="notika-icon notika-trash"></i> ??????</button>
                            </c:if>	
                            	<button class="btn btn-default btn-sm waves-effect" id = "goList"><i class="notika-icon notika-right-arrow"></i> ???????????? </button>
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