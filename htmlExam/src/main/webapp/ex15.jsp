<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ex15</title>
	<style>
		body{margin:0px; padding: 0px }
		#wrap{
			width: 80%;
			border: 1px solid;
			margin: auto;
			background: #EAEAEA;
			height: 300px;
		}
		.box1, .box2, .box3{
			width: 300px; height:200px;
			margin: 30px; padding: 20px;
			border: 1px solid;
			float: left;
		}
		.box1 img, .box2 img, .box3 img{ float: left;}
		.box1 h3, .box2 h3, .box3 h3{/*  border: 1px solid; */  height: 50px; text-align: center;}
		.box1{ background: #D9D6FF; margin-left:130px; }
		.box2{ background: #F6FFCC; }
		.box3{ background: #53C14B; }
	</style>
</head>
<body >
	<div id="wrap">
		<div class="box1">
			<img src="images/icon1.png" />
			<h3>지구 사랑</h3>
			<p>
				우리 회사는 지구의 환경을 위해 탄소배출을 당장 내일까지 제로배출을 약속합니다.
			</p> 
		</div>
		<div class="box2">
			<img src="images/icon2.png" />
			<h3>지구 보호</h3>
			<p>
				우리 회사는 지구의 환경 보호를 위해 당장 내일부터 친환경 에너지만 사용할 것을 약속합니다.
			</p> 
		</div>
		<div class="box3">
			<img src="images/icon3.png" />
			<h3>환경 어플리케이션</h3>
			<p>
				우리 회사의 개발자가 만든 앱 스토어입니다.
				환경을 위한 측정 등 다양한 어플이 준비되어 있습니다.
			</p> 
		</div>
	</div>
</body>
</html>