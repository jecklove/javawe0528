<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		application.setAttribute("name", "老方");
		session.setAttribute("name","老方");
		request.setAttribute("name", "老方");
		pageContext.setAttribute("name", "老方");
	
	%>
	
		<p>application：<%= application.getAttribute("name") %></p>
		<p>session：<%= session.getAttribute("name") %></p>
		<p>request：<%= request.getAttribute("name") %></p>
		<p>pageContext：<%= pageContext.getAttribute("name") %></p>
</body>
</html>