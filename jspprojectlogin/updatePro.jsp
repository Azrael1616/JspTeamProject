<%@ page import = "cs.dit.LoginDao" %>
<%@ page import = "cs.dit.LoginDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
 	request.setCharacterEncoding("UTF-8");
	
		String id = "";
		String pwd = "";
		String nickname = "";
		
		id = request.getParameter("id");
		nickname = request.getParameter("nickname");
		pwd = request.getParameter("pwd");
		
		LoginDto dto = new LoginDto(id,nickname,pwd);
		new LoginDao().update(dto);
		
	%>
<script type="text/javascript">
	let ans = alert("변경했습니다.");
	if(!ans){
		location.href='list.jsp';
	}	
</script>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
</body>
</html>