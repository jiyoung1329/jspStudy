<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> 구구단 </h2>
	<%
		for (int num=1; num <= 9; num++){
			for (int dan=2; dan <=9; dan ++){
				out.print(dan + " x " + num + " = " + (dan*num));
				out.print("&emsp;&emsp;");
			}
			
		out.print("<br>");
		}
	
	%>
</body>
</html>