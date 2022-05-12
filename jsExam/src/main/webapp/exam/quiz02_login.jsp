<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#preface{text-align: right;}
#header > h1{color: #FF9800; padding-left: 50px;}
#menu{text-align: right; }
a{
	text-decoration: none;
	color: black;
}
#menu a{
	font-size: 20px;
	padding: 20px;
}
#banner img {width: 100%; margin-top: 20px;}

#content{
	display: flex;
	align-items: stretch;
}
nav{padding-left: 30px; padding-top: 50px; flex:2;}
nav a{display: flex; justify-content: space-between;}
nav hr{margin-bottom: 15px;}

#loginContent{
	flex: 8;
	padding-left: 50px;
}
table{
	margin: auto;
	width: 60%;
}
td{width: 50%;}
input[type="text"],
input[type="password"]{
	height: 40px;
	width: 100%;
	background-color: #CFF2FD;
}
.loginButton{text-align: center;}
input[type="button"]{
	margin-top: 30px;
	border: none;
	color: #ffffff;
	font-size: 18px;
	width: 100%;
	height: 40px;

}
input[value="로그인"]{background-image: url(images/member/submit_back.jpg)}
input[value="취소"]{background-image: url(images/member/cancel_back.jpg)}

footer{clear:both; padding-top: 50px;}
#footer{display: inline;}
#footer p{display: inline;}
#link{display: inline;}
</style>

<script>
</script>
</head>
<body>
	<div id="preface">login Membership</div>
	<div id="header"><h1>CARE LAB</h1></div>
	<div id="menu">
		<a href="#">HOME</a>
		<a href="#">COMPANY</a>
		<a href="#">SOLUTIONS</a>
		<a href="#">CUSTOMER CENTER</a>
	</div>
	
	<div id="banner"><img src="images/member/sub_back.png"></div>
	
	<div id="content">
		<nav>
			<a href="#"><span>회원 가입</span> <img src="images/company/h_bullet.gif"></a><hr>
			<a href="#"><span>회원 수정</span> <img src="images/company/h_bullet.gif"></a><hr>
			<a href="#"><span>회원 탈퇴</span> <img src="images/company/h_bullet.gif"></a><hr>
			<a href="#"><span>로그인&nbsp;&nbsp;&nbsp;&nbsp;</span> <img src="images/company/h_bullet.gif"></a><hr>
			<a href="#"><span>로그아웃&nbsp;</span> <img src="images/company/h_bullet.gif"></a><hr>
		</nav>
		
		<div id="loginContent">
			<h1>로그인</h1>
			<table id="loginTable">
				<tr>
					<td class="tableLeft"><label>아이디</label></td>
					<td class="tableRight"><input type="text" name="id"></td>
					
				</tr>
				<tr>
					<td class="tableLeft"><label>비밀번호</label></td>
					<td class="tableRight"><input type="password" name="pw"></td>
				</tr>
				<tr class="loginButton">
					<td class="loginButton tableLeft"><input type="button" value="로그인"></td>
					<td class="loginButton tableRight"><input type="button" value="취소"></td>
				</tr>
			</table>
		</div>
	</div>
	
	<footer>
		<div id="footer">
			<hr>
			<p>Copyright 2022 kyes Inc. all right reserved contact mail: kyes0222@gmail.com Tel: +82 010-6315-6980</p>
			<div id="link">
				<img src="images/facebook.gif">
				<img src="images/twitter.gif">
			</div>
		</div>
	</footer>
</body>
</html>
