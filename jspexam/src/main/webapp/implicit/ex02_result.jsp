<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	아이디 : <%=request.getParameter("id") %>
	비밀번호 : <%=request.getParameter("pass") %>
</body>
</html>