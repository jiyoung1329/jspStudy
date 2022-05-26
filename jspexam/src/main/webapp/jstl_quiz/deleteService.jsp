<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<fmt:requestEncoding value="utf-8" />

<c:choose>
	<c:when test="${empty sessionScope.id }">
		<script>alert('로그인 후 이용하세요.'); location.href='login.jsp';</script>
	</c:when>
	<c:otherwise>
		<c:choose>
		
			<c:when test="${empty param.pw }">
				<script>alert(' 필수 항목이다.'); location.href='delete.jsp';</script>
			</c:when>
			
			<c:when test="${param.pw != param.confirmPw }">
				<c:redirect url="delete.jsp" />
			</c:when>
			
			<c:otherwise>
				<jsp:useBean id="memberDao" class="jstl_quiz.MemberDAO" />
				<c:set var="member" value="${memberDao.selectId(sessionScope.id) }"/>
				<c:choose>
					<c:when test="${member.pw != param.pw }">
						<script>alert('비밀번호가 일치하지 않습니다.'); location.href='delete.jsp';</script>
					</c:when>
					<c:otherwise>
						<c:set target="${member }" property="id" value="${sessionScope.id }"/>
						${memberDao.delete(member) }
						<% session.invalidate(); %>
						<script>alert('회원 삭제 완료'); location.href='index.jsp';</script>
					</c:otherwise>
				</c:choose> 
				
			</c:otherwise>
			
		</c:choose>
	</c:otherwise>
</c:choose>
