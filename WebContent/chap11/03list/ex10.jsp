<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
<%
// 코드 작성
Car c1 = new Car("a", 100);
Car c2 = new Car("b", 200);

List<String> o = new ArrayList<>();
o.add("cha");
o.add("son");

c1.setOwners(o);
c2.setOwners(o);

pageContext.setAttribute("aCar", c1);
pageContext.setAttribute("bCar", c2);
%>

<p>${aCar.owners[1] }</p> <%-- son --%>
<p>${bCar.owners[0] }</p> <%-- cha --%>
</body>
</html>