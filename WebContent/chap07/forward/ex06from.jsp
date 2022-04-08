<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
List<String> list = new ArrayList<>();
list.add("doctor");
list.add("hello");
list.add("hi");
request.setAttribute("job", "sunja");
request.setAttribute("names", list);
%>

<jsp:forward page="ex06to.jsp"></jsp:forward>