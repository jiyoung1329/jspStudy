<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>계산 결과</h1>
	<%
		request.setCharacterEncoding("utf-8");
		
		int num = 0;
		try {
			num = Integer.parseInt(request.getParameter("num"));
			
			int sum = 0;
			if (num > 1){
				for (int i=1; i<num; i++) {
					sum += i;
					out.print(i + " + ");
				}
				out.print(num + " = " + (sum+num));
			} else {
				%>
					<script>
						alert("2 이상의 숫자를 입력해주세요.");
						history.back();
					</script>	
				<%
			}
			
		} catch(NumberFormatException e){
			%>
				<script>
					alert("정수를 입력해주세요.");
					history.back();
				</script>			
			<%
		} 
		
		
		
		
	%>
</body>
</html>