<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
this updatePage.<br>
	<c:if test="${login != null }">
		<span><a>${memlist.id}님 환영합니다.</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                 
<!--                 <span><a href="javascript:void(0)" -->
<!-- 			onclick="javascript:sendPost()">로그아웃</a></span> -->
	</c:if>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Password</th>
			<th>name</th>
		</tr>
		<c:forEach items="${memlist}" var="memlist">
		<tr>
			<td><input type="text" id="id" name="id" value="${memlist.id}" readonly></td>
			<td><input type="text" id="password" name="password" value="${memlist.password}"></td>
			<td><input type="text" id="name" name="name" value="${memlist.name}"></td>
			<td><a href="up?id=${memlist.id}" id="upLink" onclick="upDate(member)">수정</a>
		</tr>
		</c:forEach>
	</table>
	<script src="resources/js/update.js"></script>
</body>
</html>