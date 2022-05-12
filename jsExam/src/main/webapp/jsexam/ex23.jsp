<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex23</title>
<script>
	function check(){
		document.getElementById("pw").focus();
	}
</script>
</head>
<body>
	<input type="text" placeholder="아이디"><br>
	<input type="password" id="pw" placeholder="비밀번호"><br>
	<input type="button" value="로그인" onclick="check()"> 
</body>
</html>