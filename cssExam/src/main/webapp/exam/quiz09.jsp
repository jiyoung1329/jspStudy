<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css quiz 09</title>
<style>
body *{
	box-sizing: border-box;
}
header, div, nav, section, footer{border: 1px white solid;}
header{
	background-color: #99daff;
	margin: 20px 0;
}
header h1 {text-align: center;}

#menu{
	background-color: #c9ecff;
	text-align: right;
	padding: 15px 0;
}

a{
	text-decoration: none;
	color: #000000;
}

nav{
	float: left;
	background-color: #e3bdff;
	height: 200px;
	width: 60%;
}
nav a {display: block;}

#section{
	float: right;
	width: 40%;
	background-color: #c9b863;
}
section{
	border: 1px white solid;
	height: 100px;
	line-height: 100px;
}

footer{
	clear: both;
	background-color: #4f9bb3;
	text-align: center;
	padding: 10px 0;
}
</style>

</head>
<body>
	<header><h1>CARE LAB</h1></header>
	
	<div id="menu">
		<a href="#">login</a>
		<a href="#">register</a>
	</div>
	
	<nav>
		<p>nav</p>
		<a href="#">cafe</a>
		<a href="#">mail</a>
		<a href="#">webtoon</a>
	</nav>
	
	<div id="section">
		<section id="topSection">
			section
		</section>
		<section id="bottomSection">
			section
		</section>
	</div>
	
	<footer>
		footer |
		<a href="#">About Us</a> | 
		<a href="#">Recruitment</a> | 
		<a href="#">Partnership</a> | 
		<a href="#">Terms of service</a>
	</footer>
</body>
</html>