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
%> 
<div id="img_cen"></div>
<%@ include file="nav.jsp" %>

<article id="article_sub">
	<h1> 글 수정</h1>
		<form action="modifyService.jsp?num=<%=center.getNum() %>" method="post" enctype="multipart/form-data">
		<div class="line"></div>
		<table id="write_table"> 	
			<tr id="write_row1">
				<td class="col1">아이디</td>
				<td class="col2"><%=center.getId() %></td>
			</tr>
			
			<tr id="write_row2">
				<td class="col1">제목</td>
				<td class="col2"> <input type="text" name="subject" value=<%=center.getSubject() %>> </td>
			</tr>
			
			<tr id="write_row3">
				<td class="col1">내용</td>
				<td class="col2"><textarea name="content"><%=center.getContent() %></textarea></td>
			</tr>
			
			<tr id="write_row4">
				<td class="col1">파일</td>
				<td class="col2"><input type="file" name="upfile" value="<%=center.getFileName() %>" ></td>
			</tr>
		</table>
	
		<div id="center_button">
			<input type="image" src="/care/images/ok.png">
			<a href="list.jsp"> <img src="/care//images/list.png"> </a>
		</div>
	</form>
</article>
<%@ include file="../footer.jsp"%>





















