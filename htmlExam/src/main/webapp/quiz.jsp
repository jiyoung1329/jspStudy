<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img{
		width: 150px;
		height: 150px;
	}
</style>
</head>
<body>	
	<form action="">
		<table>
			<tr>
				<td>다음 <b>내용에 맞게 입력</b> 하시오.</td>
				<td rowspan=5>
					<img src="images/test.jpg">
				</td>
			</tr>
			<tr>
				<td>
					전공 분야를 입력하세요. 
					<select>
						<option value="software">소프트웨어</option>
						<option value="system">시스템</option>
						<option value="network">네트워크</option>
						<option value="database">데이터베이스</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					이름 <input type="text" name="name"><br>
					아이디 <input type="text" name="id"><br>
					비밀번호 <input type="password" name="pw"><br>
				</td>
			</tr>
		</table>
		
		<fieldset>
			<legend>성별 조사</legend>
			여성 <input type="radio" name="gender">
			남성 <input type="radio" name="gender">
		</fieldset>
		
		<fieldset>
			<legend>취미 조사</legend>
			책 읽기 <input type="checkbox" name="hobbys">
			공부 하기 <input type="checkbox" name="hobbys">
			책 읽으며 공부하기 <input type="checkbox" name="hobbys">
			컴퓨터 <input type="checkbox" name="hobbys">
		</fieldset>
		
		<fieldset>
			<legend>하고 싶은 말</legend>
			<textarea rows="3" cols="20">
				
			</textarea>
		</fieldset>
		<br>
		<input type="submit" value="전송">
		<input type="reset" value="다시 작성">
	</form>
	
</body>
</html>