<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script type="text/javascript">
<%--
 
--%>
//
   $(document).ready(function(){
      $("h2").text("메일발송");
      var subject = "${param.subject}";
      if(subject!=""){
         alert("메일 발송 성공!")
      }
      
   });
</script>
</head>
<body>
<div class="jumbotron text-center">
  <h2>메일 발송</h2>
</div>
<div class="container">
   <form method="post" action="${path}/send.do">
   <div class="input-group mb-3">
      <div class="input-group-prepend">
         <span class="input-group-text">제 목</span>
      </div>
      <input name="subject" class="form-control" placeholder="제목을 입력하세요."/>
   </div>
   <div class="input-group mb-3">
      <div class="input-group-prepend">
         <span class="input-group-text">수신자</span>
      </div>
      <input name="receiver" class="form-control" placeholder="${mail.email }"   value="${mail.email }"/>
   </div>
   <div class="input-group mb-3">
      <div class="input-group-prepend">
         <span class="input-group-text">내 용</span>
      </div>
      <textarea name="content" rows="10" class="form-control" placeholder="내용을 입력하세요."> 
      ${mail.mem_name } 님 안녕하세요!!
      아이디는 ${mail.mem_no }  비밀번호는 ${mail.mem_pass } 입니다..
      </textarea>
   </div>
   <div style="text-align:right;">
      <input type="submit" class="btn btn-success" value="메일전송"/>
   </div>
   </form>  
</div>
</body>
</html>