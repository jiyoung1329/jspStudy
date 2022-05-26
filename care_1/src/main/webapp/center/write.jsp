<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../header.jsp" %>

	<div id="img_cen"></div>
	
	<nav id="nav_sub">
		<ul>
			<li> <a href="list.jsp"> 게시글 목록 </a></li>
			<li> <a href="write.jsp"> 게시글 작성 </a></li>
			<li> <a href="delete.jsp"> 게시글 삭제 </a></li>
			<li> <a href="update.jsp"> 게시글 수정 </a></li>
		</ul>
	</nav>
	
	<article id="article_sub">
		<h1>글 작성</h1>
		 	
		<table id="write_table">
			<tr id="write_row1">
				<td class="col1">아이디</td>
				<td class="col2">admin</td>
			</tr>
			
			<tr id="write_row2">
				<td class="col1">제목</td>
				<td class="col2"><input type="text"></td>
			</tr>
			
			<tr id="write_row3">
				<td class="col1">내용</td>
				<td class="col2"><textarea></textarea></td>
			</tr>
			
			<tr id="write_row4">
				<td class="col1">파일</td>
				<td class="col2"><input type="file"></td>
			</tr>
		</table>
		
		 	
		 	
	 	<div id="center_button">
	 		<a href="list.jsp"><img src="/care/images/ok.png"></a>
			<a href="list.jsp"><img src="/care/images/list.png"></a>
	 	</div>
	 	
	</article>
	

<%@ include file="../footer.jsp" %>