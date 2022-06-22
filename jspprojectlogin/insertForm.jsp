<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="../css/styledata.css">
<!DOCTYPE html>
<html>
	<head>
   <meta charset="UTF-8">
   <title>회원가입</title>
</head>
<style>
/* 레이아웃 */

html {
    height: 100%;
}

body {
    margin: auto;
    height: 100%;
    background: #000000;
    font-family: Dotum, '돋움', Helvetica, sans-serif;
}

#header {
    padding-top: 62px;
    padding-bottom: 20px;
    text-align: center;
    font-style: italic;
}

#wrapper {
    position: relative;
    height: 100%;
}

#content {
    position: absolute;
    left: 50%;
    transform: translate(-50%);
    width: 460px;
}


/* 입력 */

h3 {
    margin: 19px 0 8px;
    font-size: 14px;
    font-weight: 700;
}

.box {
    display: block;
    width: 100%;
    height: 51px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    box-sizing: border-box;
    border-radius: 20px;
    background: #fff;
    position: relative;
}

.int {
    display: block;
    position: relative;
    width: 100%;
    height: 29px;
    border: none;
    background: #fff;
    font-size: 15px;
}

input {
    font-family: Dotum, '돋움', Helvetica, sans-serif;
}

.box.int_id {
    padding-right: 110px;
}

.box.int_pass {
    padding-right: 40px;
}

.box.int_pass_check {
    padding-right: 40px;
}

#bir_wrap {
    display: table;
    width: 100%;
}

#bir_yy {
    display: table-cell;
    width: 147px;
}

#bir_mm {
    display: table-cell;
    width: 147px;
    vertical-align: middle;
}

#bir_dd {
    display: table-cell;
    width: 147px;
}

#bir_mm,
#bir_dd {
    padding-left: 10px;
}

select {
    width: 100%;
    height: 29px;
    font-size: 15px;
    background: #F8F8FF url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
    background-size: 20px 8px;
    -webkit-appearance: none;
    display: inline-block;
    text-align: start;
    border: none;
    cursor: default;
    font-family: Dotum, '돋움', Helvetica, sans-serif;
}


/* 버튼 */

.btn_area {
    margin: auto;
}

#btnSubmit {
    width: 100%;
    padding: 21px 0 17px;
    border-radius: 5px;
    background-color: #F8F8FF;
    cursor: pointer;
    font-size: 20px;
    font-weight: 400;
    font-family: Dotum, '돋움', Helvetica, sans-serif;
    border-color: darkgray;
}
</style>
<body>
<!-- header -->
    <div id="header" style="color : #F8F8FF;">
        <h1>회원가입</h1>
    </div>


    <!-- wrapper -->
    <div id="wrapper">

        <!-- content-->
        <div id="content">
        
                  <form name="SignUp" action="insert.do" method="post">
            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id" style="color : #F8F8FF;">아이디</label>
                </h3>
                <span class="box int_id">
                    <input type="text" id="id" class="int" maxlength="20" placeholder="ID 입력" name="id">
                </span>
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="pswd1" style="color : #F8F8FF;">비밀번호</label></h3>
                <span class="box int_pass">
                    <input type="password" name="pwd" class="int" maxlength="20" placeholder="비밀번호 입력">            
                </span>

            </div>


            <!-- NICKNAME -->
            <div>
                <h3 class="join_title"><label for="nickname" style="color : #F8F8FF;">닉네임</label></h3>
                <span class="box int_name">
                    <input type="text" name="nickname" class="int" maxlength="20" placeholder="닉네임 입력">
                </span>
            </div>

            <!-- EMAIL -->
            <div>
                <h3 class="join_title"><label for="email" style="color : #F8F8FF;">이메일</label></h3>
                <span class="box int_mobile">
                    <input type="text" id="email"class="int"  maxlength="16" placeholder="이메일 입력" name="email">
                </span>
            </div>
            
                        <div>
                <h3 class="join_title"><label for="hobby" style="color : #F8F8FF;">취미</label></h3>
                <span class="box int_mobile">
                    <input type="text" id="hobby"class="int"  maxlength="16" placeholder="취미 입력" name="hobby">
                </span>
            </div>

            <br>
            <br>

            <!-- SUBMIT-->
            <div class="btn_area" >
                <input type="submit" id="btnSubmit" class="btn btn-outline-dark" value="회원가입">

            </div>
            </form>



        </div>
        <!-- content-->

    </div>
    <script> function btn(){ alert('회원가입이 완료되었습니다.'); } </script>
</body>
	
</html>
