<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function display(){
	var name= document.getElementById('name');
	data = name.value;
	document.getElementById('name').value=""
	document.getElementById('name2').value=data
	
}
</script>

name:
<input type="text" id="name">
nam2:
<input type="text" id="name2">
<input type="button" value="버튼" onClick="display()">
</body>
</html>