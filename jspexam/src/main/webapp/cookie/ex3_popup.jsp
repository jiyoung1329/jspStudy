<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>팝업창 입니다.</h1>
	1분동안 열지 않기 <input type="checkbox" onclick="make()">
	
	<script>
		function make(){
			location.href="ex3_make.jsp";
		}
	</script>
</body>
</html>