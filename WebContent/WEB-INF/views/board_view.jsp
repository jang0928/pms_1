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

body{
	font-family: 'Nanum Gothic Coding', monospace;
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

.view-mail-list {
width:134.5%;
margin-right:93px;
margin-left:2px;
}
input{
 border:0;
}
</style>
<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){	
	   var auth = '${log.auth}';
      $("#goList").on("click",function(){ 
    		  $("form").attr("action","${path}/board.do?method=list");
      });
      
      
      $(".custom-file-input").on("change",function(){
          $(this).next(".custom-file-label").text($(this).val());
       })
       
       
      $("#uptBtn").click(function(){
		  if(confirm("수정하시겠습니까?")){
	     $("[name=proc]").val("upt");
 		 $("form").attr("action","${path}/board.do?method=boardUpdate");
 		 $("form").submit();
		  }
      });
      
      var proc = "${param.proc}";
		 if(proc=="upt"){
			if(confirm("수정이되었습니다. \n 조회화면으로 이동하시겠습니까?")){
				$(location).attr("href","${path}/board.do?method=list");
			}
				
		 }
		 
		
	      
	      // [ 삭제 ] 버튼 눌렀을 때
	      $("#delBtn").click(function(){
	         if(confirm("삭제하시겠습니까?")){
	            $("[name = proc]").val("del");
	            
	            $("form").attr("action", "${path}/board.do?method=delete");
	            
	            $("form").submit();
	         }
	      });
	      
	      
			// 삭제 처리
			if(proc == "del"){ 
				alert("삭제되었습니다!\n조회화면으로 이동합니다.")
				$(location).attr("href", "${path}/board.do?method=list");
			}
			
			
	      
	     	$("[name=fnames]").click(function(){
	    		var fname = $(this).val();
	    		if(confirm(fname+"파일을 다운로드 하시겠습니까?")){
	    			location.href="${path}/board.do?method=boardDownload&fname="+fname;
	    		}
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
    <!-- End Header Top Area -->
    <!-- Main Menu area start-->
    <!-- Main Menu area End-->
    <!-- 여기에 본문 넣으시면 됩니다. -->
	<!-- Breadcomb area Start-->
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
										<h2>결재 서류 상세</h2>
									</div>
								</div>
							</div>
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcomb area End
	
	private  int board_no;
	private String mem_name;
	private String ts_title;
	private Date b_indate;
	private String b_content;
	private String b_state;
	private Date pr_sdate;
	private Date pr_edate;
	private int pr_no;
	private Date uptdte;
	private String fname;
	private String pr_title;	
	
	-->
    <div class="data-table-area">
        <div class="container">
                    	<form method="post" enctype="multipart/form-data">
				<input type="hidden" name="proc"/>
				<input type="hidden" name="board_no" value="${board.board_no}"/> 
				
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                                <h2>프로젝트명(${board.pr_title})</h2> 
                                 <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="header-top-menu">
                            </div>
                           
                        </div>
                        </div>
                       <div class="table-responsive">
                            <p class="first-ph"><b>보고자: </b><input name="mem_name" value="${board.mem_name }" readonly/></p>
                 
                            <p class="last-ph"><b>보고날짜:</b> <input  readonly
													value="<fmt:formatDate
													value='${board.b_indate }' pattern="yyyy-MM-dd" />"/></p>
                         <!--
                         <td style='text-align:center;'><fmt:formatDate 
                         value="${plist.pr_date}" pattern="yyyy-MM-dd"/></td>
                         
                         <input name="mem_name" value="${board.mem_name }" readonly/>
                         
                         				 <input  readonly
													value="<fmt:formatDate type='both' 
													value='${board.b_indate }' />"/> -->
                         </div>
     
                        <div class="mail-ads mail-vw-ph">
                              <p class="last-ph"><b>내용</b></p>
                                 <div class = "input-group mb-3">
                             <textarea class = "form-control" name = "b_content"
                                      rows = "10" placeholder = "내용을 입력하세요.">${board.b_content}</textarea>
                          </div>
                        </div>  
	
	 				<%--<c:if test="${log.auth eq '매니저'||log.auth eq 'pm' }"> --%> 
	 				<c:choose>
	 				<c:when test="${log.auth =='pm' }">
                       <div class="mail-ads mail-vw-ph">
                            <p class="first-ph"><b>결재상태</b>
									<c:choose>
                                       <c:when test="${board.b_state == '검토중' }">
                                          <input type="radio" name="b_state" value="검토중" checked><label>검토중</label>
                                       </c:when>   
                                       <c:otherwise>
                                          <input type="radio" name="b_state" value="검토중"><label>검토중</label>
                                       </c:otherwise>
                                       </c:choose>
                                       <c:choose>
                                       <c:when test="${board.b_state == '결재 승인' }">
                                          <input type="radio" name="b_state" value="결재 승인" checked><label>결재 승인</label>
                                       </c:when>   
                                       <c:otherwise>
                                          <input type="radio" name="b_state" value="결재 승인"><label>결재 승인</label>
                                       </c:otherwise>
                                       </c:choose>
                                       <c:choose>
                                       <c:when test="${board.b_state == '결재 반려' }">
                                          <input type="radio" name="b_state" value="결재 반려" checked><label>결재 반려</label>
                                       </c:when>   
                                       <c:otherwise>
                                          <input type="radio" name="b_state" value="결재 반려"><label>결재 반려</label>
                                       </c:otherwise>
                                     </c:choose>
							</p>
                        </div>
                     </c:when>
                     <c:otherwise>
                     <div class="mail-ads mail-vw-ph">
                            <p class="first-ph"><b>결재상태</b>
							<input type="text" name="b_state" value="${board.b_state }" readonly/>
							</p>
                        </div>
                     </c:otherwise>   
                   </c:choose>
                    <c:set var="fcnt" value="${board.fileInfo.size()}"/>
					<c:forEach var="finf" items="${board.fileInfo}" varStatus="sts">
					<div class="input-group">
					<div class="input-group-prepend">
					<span> <i class="notika-icon notika-paperclip"></i> 첨부파일(${sts.count}/${fcnt})</span>
						<input class="form-control fileInfo" name="fnames" value="${finf.fname}" readonly/>
				<br>
					<!-- 다운로드할 파일 정보 -->
				<div class="custom-file">
					<!-- 변경할 파일 정보(report ==> vo의 property) -->
					
					 <input type="file" name="report" 
        				  class="custom-file-input" id="file01" >
        			 <label class="custom-file-label"  style='font-size:10px; text-align: center;'  for="file01">변경할 파일을 선택하세용</label>
					</div>
				</div>
				</div>
				</c:forEach>  
			
                   
                     
<%--
                       <c:set var="fcnt" value="${board.fileInfo.size()}"/>
					<c:forEach var="finf" items="${board.fileInfo}" varStatus="sts">
					<div class="input-group">
					<div class="input-group-prepend">
					<span> <i class="notika-icon notika-paperclip"></i> 첨부파일(${sts.count}/${fcnt})</span>
						<input class="form-control fileInfo" name="fnames" value="${finf.fname}" readonly/>
				</div>
				<br>
					<!-- 다운로드할 파일 정보 -->
				<div class="custom-file">
					<!-- 변경할 파일 정보(report ==> vo의 property) -->
					
					 <input type="file" name="report" 
        				  class="custom-file-input" id="file01" >
        				  <br>
        			 <label class="btn btn-danger"  style='font-size:10px; text-align: center;'  for="file01">+</label>
					</div>
				</div>
				</c:forEach>  
 --%>
                         
     

                        <div class="vw-ml-action-ls text-right mg-t-20">
                            <div class="btn-group ib-btn-gp active-hook nk-email-inbox">
                            <c:if test="${board.b_state != '결재 승인'}">
                                <button class="btn btn-default btn-sm waves-effect" id="uptBtn"><i class="notika-icon notika-next"></i> 수정</button>
                                <button class="btn btn-default btn-sm waves-effect" id="delBtn"><i class="notika-icon notika-trash"></i> 삭제</button>
                            </c:if>   
                               <button class="btn btn-default btn-sm waves-effect" id = "goList"><i class="notika-icon notika-right-arrow"></i> 목록으로 </button>     
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
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
	<script>
      feather.replace()
    </script>
</body>

</html>