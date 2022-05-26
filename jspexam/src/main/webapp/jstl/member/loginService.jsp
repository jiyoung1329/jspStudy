<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:requestEncoding value="UTF-8"/>
<jsp:useBean id="memberDAO" class="actionTag.MemberDAO" />
<jsp:useBean id="member" class="actionTag.MemberDTO" />
<jsp:setProperty property="*" name="member"/>

<c:choose>
	<c:when test="${member.getId() == '' || member.getPwd1() == '' }">
		<script>alert('필수정보입니다.'); history.back();</script>
	</c:when>
	<c:otherwise>
		<jsp:useBean id="check" class="actionTag.MemberDTO" />
		<c:set var="check" value="<%=memberDAO.selectId(member.getId()) %>" />
		 
		<c:choose>
			<c:when test="${empty check }">
				<script>alert('로그인 실패'); history.back();</script>
			</c:when>
			<c:otherwise>
				<c:set var="id" value='<%=check.getId() %>' scope="session"/>
				<c:set var="name" value='<%=check.getName() %>' scope="session"/>
				<c:set var="addr" value='<%=check.getAddr() %>' scope="session"/>
				<c:set var="tel" value='<%=check.getTel() %>' scope="session"/>
				<script>alert('로그인 성공'); location.href='index.jsp';</script>
			</c:otherwise>
			
		</c:choose>
	</c:otherwise>
</c:choose>
