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
	if(user==null){
		 user = (User)session.getAttribute("user");
	}
		
	%>
	<div >
	<h2>登录界面</h2>
	<form action="loginHandler.jsp" method="post">
	<p><input type="hidden" name="email" value="<%= user == null ? "" : user.getEmail()%>"/> </p>
	<p>用户名：<input type="text" name="username" value="<%= user == null ? "" : user.getUsername()%>"/></p>
	<p>密码：<input type="password" name="password" value="<%= user == null ? "" : user.getPassword() %>"/></p>
	<p><input type="submit" value="登录"/></p>
	<p><a href="regist.jsp">没有账号？马上注册</a></p>
	<%
		String message = (String)session.getAttribute("message");
		session.removeAttribute("message");
	%>
	<p style="color:red;"><%= message == null ? "" : message %> </p>
	</form>
	</div>
</body>
</html>