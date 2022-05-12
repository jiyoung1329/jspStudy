<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05</title>
</head>
<body>
	<%
		boolean b = false;
		if(b == true){
			// 출력
			out.print("<b> 로그인 성공 </b>");
		}else{
	%>
		<b><%="로그인 실패" %></b>
	<%		
		}
	%>
</body>
</html>









