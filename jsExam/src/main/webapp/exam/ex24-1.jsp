<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex24-1</title>
<script>

	function forward(){
		window.history.forward();
	}
</script>
</head>
<body>
	<h1>24-1 페이지</h1>
	<a href="ex24-2.jsp"> ex24-2 페이지로 이동</a>
	<br><br>
	<input type="button" 
	value="다음 페이지" 
	onclick="forward()">
</body>
</html>