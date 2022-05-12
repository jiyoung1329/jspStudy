<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz04</title>
</head>
<body>
	<%-- abs 메소드 만들고 호출하여 결과를 출력하세요 --%>
	<%!
		public int abs(int a){
			if (a <= 0) return -a;
			else return a;
		}

	%>

	10의 절대값은 <%=abs(10) %>	<br>
	-20의 절대값은 <%=abs(20) %>	
</body>
</html>