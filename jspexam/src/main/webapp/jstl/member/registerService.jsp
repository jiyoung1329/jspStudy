<%@page import="actionTag.MemberDTO"%>
<%@page import="actionTag.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:requestEncoding value="UTF-8"/>

<jsp:useBean id="memberDAO" class="jstl.MemberDAO" />
<jsp:useBean id="member" class="jstl.MemberDTO" />
<jsp:setProperty property="*" name="member"/> 

<c:choose>
	<c:when test="${empty member.getId() || empty member.getPwd() || empty member.getName() }">
		<script>alert('필수 정보입니다.'); history.back();</script>
	</c:when>

	<c:when test="${member.getPwd() == member.getPwd2() }">
		<script>alert('두 패스워드가 일치하지 않습니다.'); history.back();</script>
	</c:when>
	
	<c:otherwise>
		<jsp:useBean id="check" class="jstl.MemberDTO" />
		<c:set var="check" value="<%=memberDAO.selectId(member.getId()) %>" />
		
		<c:choose>
			<c:when test="${empty check }">
				<script>alert('회원가입실패'); history.back();</script>
			</c:when>
			
			<c:otherwise>
				<% memberDAO.insert(member); %>
				<script>alert('회원가입완료'); location.href="index.jsp";</script>
			</c:otherwise>
		</c:choose>
	</c:otherwise>

</c:choose>

