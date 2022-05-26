<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8" />
<c:choose>
	<c:when test="${empty param.id || empty param.pw || empty param.name }">
		<script>alert('서버에서 검증한 결과 필수 항목이다.'); location.href='member.jsp';</script>
	</c:when>
	<c:when test="${param.pw != param.confirmPw }">
		<c:redirect url="member.jsp" />
	</c:when>
			
	<c:otherwise>
		<jsp:useBean id="memberDao" class="jstl_quiz.MemberDAO" />
		<jsp:useBean id="member" class="jstl_quiz.MemberDTO" />
		<jsp:setProperty property="*" name="member"/> 
		
		<c:set var="check" value="${memberDao.selectId(param.id) }" />
		
		<c:choose>
		
			<c:when test="${!empty check }">
				<script>alert('중복 아이디'); location.href='member.jsp';</script>
			</c:when>
			
			<c:otherwise>
				<% memberDao.insert(member); %>
				<script>alert('회원 가입 완료'); location.href='index.jsp';</script>
			</c:otherwise>
			
		</c:choose>
	</c:otherwise>
</c:choose>
