<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String name="ggg"; %>
	<h1>이름은 <%=name %> 입니다.</h1>
	<h1>이름은 <% out.print(name); %> 입니다.</h1>
</body>
</html>