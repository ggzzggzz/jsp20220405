<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<title>Insert title here</title>
</head>
<body>


	<h1>새 직원 등록</h1>
	
	<c:if test="${not empty param.success }">
		<c:if test="${param.success }">
			<p class="text-success">입력 성공</p>
		</c:if>
		
		<c:if test="${not param.success }">
			<p class="text-danger">입력 실패</p>
		</c:if>
	</c:if>
	
	
	<form method="post">
		Last Name : <input type="text" name="lastName" /> <br />
		First Name : <input type="text" name="firstName" /> <br />
		Birth Date : <input type="date" name="birthDate" /> <br />
		Picture : <input type="text" name="pic" value="pic01" /> <br />
		Notes : <textarea name="notes"></textarea> <br />
		<input type="submit" value="등록" />
	</form>
</body>
</html>