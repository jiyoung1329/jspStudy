<%@page import="center.PageVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="center.CenterDAO"%>
<%@page import="center.CenterDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<%
	request.setCharacterEncoding("utf-8");
	String pageNumber = request.getParameter("pageNumber");

	CenterDAO centerDAO = new CenterDAO();
	ArrayList<CenterDTO> centers = new ArrayList<CenterDTO>();
	String mode = request.getParameter("mode");
	if (mode == null){
		centers = centerDAO.selectAll();
		
	}else if (mode.equals("search")){
		String data = request.getParameter("data"); 
		String find = request.getParameter("find"); 
		centers = centerDAO.search(find, data);
	}
	PageVO pageVo = new PageVO();
	pageVo.setPageNumber(pageNumber);
	pageVo.setTotalCount(centers.size());
%>

<div id="img_cen"></div>
<%@ include file="nav.jsp" %>

<article id="article_sub">
	<h1> 게시글 목록</h1>
		<table>
		 <tr>
		 	<th class="no">번호</th>
		 	<th class="title">제목</th>
		 	<th class="writer">작성자</th>
		 	<th class="date">날짜</th>
		 	<th class="hit">조회수</th>
		 </tr>
		 <% 
		 // block의 배수가 아닌 마지막 페이지 : i < pageVo.getTotalCount()
		 for(int i = pageVo.getStart(); i < pageVo.getEnd() && i < pageVo.getTotalCount(); i++){
			 CenterDTO center = centers.get(i); %>
		 <tr>
		 	<td><%=i+1 %></td>
		 	<td class="subject">	
		 		<a href="view.jsp?num=<%=center.getNum() %>"><%=center.getSubject() %></a>
		 	</td>
		 	<td><%=center.getId() %></td>
		 	<td><%=center.getWriteTime() %></td>
		 	<td><%=center.getHit() %></td>
		</tr>
		<%} %>
		</table>
		
		<form action="list.jsp?mode=search" method="post" id="list_form">
			<select name="find">
				<option value="subject">제목</option>
				<option value="content">내용</option>
				<option value="id">작성자</option>
			</select>
			<input type="text" name="data">
			<input type="submit" value="검색">
		</form>
		
		<div class="clear"></div>
		<div id="page_control" style="text-decoration: none">
			<%
			if(pageVo.getPageNumber() <= 1){
					out.print("<a href='#'>[이전] </a>");
			}else{
				int tmp = pageVo.getPageNumber() - 1;
				out.print("<a href='list.jsp?pageNumber="+tmp+"'>[이전] </a>");
			} 
			
			for(int i = 1; i <= pageVo.getTotalPage(); i++){
				if(pageVo.getPageNumber() == i)
					out.print("<b> " + i + " </b>");
				else	
					out.print("<a href='list.jsp?pageNumber="+i+"'> "+ i +" </a>");
			}
			
			if(pageVo.getPageNumber() >= pageVo.getTotalPage()){
				out.print("<a href='#'>[다음] </a>");
			}else{
				int tmp = pageVo.getPageNumber() + 1;
				out.print("<a href='list.jsp?pageNumber="+tmp+"'>[다음] </a>");
			} 
			
			%>
		</div>
		<div id="center_button">
			<a href="write.jsp"> <img src="/care/images/write.png"> </a>
		</div>
</article>
<%@ include file="../footer.jsp"%>
