<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="memberDAO" class="jstl.MemberDAO" />
<c:choose>

<c:when test="${empty sessionScope.id }">
	<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>
</c:when> 

<c:otherwise>
	<fmt:requestEncoding value="utf-8" />
	<c:set var="pwd1" value="${param.pwd1 }" />
	<c:set var="pwd2" value="${param.pwd2 }" />
	
	<c:choose>
		<c:when test="${empty pwd1 }">
			<script>alert(' 필수 항목이다.'); location.href='delete.jsp';</script>
		</c:when>
		<c:when test="${pwd1 != pwd2 }">
			<c:redirect url="delete.jsp" />
			<jsp:useBean id="member" class="jstl.MemberDTO" />
			<c:set var="member" value="<%=memberDAO.selectId((String) session.getAttribute("id")) %>" />
			
			<c:if test="${member.getPwd1() == pwd1 }">
				<% memberDAO.delete(member); %>
				<c:remove var="id" scope="session"/>
				<c:remove var="name" scope="session"/>
				<c:remove var="addr" scope="session"/>
				<c:remove var="tel" scope="session"/>
				<script>alert('회원 삭제 완료'); location.href='index.jsp';</script>
			
			</c:if>
			
			<c:if test="${member.getPwd1() != pwd1 }">
				<script>alert('비밀번호가 일치하지 않습니다.'); location.href='delete.jsp';</script>
			</c:if>
		</c:when>
	</c:choose>
</c:otherwise>
</c:choose>

