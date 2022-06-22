<%@page import="cs.dit.LoginDto" %>
<%@page import="cs.dit.LoginDao" %>
<%@page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>DB 연결</title>
</head>
<body>
	<table class="table table-striped">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>pwd</th>
		</tr>
	<c:forEach var="dto" items="${requestScope.dtos}">
		 <tr>
			<td><a href="updateForm.jsp?id=${dto.id}">${dto.id}</a></td>
			<td>${dto.name}</td>
			<td>${dto.pwd}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>