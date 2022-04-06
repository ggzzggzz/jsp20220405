<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%!
private int gugudan(int dan, int i) {
	return dan * i;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- dan 요청 파라미터 값에 따라 구구단 출력되도록 작성 -->
<!-- http://localhost:8080/jsp20220405/chap03/05request/ex04.jsp?dan=2 -->
<!-- 2단 출력 -->

<!-- http://localhost:8080/jsp20220405/chap03/05request/ex04.jsp?dan=5 -->
<!-- 5단 출력 -->
<%
String dan = request.getParameter("dan");

if (dan != null) {
%>
	<h1><%= dan %> 단 </h1>
<%
	for(int i = 1; i <= 9; i++) {
%>
		<%= dan + " X " + i + " = " + gugudan(Integer.parseInt(dan), i) %>
		<br>
<% 
	}
} else {
%>
	<h1>단 번호를 입력해주세요</h1>	
<%
} %> 
</body>
</html>