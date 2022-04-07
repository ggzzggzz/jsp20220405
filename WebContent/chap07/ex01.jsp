<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>

<%-- include directive --%>
<%-- file 속성으로 이 위치에 포함될 파일을 경로를 작성 --%>
<%-- 다른 파일의 내용을 현재 위치에 삽입(복붙)후 java로 변환 --%>
<%@ include file="module/header01.jsp" %>

<!-- div>(h1>lorem1^p>lorem)*3 -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorem esse fugiat eum quo porro reiciendis a libero ipsa ipsam magni adipisci laborum rem vel tempore consectetur minima est ex laudantium.</p>
	<h1>Quia.</h1>
	<p>Minima vero illum enim quaerat voluptate modi nobis quas quo ipsam provident eaque quasi similique soluta id praesentium molestiae inventore a dicta voluptas laboriosam placeat nihil perspiciatis cum saepe ea.</p>
	<h1>Fuga.</h1>
	<p>Repudiandae voluptatibus ea rem dicta doloribus delectus rerum vero quaerat quisquam consequatur enim quos voluptatum sed fugiat atque sunt quam. Hic deserunt voluptatem velit blanditiis quisquam officiis veritatis vero aperiam!</p>
</div>

</body>
</html>