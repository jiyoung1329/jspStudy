<%@page import="care.MemberDTO"%>
<%@page import="care.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String confirmPw = request.getParameter("confirmPw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	
	if(id == "" || pw == "" || name == ""){
		out.print("<script>alert('필수 정보입니다.'); history.back();</script>");
		return ;
	}
	if(!pw.equals(confirmPw)){
		System.out.println("pw : " + pw + ", confirm : " + confirmPw);
		out.print("<script>alert('두 패스워드가 일치하지 않습니다.'); history.back();</script>");
		return ;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	if(check == null){
		MemberDTO member = new MemberDTO();
		member.setId(id);
		member.setPw(pw);
		member.setName(name);
		member.setEmail(email);
		member.setMobile(mobile);
		member.setAddress(address);
		
		memberDao.insert(member);
		
		out.print("<script>alert('회원 가입 완료'); location.href='../index.jsp';</script>");
	}else{
		out.print("<script>alert('회원 가입 실패'); history.back();</script>");
	}
%>
    