<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function display(){
	var img = document.getElementById("delete");
	
	if (img.name == "delete"){
		document.getElementById("delete").src = "images/delete.png"
		img.name = "ok";
		
	} else {
		document.getElementById("delete").src = "images/ok.png"
		img.name="delete";
		
	}
	
	
}
</script>
</head>
<body>
<img id="delete" name="check" src="images/delete.png" onclick="display()" />
<!-- 
<img src="images/ok.png" />
 -->
</body>
</html>