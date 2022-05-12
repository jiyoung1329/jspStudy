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
		Cookie c = new Cookie("popup", "pop");
		c.setMaxAge(60);
		response.addCookie(c);
	%>
	<script>
		window.close();
	</script>
</body>
</html>