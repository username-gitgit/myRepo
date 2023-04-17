<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
this managerPage.<br>
member list
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
				<td>${memlist.id}</td>
				<td>${memlist.password}</td>
				<td>${memlist.name}</td>
				<td><a href="del?id=${memlist.id}" onclick="del()">삭제</a>
				<td><a href="update?id=${memlist.id}">수정</a></td>
		</tr>
		</c:forEach>
	</table>
	<script src="resources/js/delete.js"></script>
</body>
</html>