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
header, nav, section, article, aside, footer{
	border: 3px solid black;
	text-align: center;
}
header{
	background-color: red;
}
nav{
	background-color: yellow;
}
section{
	background-color: green;
	float : left;
	width: 60%;
	height: 200px;
}
section header, 
section article,
section footer{
	margin: auto;
	margin-bottom: 10px;
	width: 60%;
	background-color: gold;
}
aside{
	background-color: yellow;
	height: 200px;
}
footer{
	background-color: #ffb5ff;
}
</style>
</head>

<body>
	<header>
		<h1>&lt; header &gt;</h1>
	</header>
	
	<nav>
		<h3>&lt; nav &gt;</h3>
	</nav>
	
	<section>
		<h3>&lt; section &gt;</h3>
		<header>header</header>
		<article>article</article>
		<footer>footer</footer>
	</section>

	<aside>
		<h3>&lt; aside &gt;</h3>
	</aside>
	
	<footer>
		<h3>&lt; footer &gt;</h3>
	</footer>
	
</body>
</html>
