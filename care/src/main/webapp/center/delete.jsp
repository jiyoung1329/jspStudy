<%@page import="java.io.File"%>
<%@page import="center.CenterDTO"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String num = request.getParameter("num");
	
	if (id == null) {
		out.print("<script>alert('로그인부터 해주세요.'); location.href='../member/login.jsp'; </script>");
		return;
	}
	
	CenterDAO centerDAO = new CenterDAO();
	CenterDTO center = centerDAO.selectNum(num);
	
	if(id.equals(center.getId()) == false){
		response.sendRedirect("list.jsp");
		return;
	}
	String fileName = center.getFileName();
	String saveFolder ="C:\\javas\\upload\\" + id + "\\" + fileName;
	File file = new File(saveFolder);
	if(file.exists())
		file.delete();
	
	centerDAO.delete(num);
	
	out.print("<script>alert('글 삭제 완료!'); location.href='list.jsp'; </script>");

%> 