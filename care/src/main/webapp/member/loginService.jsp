<%@page import="care.MemberDTO"%>
<%@page import="care.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	
	if(id == "" || pw == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return ;
	}

	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	System.out.println(check);
	if(check != null && check.getPw().equals(pw)){
		session.setAttribute("id", id);
		session.setAttribute("name", check.getName());
		session.setAttribute("email", check.getEmail());
		session.setAttribute("mobile", check.getMobile());
		session.setAttribute("address", check.getAddress());
		
		out.print("<script>alert('로그인 성공'); location.href='../index.jsp';</script>");
	}else{
		out.print("<script>alert('로그인 실패'); history.back();</script>");
	}
%>