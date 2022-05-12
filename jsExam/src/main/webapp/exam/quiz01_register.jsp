<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
<style>
label{
	line-height: 30px;
}
table{margin: auto;}
input[type="text"],
input[type="password"]{
	height: 30px;
	width: 180px;
}
input[type="submit"]{height: 30px; width: 100%; font-size: 15px; font-weight: bold;}
div{
	margin-bottom: 10px;
	text-align:  justify;
}
</style>
<script>
function registerCheck(){
	var id = document.getElementById("id").value;
	var pw = document.getElementById("pw").value;
	var pwCheck = document.getElementById("pwCheck").value;
	var name = document.getElementById("name").value;
	
	if (id == ""){
		alert("아이디는 필수사항입니다.")
	}else if (pw == ""){
		alert("비밀번호는 필수사항입니다.")
	}else if (pwCheck == ""){
		alert("비밀번호확인은 필수사항입니다.")
	} else if (pw != pwCheck){
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.")
	} else {
		location.replace("quiz01_success.jsp")
	} 
	
}
</script>
</head>
<body>
<table>
	<tr>
		<td><label for="id">아이디</label></td>
		<td><input id="id" type="text" name="id"></td>
	</tr>
	
	<tr>
		<td><label for="pw">비밀번호</label></td>
		<td><input id="pw"  type="password" name="pw"></td>
	</tr>
	
	<tr>
		<td><label for="pwCheck">비밀번호 확인</label></td>
		<td><input id="pwCheck"  type="password" name="pwCheck"></td>
	</tr>
	
	<tr>
		<td><label for="name">이름</label></td>
		<td><input id="name" type="text" name="name"><br></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="등록하기" onclick="registerCheck()"></td>
	</tr>

	
</table>
</body>
</html>