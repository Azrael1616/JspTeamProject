<%@ page import = "cs.dit.LoginDao" %>
<%@ page import = "cs.dit.LoginDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("mem_uid");	 	
	String nickname = request.getParameter("mem_nickname");	 	
	String pwd = request.getParameter("mem_pwd");
	String email = request.getParameter("mem_email");
	String hobby = request.getParameter("mem_hobby");
	
	LoginDto dto = new LoginDto(id,pwd,nickname,email,hobby);
	LoginDao dao = new LoginDao();
	
	dao.insert(dto);
	response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<% 

 	
 
%>
</body>
</html>