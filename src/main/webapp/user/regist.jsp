<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
	 	position:absolute;
    	left:30%;
   		top:100px;
		margin: auto;
	    width: 300px;
	    border: 25px solid green;
	    padding: 25px;
	    margin: 25px;
	}
</style>
</head>
<body>
	<%
		User user = (User)request.getAttribute("user");
	
	%>

	<div >
	<h2>注册页面</h2>
	<form action="registHandler.jsp" method="post">
	<p>邮箱：<input type="email" name="email" value="<%= user == null ? "" : user.getEmail() %>"/> </p>
	<p>用户名：<input type="text" name="username" value="<%= user == null ? "" : user.getUsername() %>"/></p>
	<p>密码：<input type="password" name="password" value="<%= user == null ? "" : user.getPassword() %>"/></p>
	<p><input type="submit" value="注册"/></p>
	<p style="color:red;"><%=request.getAttribute("message") == null ? "" : request.getAttribute("message") %> </p>
	
	<p><a href="login.jsp">已有账号？马上登录</a></p>
	</form>
	</div>
</body>
</html>