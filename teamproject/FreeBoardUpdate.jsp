<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">	
  <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="../css/styledata.css">
</head>
<body>
	<form action="update.fr" method="post">
  	  <jsp:include page="/WEB-INF/view/login_out/logoutimg.jsp"/>
  	 <div>
  	 	<h2 id= "board_title">게시글 수정</h2>
  	 	<div>
			<span id = "title_pos_one">제목 : <input id="title_input_one"type="text" name="title" value="${dto.title}"></input></span>
		</div>
  	 </div>
  	 <textarea id="text_area_box" name="textarea">${dto.textarea}</textarea> 
	<input id="board_btn"type="submit" class="btn btn-primary" value="완료"></input>
	<button id="btn_back_index" type="button" class="btn btn-primary"onclick="location.href='FreeBardList.jsp'">자유게시판으로 돌아가기</button>
  </form>
</body>
</html>