<%@page import="center.CenterDTO"%>
<%@page import="center.CenterDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%
	if (id == null) {
		out.print("<script>alert('로그인부터 해주세요.'); location.href='../member/login.jsp'; </script>");
		return;
	}
	
	CenterDAO centerDAO = new CenterDAO();
	CenterDTO center = centerDAO.selectNum(request.getParameter("num"));
	if (center == null){
		out.print("<script>alert('해당 번호의 게시글은 없습니다.'); location.href='list.jsp'; </script>");
		return;
	}
	centerDAO.addHit(center.getNum());
%> 
<div id="img_cen"></div>
<%@ include file="nav.jsp" %>

<article id="article_sub">

	<h1>게시글 확인</h1>
	<div id="view_title">
		<div class="view_title1"><%=center.getSubject() %></div>
		<div class="view_title2"><%=center.getId() %> | 조회수: <%=center.getHit()+1 %> | <%=center.getWriteTime() %></div>
	</div>
	<div id="view_content"><%=center.getContent() %></div>
	
	<% if (center.getFileName() != null) {%>
	<div id="view_file">첨부 파일 : <a href="fileDown.jsp?fileName=<%=center.getFileName() %>"><%=center.getFileName() %></a></div>
	<%} %>
	<div id="center_button">
		<a href="list.jsp"><img src="/care/images/list.png"></a>
		<a href="modify.jsp?num=<%=center.getNum() %>"><img src="/care/images/modify.png"></a>
		<a href="delete.jsp?num=<%=center.getNum() %>"><img src="/care/images/delete.png"></a>
		<a href="write.jsp"><img src="/care/images/write.png"></a>
	</div>
	
</article>
<%@ include file="../footer.jsp"%>
















