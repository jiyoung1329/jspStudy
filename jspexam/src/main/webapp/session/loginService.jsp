<%@page import="java.util.ArrayList"%>
<%@page import="session.MemberDTO"%>
<%@page import="session.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String rememberId = request.getParameter("rememberId");
	MemberDAO memberDao = new MemberDAO();
	
	// 입력 값 검증
	if(id == "" || pw == ""){
		out.print("<script>alert('아이디 또는 비밀번호를 입력해주세요.'); location.href='login.jsp';</script>");
		return;
	}
	
	// 아이디 존재 여부 확인
	MemberDTO member = memberDao.selectId(id);
	session = request.getSession();
	System.out.println("remember" + rememberId);
	System.out.println(session.getAttribute("login") + "	" + session.getAttribute("id"));
	if(member == null){
		out.print("<script>alert('아이디가 존재하지 않습니다.'); location.href='login.jsp';</script>");
		return;
	} else {
		if (member.getPw().equals(pw)){
			session.setAttribute("login", "login");
			
			// 아이디 기억하기
			if (rememberId == null && session.getAttribute("id") == null){
				session.setAttribute("id", member.getId());
			}
	
			out.print("<script>alert('로그인 성공!'); location.href='index.jsp';</script>");
			
		} else {
			out.print("<script>alert('비밀번호가 틀렸습니다!'); location.href='login.jsp';</script>");
		}
	}
	
	
%>




