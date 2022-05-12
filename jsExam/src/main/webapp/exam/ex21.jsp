<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex21</title>
<script>

	function mouse_down(obj){
		obj.innerHTML = "마우스 버튼을 누르고 있어요.";
	}
	function mouse_up(obj){
		obj.innerHTML = "마우스 버튼을 누르고 있지 않아요.";
	}
</script>
</head>
<body>
	<div onmousedown="mouse_down(this)" onmouseup="mouse_up(this)">
		클릭하세요.
	</div>
</body>
</html>