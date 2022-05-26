<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="center.CenterDTO"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("num");
	String id = (String)session.getAttribute("id");

	String savePath = "C:\\javas\\upload\\" + id;
	File file = new File(savePath);
	if(file.exists() == false)
		file.mkdirs();
	
	int maxSize = 1024 * 1024 * 10; // 10MB
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "utf-8");
	
	String subject = multi.getParameter("subject");
	String content = multi.getParameter("content");
	String saveFile = multi.getOriginalFileName("upfile");
	
	if (id == null) {
		out.print("<script>alert('로그인부터 해주세요.'); location.href='../member/login.jsp'; </script>");
		return;
	}
	
	if (subject.isEmpty()){
		out.print("<script>alert('제목을 작성해주세요'); history.back(); </script>");
		return;
	}
		
	if (content.isEmpty()){
		out.print("<script>alert('내용을 작성해주세요'); history.back(); </script>");
		return;
	}
	
	CenterDAO centerDAO = new CenterDAO();
	CenterDTO center = centerDAO.selectNum(num);
	
	// 기존 파일 삭제
	String fileName = center.getFileName();
	String deletePath ="C:\\javas\\upload\\" + id + "\\" + fileName;
	File deleteFile = new File(deletePath);
	if(deleteFile.exists())
		deleteFile.delete();
	
	// 업데이트
	center.setSubject(subject);
	center.setContent(content);
	center.setId(id);
	center.setFileName(saveFile);
	
	centerDAO.update(center);
	
	out.print("<script>alert('글 수정 완료!'); location.href='list.jsp'; </script>");
	
%>