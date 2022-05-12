<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex22</title>
<script>

	function mouse_down(obj){
		obj.src="images/lighton.png";
	}
	function mouse_up(obj){
		obj.src="images/lightoff.png";
	}
</script>
</head>
<body>
	<div>
		<img src="images/lightoff.png" width="50" height="180" 
		onmouseup="mouse_up(this)" onmousedown="mouse_down(this)"/>
		<p>Click mouse and hold down!</p>
	</div>
</body>
</html>

















