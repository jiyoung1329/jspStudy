<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8" />

<c:choose>
	<c:when test="${empty param.id || empty param.pw }">
		<script>alert('필수 항목입니다.'); location.href='login.jsp';</script>
	</c:when>
	
	<c:otherwise>
		<jsp:useBean id="memberDao" class="jstl_quiz.MemberDAO" />
		<c:set var="member" value="${memberDao.selectId(param.id) }" />
		
		<c:choose>
			<c:when test="${!empty member && member.getPw() == param.pw }">
				<c:set scope="session" var="id" value="${member.getId() }" />
				<c:set scope="session" var="name" value="${member.getName() }" />
				<c:set scope="session" var="email" value="${member.getEmail() }" />
				<c:redirect url="index.jsp" />
			</c:when>
			
			<c:otherwise>
				<script>alert('아이디 또는 비밀번호를 확인 후 입력하세요.'); location.href='login.jsp';</script>
			</c:otherwise>
			
		</c:choose>
	</c:otherwise>
</c:choose>



