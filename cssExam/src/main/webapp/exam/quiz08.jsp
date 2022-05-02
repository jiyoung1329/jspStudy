<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
	box-sizing: border-box;
}
header, nav, article, aside, footer{
	border: 1px solid black;
	text-align: center;
}
#article{
	float : left;
	height: 200px;
	width: 50%;
}
article header, 
article article,
article footer{
	border: none;
	margin: auto;
	margin-bottom: 10px;
	width: 60%;
}
aside{
	width: 50%;
	float: right;
	height: 200px;
}
footer{clear: both;}
table{
	border-collapse: collapse;
	border-spacing: 0;
	margin: auto;
}
td{padding: 0;}
input{
	height: 35px;
	padding:0;
}
input[type=submit]{
	height:70px;
	padding: 0 10px;
}
a{
	text-decoration: none;
	color: black;
}

</style>
</head>

<body>
	<header>
		<h1>header</h1>
	</header>
	
	<nav>
		<h3>nav</h3>
	</nav>
	
	<article id="article">
		<h3>article</h3>
		<header>header</header>
		<article>article</article>
		<footer>footer</footer>
	</article>

	<aside>
		<h3>aside</h3>
		<form action="#" method="get">
			<table>
				<tr>
					<td><input type="text" placeholder="아이디"></td>
					<td rowspan="2"><input type="submit" value="로그인"></td>
				</tr>
				<tr>
					<td><input type="password" placeholder="비밀번호"></td>
					
				</tr>
			</table>
			<a href="register.jsp">회원가입</a> |
			<a href="member_search.jsp">ID/PW찾기</a>
		</form>
		
	</aside>
	
	<footer>
		<h3>footer</h3>
	</footer>
	
</body>
</html>
