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
		   // ????????? ??????
		   if($("[name = risk_title]").val() == ""){
				alert("????????? ???????????????.")
				$("[name = risk_title]").focus();
				return false;
			}
		   
		   /*
		   if($("[name = ts_title]").val() == ""){
				alert("???????????? ???????????????.")
				$("[name = ts_title]").focus();
				return false;
			}
		   
		   if($("[name = pr_no]").val() == ""){
				alert("?????????????????? ???????????????.")
				$("[name = pr_no]").focus();
				return false;
			}
		   
		   if($("[name = risk_list]").val() == ""){
				alert("????????? ????????? ???????????????.")
				$("[name = risk_list]").focus();
				return false;
			}
		   */
		   
		   if($("[name = risk_content]").val() == ""){
				alert("????????? ???????????????.")
				$("[name = risk_content]").focus();
				return false;
			}
		   
		   var param2 = $("#gogo option:selected").attr('value2'); 
	/* 	   var ts_title=$("span[name=gogo]").val() */
		   var pr_no=$("[name = pr_no]").val()
		

		    if(param2 != pr_no){
				alert("???????????? ????????????.")
				return false;
			}
		    
			if(confirm("?????????????????????????")){
				$("[name=procs]").val("ins");
				$("form").attr("action", "${path}/riskInsert.do");
				$("form").submit()
				
				;}
			
		
	});
	 $("#goList").click(function(){
		 if(confirm("?????????????????? ?????????????????????????")){
			 $("form").attr("action", "${path}/risklist.do");
			 $("form").submit()
				
			}
		
	}); 
	var procs="${param.procs}";
	if(procs=="ins"){
		if(confirm("?????????????????????!\n?????????????????? ?????????????????????????")){
			$(location).attr("href","${path}/risklist.do");
			
		}
	}
/* 	var proc="${proc}";
	if(proc=="insert"){
		//?????? ?????? ??? ???????????? ????????? 
		$("[name=refno]").val("0");
		$("[name=subject]").val("");
		$("[name=content]").val("");
		if(!confirm("?????? ??????!!\n ?????? ?????? ??????????????????")){
			location.href="${path}/board.do?method=list";
		}
	} */
	$("#addFun").click(function(){
		// .clone()??? ???????????? DOM????????? ???????????? ????????? ??? ?????? ??????.
		$("#fileArea").append($(".custom-file").eq(0).clone());
	});
	
	   
	
	   

});
	function rm(obj){
	// ?????? ?????? validate check(?????????) file????????? ?????? ????????????
	// ?????? ???, ??????????????? ??????.
	var len=$("[type=file]").length;
	if(len>1){
		// $(obj).parent() : <div class="custom-file">??? ??????
		// ?????? custom-file??? ?????????, ????????? ?????? file ????????? ??????
		// ????????????.
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
                              <h2>?????? ?????? ??????</h2>
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
                                <h2>????????? ??????</h2><br><br><br>
                                
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
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 11px;">???????????????</span>
                                    </div>
                                </div>
                                 <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <form:input path="pr_title" class="form-control" placeholder="???????????????" />
                                        </div>
                                    </div>
                                </div> --%>
                            </div>
                            
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">??????</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input name="risk_title" class="form-control" placeholder="??????" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">?????????</span>
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
                                    <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">?????????</span></div>
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
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 10.5px;">????????? ??????</span>
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
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">?????????</span>
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
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">??????</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <div class="view-mail-atn">
                                            	<textarea class = "form-control" rows="10" cols="145" name = "risk_content"
                                            					placeholder="??????"></textarea>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
						<%--
							rm(this) : rm????????? ??????????????? ????????? span????????? ????????? ??????????????? object??? ??????.
							??????????????? ?????? DOM(parent) <div class = "custom-file>??? ????????? ??????.
						 --%>
						</div>			
                     <!--        <div class="row">
                            <tr>
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;" >?????? ??????</span>
                                        <span class="badge badge-info" id="addFun">[??????]</span>
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
					<th class="table-secondary">????????????
						<span class="badge badge-danger" id="addFun">[??????]</span>
					</th>
					<td id="fileArea" class="table-active">
						<div class="custom-file">
						<%--
							rm(this) : rm????????? ??????????????? ????????? span????????? ????????? ??????????????? object??? ??????.
							??????????????? ?????? DOM(parent) <div class = "custom-file>??? ????????? ??????.
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
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 12px;">????????????</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                        <br>
                                            <form:select class="selectpicker" path = "risk_sol">
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
											</form:select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            --%>
                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                              <button class="btn btn-default btn-sm waves-effect" id = "insBtn" ><i class="notika-icon notika-down-arrow"></i> ??????</button>
				                 <button class="btn btn-default btn-sm waves-effect" id = "goList" ><i class="notika-icon notika-right-arrow" ></i> ???????????? </button>
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