<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ex17</title>
</head>
<body >
	<table border=1>
		<tr> <!-- row, 행, 줄 -->
			<th colspan=2> 1행 1열, 2열</th> 
			<th rowspan="3"> 1,2,3행 3열 </th>
		</tr>
		
		<tr>
			<td> 2행 1열</td> <!-- data, 행의 열, 칸  -->
			<td> 2행 2열</td>
		</tr>
				
		<tr>
			<td> 3행 1열</td>
			<td> 3행 2열</td>
		</tr>
	</table>
</body>
</html>