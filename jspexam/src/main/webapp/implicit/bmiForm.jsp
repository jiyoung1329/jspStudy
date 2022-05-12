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
	 <h1>비만도 구하기</h1>
	 <form action="bmiResult.jsp" method="post">
	 	이름 : <input type="text" name="name"> <br><br>
	 	키 : <input type="text" name="height"><br><br>
	 	몸무게 : <input type="text" name="weight"><br><br>
	 	<input type="submit" value="제출">
	 	<input type="reset" value="초기화">
	 </form>
</body>
</html>