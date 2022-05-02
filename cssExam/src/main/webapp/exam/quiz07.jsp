<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css quiz07</title>
<style>
*{box-sizing: border-box;}
table{border-collapse: collapse; border-spacing: 0;}
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
		
		
		
	</form>
	<a href="register.jsp">회원가입</a> |
	<a href="member_search.jsp">ID/PW찾기</a>
</body>
</html>