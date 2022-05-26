<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="center.CenterDTO"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	String id = (String)session.getAttribute("id");
	String fileName = request.getParameter("upfile");
	
	String saveFolder = "C:\\javas\\upload\\" + id;
	File file = new File(saveFolder);
	if(file.exists() == false)
		file.mkdirs();
	
	int maxSize = 1024 * 1024 * 10; // 10MB
	MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "utf-8");
	
	subject = multi.getParameter("subject");
	content = multi.getParameter("content");
	fileName = multi.getOriginalFileName("upfile");
	
	if (subject.isEmpty()){
		out.print("<script>alert('제목을 작성해주세요'); history.back(); </script>");
		return;
	}
		
	if (content.isEmpty()){
		out.print("<script>alert('내용을 작성해주세요'); history.back(); </script>");
		return;
	}
	
	CenterDAO centerDAO = new CenterDAO();
	CenterDTO center = new CenterDTO();
	
	center.setSubject(subject);
	center.setContent(content);
	center.setId(id);
	center.setFileName(fileName);
	
	
	centerDAO.insert(center);
	out.print("<script>alert('글 작성 완료!'); location.href='list.jsp'; </script>");
	
%>