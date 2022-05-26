<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../header.jsp" %>

	<div id="img_cen"></div>
	
	<nav id="nav_sub">
		<ul>
			<li> <a href="list.jsp"> 게시글 목록 </a></li>
			<li> <a href="create.jsp"> 게시글 작성 </a></li>
			<li> <a href="delete.jsp"> 게시글 삭제 </a></li>
			<li> <a href="update.jsp"> 게시글 수정 </a></li>
		</ul>
	</nav>
	
	<article id="article_sub">

	 	
		 <h1>게시글 목록</h1>
		 	<table>
		 		<tr>
		 			<th>번호</th>
		 			<th class="title">제목</th>
		 			<th>작성자</th>
		 			<th>날짜</th>
		 			<th>조회수</th>
		 		</tr>
		 		
		 		<tr>
		 			<td>1</td>
		 			<td class="title subject"><a href="view.jsp">게시글 제목</a></td>
		 			<td>아이디</td>
		 			<td>작성시간</td>
		 			<td>22</td>
		 		</tr>
		 	</table>
		 	
		 	<div id="list_form">
			 	<select>
			 		<option value="제목" selected="selected">제목</option>
			 		<option value="작성자">작성자</option>
			 	</select>
			 	<input type="text">
			 	<input type="button" value="검색">
		 	</div>
		 	
		 	<div class="clear"></div>
		 	<div id="page_control">
		 		<a href="#">Prev</a>
		 		<a href="#">1</a>
		 		<a href="#">2</a>
		 		<a href="#">Next</a>
		 	</div>
		 	
		 	<div id="center_button">
				<a href="write.jsp"><img src="/care/images/write.png"></a>
		 	</div>
	 	
	</article>
	

<%@ include file="../footer.jsp" %>