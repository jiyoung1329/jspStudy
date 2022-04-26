<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz04</title>
<style>
#page{
	background-color: #fffd75;
	margin-top: 10px;
}
#header{
	padding-top: 20px;
	margin-bottom : 20px;
	text-align: center;
}
#header h1{	
	padding: 20px 40px ;
	display: inline;
	color : blue;
	font-size: 50px;
	font-family: "궁서";
	border-bottom: 2px double gray;
}
#content{
	display: inline-block;
	height: 100%;
}
h2{
	text-align: center;
}
#image {
	text-align: right;
}
img{
	height: 100px;
	width: 100px;
}
#footer p{
	font-size: 20px;
	padding: 10px;
}
</style>
</head>
<body>
	<div id="page">
		<div id="header">
			<h1>회사소개</h1>
		</div>
		
		<div id="content">
		<table width=100%>
			<tr>
				<td><ul><li><a href="www.naver.com" target="_blank">네이버</a></li></ul></td>
				<td><h2>안녕하세요</h2></td>
				<td align="right" id="image" rowspan=3><img src="images/test.jpg" /></td>
			</tr>
			
			<tr>
				<td><ul><li><a href="www.google.com" target="_blank">구글</a></li></ul></td>
				<td><h2>HTML 회사입니다.</h2></td>
			</tr>
			
			<tr>
				<td><ul><li><a href="www.google.com" target="_blank">구글</a></li></ul></td>
				<td><h2>환영합니다.</h2></td>
			</tr>
		</table>
		
		<div id="footer">
			<p>
			회사소개·광고안내·검색등록·제휴문의·인재채용·서비스약관·청소년보호 정책·개인정보
			처리방침·웹접근성안내·고객센터 Copyright ⓒ CARE LAB. All rights reserved
			</p>
			
		</div>
	</div>
	
</body>
</html>