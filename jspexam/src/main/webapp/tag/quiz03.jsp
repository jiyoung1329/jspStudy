<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz03</title>
</head>
<body>
	<%-- add, sub 메소드 만들고 호출하여 결과를 출력하세요 --%>
	<%!
		public int add(int a, int b){
			return a + b;
		}

		public int sub(int a, int b){
			return a - b;
		}
	%>

	3 + 2 = <%=add(3, 2) %>	<br>
	3 - 2 = <%=sub(3, 2) %>	
</body>
</html>