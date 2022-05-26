<%@page import="session_concept.MemberDTO"%>
<%@page import="session_concept.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	MemberDAO memberDao = new MemberDAO();
	System.out.println("id : " + id);

	// 회원 삭제
	MemberDTO member = memberDao.selectId(id);
	if(member == null){
		out.print("<script>alert('없는 아이디입니다.'); location.href='delete.jsp';</script>");
		return;
	}

	memberDao.delete(member);
%>
<script>alert('회원 삭제 완료!'); location.href='index.jsp';</script>




;