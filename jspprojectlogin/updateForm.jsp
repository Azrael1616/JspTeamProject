<%@ page import = "cs.dit.LoginDao" %>
<%@ page import = "cs.dit.LoginDto" %>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");

	LoginDto dto = new LoginDto();
	LoginDao dao = new LoginDao();
	
	dto = dao.selectone(id);
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보변경</title>
</head>
	
<body>
	<h2 align= "center">회원정보 변경</h2>
	<form name="login" action="updatePro.jsp" method="post">
		<table>
			<tr>
					<td width="200px"><label id="id"></label>아이디</td>
					<td><input type="text" name="id" value="id"></td>
			</tr>
		</table>
	
	
	
			아이디 : <input type="text" name="id" value="<%=dto.getId() %>"><br>
			닉네임 : <input type="text" name ="nickname" value="<%=dto.getNickname() %>"><br>
			암호 : <input type="password" name ="pwd" value="<%=dto.getPwd() %>"><br>
		<button type="submit">변경</button>
		<button type="button" onclick="location.href='deletePro.jsp?id=<%=dto.getId() %>'">삭제</button>
	</form>
</body>
</html>