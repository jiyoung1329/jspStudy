<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex2_make</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("cookieName", "cookieValue");
		// cookie.setMaxAge(60*60*24); 
		cookie.setMaxAge(30);
		response.addCookie(cookie); // 클라이언트에게 쿠키 전송.
	%>
	<a href="ex2_index.jsp">쿠키 확인하기</a>
</body>
</html>