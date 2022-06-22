<%@page import="java.util.LinkedList"%>
<%/*================================================================
       파일명 :
       변경이력 : 
       프로그램 내용 : 
   =================================================================*/%>
<%@ page import="cs.dit.LoginDto" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	LoginDto dto = new LoginDto("gildong","홍길동","9999");
	pageContext.setAttribute("dto", dto);
	
	Cookie mycookie = new Cookie("name", "chunhyang");
	response.addCookie(mycookie);
	
	String list[] = {"moon","sun","jupiter","mars","venus","mercury"};
	pageContext.setAttribute("list", list);
	
	LinkedList<String> namelist = new LinkedList<String>();
	namelist.add("홍길동");
	namelist.add("임꺽정");
	namelist.add("일지매");
	pageContext.setAttribute("namelist", namelist);
	
	String value = request.getParameter("v");
	Cookie cookie = new Cookie("v",value);
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 실습</title>
</head>
<body>
	cookie : ${cookie.name.value}
	<hr>
	문자열 : ${"EL을 공부합시다."} <br>
	연산자 : ${100 + 23} <br>
	연산자 : ${100 > 23} <br>
	empty 연산자 : ${empty param.id} <br>
	삼항 연산 : ${empty param.id ? "비어있습니다." : param.id }
	
	<hr>
	
	id : ${pageScope.dto.id } <br>
	name : ${dto.name } <br>
	pwd : ${dto.pwd } <br>
	<hr>
	serverName : ${pageContext.request.serverName } <br>
	requestURI : ${pageContext.request.requestURI } <br>
	<hr>
	
</body>
</html>