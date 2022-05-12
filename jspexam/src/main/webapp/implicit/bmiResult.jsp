<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		사용자로부터 이름, 키, 체중 값을 입력 받아 비만도 구하기
		BMI < 100 : 저체중
		100 <= BMI < 110 : 정상
		110 <= BMI < 120 : 과체중
		120 <= BMI < 130 : 비만
		130 <= BMI : 고도비만
		
		BMI(%) : 현제 체중 / 표준 체중 * 100
		표준 체중 = (현재키 - 100) * 0.9
		
		출력 예제 : 홍길동 님의 비만도는 112.15%로 과체중입니다
	 --%>
	 
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		
		double height = 0, weight= 0;
		try {
			height = Double.parseDouble(request.getParameter("height"));
			weight = Double.parseDouble(request.getParameter("weight"));
			
			int sum = 0;
			if (height > 0 && weight > 0){
				double normalWeight = (height - 100) * 0.9;
				double bmi = weight / normalWeight * 100;
				
				out.print(name + "님의 비만도는 " + String.format("%.2f", bmi) + "%로 ");
				
				if (bmi < 100){
					out.print("저체중");

				} else if (100 <= bmi && bmi < 110){
					out.print("정상");
					
				}else if (110 <= bmi && bmi < 120){
					out.print("과체중");
					
				}else if (120 <= bmi && bmi < 130){
					out.print("비만");
					
				} else {
					out.print("고도비만");
					
				}
					
				out.print("입니다.");
				
				
			} else {
				%>
					<script>
						alert("0 초과의 숫자를 입력해주세요.");
						history.back();
					</script>	
				<%
			}
			
		} catch(NumberFormatException e){
			%>
				<script>
					alert("숫자를 입력해주세요.");
					history.back();
				</script>			
			<%
		} 
	%>
</body>
</html>