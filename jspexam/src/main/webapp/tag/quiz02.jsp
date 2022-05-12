<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> 합계 구하기 </h2>
	<%
		int sum1 = 0, sum2 = 0, sum3 = 0;
		for (int i=1; i<=100; i++){
			sum1 += i;
			if (i % 2 ==0) sum2 += i;
			else sum3 += i;
		}
	%>
	1 + 2 + 3 +... + 100 = <%=sum1 %> <br>
	1 ~ 100까지의 짝수의 합 = <%=sum2 %> <br>
	1 ~ 100까지의 홀수의 합 = <%=sum3 %> <br>
</body>
</html>