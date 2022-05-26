<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	session = request.getSession();
	String login = (String) session.getAttribute("login");
	
	if (login == null) {
		out.print("<script>alert('현재 로그인 상태가 아닙니다.'); location.href='index.jsp';</script>");

	} else {
		session.removeAttribute("login");
		out.print("<script>alert('로그아웃 완료!'); location.href='index.jsp';</script>");
		
	}
			
	
	
%>




