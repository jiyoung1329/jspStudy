<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz05</title>
<style>
#basicinfo{
	display: flex;
	justify-content: space-between;
}
.tr{
text-align: justify;
}
</style>
</head>
<body>
	<form action="#">
		<div id="basicinfo">
			<table>
				<tr>
					<td colspan="2">다음 <b>내용에 맞게 입력</b> 하시오.</td>
				</tr>
				
				<tr><td colspan="2">
					전공 분야를 입력하세요.
					<select name="major">
						<option value="software">소프트웨어</option>
						<option value="system">시스템</option>
						<option value="network">네트워크</option>
						<option value="db">데이터베이스</option>
					</select>
				</td></tr>
	
				<tr class="tr">
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
	
				<tr class="tr">
					<td>아이디</td>
					<td><input type="text" name="id"></td>
				</tr>
	
				<tr class="tr">
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>

			</table>
			
			<img src="images/test.jpg" style="height: 150px; width:200px;">
		
		</div>
		
		<fieldset id="gender">
			<legend>성별조사</legend>
			여성 <input type="radio" value="w" name="gender" checked="checked">
			남성 <input type="radio" value="m" name="gender">
		</fieldset>
		
		<fieldset id="hobby">
			<legend>취미 조사</legend>
			책 읽기 <input type="checkbox" value="read" name=hobby>
			공부 하기 <input type="checkbox" value="study" name=hobby>
			책 읽으며 공부하기 <input type="checkbox" value="readStudy" name=hobby>
			컴퓨터 <input type="checkbox" value="computer" name=hobby>
		</fieldset>
		
		<fieldset id="say" style="margin-bottom : 10px;">
		 	<legend>하고 싶은 말</legend>
		 	<textarea rows="5" style="width:100%; resize: none;"></textarea>
		</fieldset>
		
		<input type="submit" value="완료">
		<input type="reset" value="다시 작성">
	</form>
</body>
</html>