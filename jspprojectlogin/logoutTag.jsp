<%/*================================================================
       파일명 :
       변경이력 : 
       프로그램 내용 : 
   =================================================================*/%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String userid = (String)session.getAttribute("userid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<div id="login">
			<span><%=userid %>님 환영합니다.</span> <br>
          <div class="btn-group">
          	<button type="button" class="button-3d" onclick="location.href='logout.do'"> 로그아웃</button>
          	<button type="button" class="button-3d" onclick="location.href='#'"> 마이페이지</button>
			</div>
         </div>
</body>
</html>