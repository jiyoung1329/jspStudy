<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
<%
	session = request.getSession();
	String login = (String) session.getAttribute("login");

	String id = (String) session.getAttribute("id");
	if (id == null) id = "";
	
	if (login == null){
	%>
	<form action="loginService.jsp" method="post">
		<input type="text" placeholder="아이디" name="id" value="<%=id %>"><br><br>
		<input type="password" placeholder="비밀번호" name="pw"><br><br>
	
		<input type="checkbox" name="rememberId" value="remember"> 아이디 기억하기 <br><br>
		
		<input type="submit" value="로그인">
	</form>
	<%	
	} else {
		out.print("<script>alert('이미 로그인 상태입니다.'); location.href='index.jsp';</script>");

	}
%>
	
</body>
</html>