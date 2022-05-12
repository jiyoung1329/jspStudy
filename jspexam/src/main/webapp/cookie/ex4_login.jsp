<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String rememberId = "";

		Cookie[] cookies = request.getCookies();
		for (Cookie c : cookies){
			if (c.getName().equals("saveId")){
				rememberId = "admin";
			}
		}
	%>
	<form action="ex4_loginCheck.jsp" method="post">
		<input type="text" placeholder="아이디" name="id" value="<%=rememberId %>"><br>
		<input type="password" placeholder="비밀번호" name="pw"><br>
		<input type="checkbox" name="check" value="t"> 아이디 기억하기 <br>
		
		<input type="submit" value="로그인">
		<input type="reset" value="취소">
	</form>
</body>
</html>