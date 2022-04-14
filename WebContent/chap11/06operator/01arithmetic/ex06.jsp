<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
	<p>${param.number1 }, ${param.number2 }</p>
	<p>더하기 : ${param.number1 + param.number2 }</p>
	<p>빼기 : ${param.number1 - param.number2 }</p>
	<p>곱하기 : ${param.number1 * param.number2 }</p>
	<p>나누기 : ${param.number1 / param.number2 }</p>
	<p>나누기 : ${param.number1 div param.number2 }</p>
	<p>나머지 : ${param.number1 % param.number2 }</p>
	<p>나머지 : ${param.number1 mod param.number2 }</p>
	
</body>
</html>