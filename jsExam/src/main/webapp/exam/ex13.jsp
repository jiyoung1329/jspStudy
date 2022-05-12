<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex13</title>
</head>
<body>
<script>
	var add = function(...args){
		sum = 0;
		for (var num of args){
			sum += num;
		}
		return sum;
	}
	document.write(add(2) + "<br>")
	document.write(add(2, 3) + "<br>")
	document.write(add(2, 4, 5) + "<br>")
	document.write(add(2, 3, 4, 5) + "<br>")
	document.write(add(2,3, 4, 5, 6) + "<br>")
</script>
</body>
</html>