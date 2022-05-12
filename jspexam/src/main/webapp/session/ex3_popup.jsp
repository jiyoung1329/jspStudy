<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>공 지 사 항</h1>
	<p><strong>오전 03시 ~ 06시 까지 업테이트 예정입니다.</strong></p>
	<input type="checkbox" onclick="make()"> 하루동안 열지 않기
	
	<script>
		function make(){
			var date = new Date();
			date.setTime(date.getTime() + 24*60*60);
			document.cookie = 'popup=popup; expires=' + date.toUTCString() + ';path=/';

			window.close();
		}
	</script>
</body>
</html>