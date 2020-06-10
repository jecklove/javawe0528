<%@page import="org.apache.commons.beanutils.BeanUtils"%>
<%@page import="com.entity.User"%>
<%@page import="java.util.Map"%>
<%@page import="com.service.UserService"%>
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
		User user = new User();
		BeanUtils.populate(user, request.getParameterMap());
		UserService userService = new UserService();
		int result = userService.regist(user);
		
		if(result==1){
			
			session.setAttribute("user", user);
			response.sendRedirect("login.jsp");
			
		}else{
			request.setAttribute("message", "注册失败，请重新注册！");
			request.getRequestDispatcher("regist.jsp").forward(request, response);
		}
		
	%>
</body>
</html>