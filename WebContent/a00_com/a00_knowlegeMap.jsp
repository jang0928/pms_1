<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.z01_vo.*"%>
<% request.setCharacterEncoding("UTF-8");
   String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
   href="<%=path%>/a00_com/a00_com.css">
</head>
<style>

</style>
<script>
   window.onload=function(){
      
   };
</script>
</head>
<%--
#jsp의 시작과 끝

0.	서버와 클라이언트 개념에 의한 클라이언트단 프로그램과 구분
	클라이언트(브라우저) --(페이지와 request)--> 서버(WAS)
				   <-----(response)-----

1.	기초
	1)	java 프로그래밍
		- 변수
		- 조건/반복
		- 객체
		- 예외
	2)	jsp 페이지의 구성
		- 상단 directive 선언
		- script(declare, script, expression)
		
2.	jsp에서 사용되는 객체
	1)	요청값 처리 형식
		url 형식
		form 형식 : input(text, checkbox, radio), select
		단일 / 다중 데이터 처리와 form 하위 요소 객체들과 연관관계 
	2)	request, response, out, session
		
3.	jsp 객체별 범위(sessions scope)
	1)	pageContext
	2)	request
	3)	session
	4)	application

4.	모듈 분리 처리
	1) include 액션 태그, directive include
	2) forward 태그

5.	예외처리

6.	기타 java stream 처리
	
7.	서버와 클라이언트 데이터 처리
	1)	cookie
	2)	session
	
8.	jsp에서 사용하는 순수 jsp 언어 - tag(jsp에서 사용되는 태그)
	1)	사용자 정의 태그
	2)	<jsp : useBean>
	3)	jstl(jsp standard tag language)
	4)	el(explession language)
	
9.	database 연동
	1)	연동 모듈 만들기(DAO - database acces Object)
	2)	VO(Value Object), DTO(data transfer Object)
	3)	DAO와 VO, DTO를 통해 처리된 내용
	4)	el/jstl을 통해 화면에 출력
	
10.	MVC(Model View Controller) - model2 패턴으로 웹개발
	1)	servlet(Controller)
	2)	데이터액세스 및 핵심 데이터 처리(model)
	3)	화면단 출력 처리(view - jsp화면)

===========================================================
11.	spring framework 활용
 --%>
<body>
   <h3>제목</h3>
   <table>
      <tr><th>타이틀</th></tr>
      <tr><td>내용</td></tr>
   </table>
</body>
</html>