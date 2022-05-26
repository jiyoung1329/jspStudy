<%@page import="java.util.ArrayList"%>
<%@page import="session_concept.MemberDTO"%>
<%@page import="session_concept.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	MemberDAO memberDao = new MemberDAO();
	
	// 입력 값 검증
	if(id == "" || pw == "" || name == ""){
		out.print("<script>alert('서버에서 검증한 결과 필수 항목이다.'); location.href='update.jsp';</script>");
		return;
	}
	
	// 입력 값 검증.
	if(pw.equals(confirmPw) == false){
		response.sendRedirect("member.jsp");
		return ;
	}
	
	// 중복 아이디
	MemberDTO member = memberDao.selectId(id);
	if(member == null){
		out.print("<script>alert('없는 아이디입니다.'); location.href='update.jsp';</script>");
		return;
	}
	
	// 회원수정
	member.setPw(pw);
	member.setName(name);
	member.setEmail(email);

	memberDao.update(member);
%>
<script>alert('회원 수정 완료!'); location.href='index.jsp';</script>




;