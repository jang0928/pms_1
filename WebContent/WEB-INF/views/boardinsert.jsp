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

.view-mail-list {
width:66%;
margin-right:210px;
margin-left:288px;
}
</style>
<script type="text/javascript">
<%--
 
 
--%>
//
   $(document).ready(function(){
       
      
      $("#insBtn").click(function(){
         if($("[name=b_content]").val() == ""){
            alert("????????? ???????????????.")
            $("[name=b_content]").focus();
            return false;
         }
         
         if(confirm("?????????????????????????")){
            $("[name=procs]").val("ins");
            $("form").attr("action", "${path}/board.do?method=insert");
            $("form").submit();
         }
      });
      
      
       $("#goList").click(function(){
          if(confirm("?????????????????? ?????????????????????????")){
             $("form").attr("action", "${path}/board.do?method=list");
             $("form").submit()
               
            }
         
      });

         
         var procs = "${param.procs}";
         if(procs=="ins"){
            if(confirm("?????????????????????!\n?????????????????? ?????????????????????????")){
               $(location).attr("href","${path}/board.do?method=list");
               
            }
         }
         
         
         
         
         
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
    <!-- Main Menu area End-->
    <!-- ????????? ?????? ???????????? ?????????. -->
   <!-- Breadcomb area Start-->
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <div class="breadcomb-list">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="breadcomb-wp">
                           <div class="breadcomb-icon">
                              <i class="feather" data-feather="briefcase"></i>
                           </div>
                           <div class="breadcomb-ctn">
                              <h2>??? ???????????? ??????</h2>
                           </div>
                        </div>
                     </div>
                  
                  </div>
               </div>
            </div>
         </div>
      </div>
   <!-- Breadcomb area End-->
    <div class="data-table-area">
    <div class="container">
    
    <form:form modelAttribute="board" action="${path}/board.do?method=insert"
       enctype="multipart/form-data"
       method="post">
        <input type="hidden" name="procs"/>
  
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="basic-tb-hd">
                        <input type="hidden" name="pr_no" value="${param.pr_no}"/> 
                               <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 14px; text-align:center;">????????????</span>
                                    </div>
                                </div>
                                <div class="col-lg-11 col-md-10 col-sm-10 col-xs-12">
                                    <div class="form-group">
                                        <div class="nk-int-st cmp-int-in cmp-email-over">
                                            <input class="form-control" name="ts_title" value="${ts.ts_title}" readonly/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-1 col-md-2 col-sm-2 col-xs-12">
                                    <div class="cmp-int-lb cmp-int-lb1 text-right">
                                        <span style = "background-color : lightgray; font-weight : bolder; font-size : 14px; text-align:center;">?????????</span>
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
                                               <textarea class = "form-control" rows="10" cols="145" name = "b_content"
                                                           placeholder="??????"></textarea>
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                    </form:form>   
                    </div>
                    </div>
                    
<!-- Start Footer area-->
    <div class="footer-copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="footer-copy-right">
                        <p>Copyright ?? 2018 
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