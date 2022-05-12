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
		<%! %>는 아래의 코드와 동일시한다.
		method는 선언문(<%! %>
		) 아니면 에러가 발생
		
		public class Test{
		int data;
		public void setData(int data){
			this.data = data;
		}
		public int getData(){
			return data;
		}
	}
	 --%>
	 <%!
	 	int data;
		public void setData(int data){
			this.data = data;
		}
		public int getData(){
			return data;
		}
	 %>
	 
	 <h3><%="setData() 호출 전 : " + getData() %></h3>
	<% setData(100); %>
	<h3><%="setData() 호출 후 : " + getData() %></h3>
</body>
</html>