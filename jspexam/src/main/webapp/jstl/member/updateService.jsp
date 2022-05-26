<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:requestEncoding value="utf-8" />
<c:choose>
	<c:when test="${empty sessionScope.id }">
		<script>alert('로그인 후 이용하세요'); location.href='login.jsp';</script>
	</c:when>
	<c:otherwise>
		<jsp:useBean id="memberDAO" class="actionTag.MemberDAO" />
		<jsp:useBean id="member" class="actionTag.MemberDTO" />
		<jsp:setProperty property="*" name="member"/> 
		
		<c:choose>
			<c:when test="${empty member.getPwd1() || empty member.getName() }">
				<script>alert(' 필수 항목이다.'); location.href='update.jsp';</script>
			</c:when>

			<%-- 비밀번호 검증 --%>
			<c:when test="${member.getPwd1() == member.getPwd2() }">
				<c:redirect url="update.jsp" />
			</c:when>

			<c:otherwise>
					
				<%-- 중복아이디 --%>
				<jsp:useBean id="check" class="jstl.MemberDTO" />
				<c:set var="check" value="<%=memberDAO.selectId(member.getId()) %>" />
				<c:choose>
					<c:when test="${empty check }">
						<script>alert('회원 가입 후 이용하세요.'); location.href='register.jsp';</script>
					</c:when>
					<c:otherwise>
						<c:set target="${member }" property="id" value="${sessionScope.id }"/>
						<% memberDAO.update(member); %>
						
						<c:remove var="id" scope="session"/>
						<c:remove var="name" scope="session"/>
						<c:remove var="addr" scope="session"/>
						<c:remove var="tel" scope="session"/>
						
						
					</c:otherwise>
				</c:choose>		
					
			</c:otherwise>
		</c:choose>
	</c:otherwise>
</c:choose>

<script>alert('회원 수정 완료'); location.href='index.jsp';</script>




