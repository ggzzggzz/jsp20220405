<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	double op1 = Double.parseDouble(request.getParameter("operand1"));
	double op2 = Double.parseDouble(request.getParameter("operand2"));
	String operator = request.getParameter("operator");
	
	switch(operator) {
	case "+" :
%>
		<h1><%= op1 + op2 %></h1>
<%
		break;
	case "-" :
%>
		<h1><%= op1 - op2 %></h1>
<%
		break;
	case "X" :
%>
		<h1><%= op1 * op2 %></h1>
<%
		break;
	case "/" :
%>
		<h1><%= op1 / op2 %></h1>
<%
		break;
	case "sum" :
		int a = (int) op1;
		int b = (int) op2;
		
		int sum = 0;
		for (int i = a; i <= b; i++) {
			sum += i;
		}
		
%>
		<h1><%= op1 %>~<%= op2 %><%= sum %></h1>
<%
		break;
	}
%>
</body>
</html>