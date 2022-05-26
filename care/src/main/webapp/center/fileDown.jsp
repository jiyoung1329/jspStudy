<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String fileName = request.getParameter("fileName");
	String saveFolder = "C:\\javas\\upload\\" + session.getAttribute("id") + "\\" + fileName;
	
	File file = new File(saveFolder);
	FileInputStream in = new FileInputStream(saveFolder);
	
	// server.xml의 Connector 파트에 relaxedQueryChars="[]()^|&quot;" 추가
	// <Connector connectionTimeout="20000" port="8888" protocol="HTTP/1.1" redirectPort="8443" relaxedQueryChars="[]()^|&quot;"/>

	fileName = new String(fileName.getBytes("utf-8"), "8859_1");

	response.setContentType("application/octet-stream");							
	response.setHeader("Content-Disposition", "attachment; filename=" + fileName ); 

	out.clear();					
	out = pageContext.pushBody();
    
    OutputStream os = response.getOutputStream();
    
    int length;
    byte[] b = new byte[(int)file.length()];

    while ((length = in.read(b)) > 0) {
    	os.write(b,0,length);
    }
    
    os.flush();
    os.close();
    in.close();

%>