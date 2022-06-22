<%/*================================================================
       파일명 :
       변경이력 : 
       프로그램 내용 : 
   =================================================================*/%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>JSTL 실습</title>
	</head>
	<body>
		<c:set var="id" value="gildong"></c:set>
		<c:set var="income" value="2000000"></c:set>
		<c:out value="${id}"/> 의 수업은 <c:out value="${income}"/> 입니다. <br>
		<c:out value="${id } 의  수입은 ${income } 입니다."/> <br>
		
		<c:if test="${income >= 4000}" var="a">
			<c:out value="수입은 ${income}이 넘습니다."></c:out>
			${a}
		</c:if> <br>
		<c:set var="score" value="${param.score}"/>
		<c:if test="${empty score}">
			<c:out value="매개변수가 없습니다."></c:out>
		</c:if>
		<c:if test="${!empty score}">
			<c:out value="${score}"></c:out>
		</c:if>
		${!empty param.score ? param.score : "비어 있습니다."} <br>
		<c:set var="loginid" value="gildong"/>
		<c:set var="name" value="홍길동"/>
		<br>
		<c:forEach var="i" begin="0" end="5">
			${i} <br>
		</c:forEach>
		<%
			String list[] = {"red","orange","yellow","green"};
			pageContext.setAttribute("list", list);
		%>
		<c:forEach var="a" items="${list}">
			${a} <br>
		</c:forEach>
	</body>
</html>