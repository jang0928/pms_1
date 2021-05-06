<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chatting</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style type="text/css">
   .input-group-text{
      width:100%;
      background-color:linen;
      color:black;
      font-weight:bolder;
   }
   .input-group-prepend{width:20%;}
   #chatArea{
      width:100%;
      height:380px;
      overflow-y:auto;
      text-align:left;
      background-color:#b6d1d4
   }
   
   .chat_wrap .header { 
         font-size: 16px; 
         padding: 18px 0; 
         background: #434343; 
         color: white;
         text-align: center; 
          }
   *{
   font-family: 'Noto Sans KR', sans-serif;
   }

</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
     // $("h2").text("채팅");
      
      // 1. 전역변수 웹소켓통신을 처리할 변수 선언
      var wsocket;
      // 2. 접속 시 처리 내용
      $("#enterBtn").click(function(){
         if(confirm("채팅서버에 접속하겠습니까?")){
            wsocket = new WebSocket("ws://localhost:7080/${path}/chat-ws.do");
            //1. 접속시
            wsocket.onopen=function(evt){
               // 채팅서버에 접속됐을 때 처리할 내용
               console.log(evt);
               //접속 메세지 전송 : 그룹명 : 아이디명 : 메세지
               //
               wsocket.send($("#group").val()+":"+$("#id").val()+": 님이 접속하셨습니다.");
            }
            //2. 서버에서 메세지 받기
            wsocket.onmessage=function(evt){
               
               var data = evt.data; //메세지를 받음
               var user = data.split(":")
               if(user[0]==$("#group").val()){
                  //그룹명이 같을 때만 메세지만 전달 처리
                  revMsg(user[1]+":"+user[2]);
               }
            }
            
              
            
            
            //3. 서버에 종료 처리
            wsocket.onclose=function(evt){
               alert("접속을 종료합니다!");
               $("#chatMessageArea").text("");
               $("#id").val("").focus();
            }
         }
      });
      // .send()는 서버의 handTExtMessage와 연동(handler에 있는거)
      $("#sendBtn").click(function(){
         sendMsg();
      });
      $("#msg").keyup(function(e){
         if(e.keyCode==13){
            sendMsg();
         }
      });
      
      $("#exitBtn").click(function(){
         wsocket.send($("#group").val()+":"+$("#id").val()+":연결 종료합니다.");
         wsocket.close();
      });
      
      function sendMsg(){
          var id = $("#id").val();
          var msg = $("#msg").val();
          wsocket.send($("#group").val() + ":" + id + ": " + msg);
          $("#msg").val("");
       }
      

      function revMsg(msg){
         $("#chatMessageArea").append(msg+"<br>");
         //자동 스크롤링처리..(메세지 내용)
         var mx = parseInt($("#chatMessageArea").height());
         $("#chatArea").scrollTop(mx);
      } 
      

      
   });
</script>
</head>
<body>
<div class="chat_wrap">
    <div class="header">
        SSIT CHAT
   </div>
</div><br><br>

<div class="container">
   <div class="input-group mb-3">
      <span>부서</span>&nbsp;<input id="group" class="form-control" value="${log.deptno}" size=10 />&nbsp;
      <span>이름</span>&nbsp;<input id="id" class="form-control" value="${log.mem_name}"/>&nbsp;
      <input type="button" class="btn btn-info" value="채팅입장" id="enterBtn" />&nbsp;
      <input type="button" class="btn btn-success" value="EXIT" id="exitBtn"/>
      
   </div>
   
   <div class="input-group mb-3">
      <%-- # chatArea --%>
      <div id="chatArea" class="input-group-append" >
         <div id="chatMessageArea"></div>
      </div>
   </div>   
   
   <div class="input-group mb-3">
      <textarea  cols="30" id="msg" class="form-control" placeholder="보낼 메시지를 입력하세요"></textarea>
      <input type="button" class="btn btn-info" value="SEND" id="sendBtn"/>
   </div>    
</div>
</body>
</html>