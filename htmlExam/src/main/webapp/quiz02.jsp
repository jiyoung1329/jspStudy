<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	body{
		margin-top:10px;
		padding:10px;
		}
	button{
		margin : 5px 10px;
		padding : 5px 20px;
		border: 1px solid;
		background-color: #FBEB7C;
	}
	h1{
		margin: 0; 
		padding : 40px 0;
		text-align : center;
	}
	#header{
		background-color: #B1E7AC;
		margin: 0;
		
	}
	#menu{
		background-color: #FFA500;
		padding : 10px 0px;
		text-align: center;
		
	}
	#content{
		background-color : #B0B8FF;
		padding : 10px;
		text-align: center;
	}
	.box{
		margin : 10px;
		width : 150px;
		height : 150px;
		background-color: #35ACCB;
		display: inline-block;
		
	}
	
</style>

</head>
<body>
	<div id="header">
		<h1>CARE LAB</h1>
	</div>
	
	<div id="menu">
		<button>Home</button>
		<button>Login</button>
		<button>Membership</button>
		<button>Record</button>
		<button>Free</button>
		<button>Q&A</button>
		<button>Download</button>
	</div>
	
	<div id="content">
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
		<div class="box"></div>
	</div>
</body>
</html>