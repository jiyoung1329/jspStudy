<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
	box-sizing: border-box;
}
div{
	border: 3px solid black;
	text-align: center;
}
#header{
	background-color: red;
}
#nav{
	background-color: yellow;
	float: left;
	width: 20%;
	height: 300px;
}
#section{
	background-color: green;
	float : left;
	width: 60%;
	height: 300px;
}
#aside{
	background-color: yellow;
	height: 300px;
}
#footer{
	background-color: #ffb5ff;
}
</style>
</head>

<body>
	<div id="header">
		<h1>&lt; header &gt;</h1>
	</div>
	
	<div id="nav">
		<h3>&lt; nav &gt;</h3>
	</div>
	
	<div id="section">
		<h3>&lt; section &gt;</h3>
	</div>

	<div id="aside">
		<h3>&lt; aside &gt;</h3>
	</div>
	
	<div id="footer">
		<h3>&lt; footer &gt;</h3>
	</div>
	
</body>
</html>