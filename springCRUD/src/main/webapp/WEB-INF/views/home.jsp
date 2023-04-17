<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<!-- 위아래 둘다 / 넣으면 안됨 -->
<button type="button" onclick="location.href='SignUp'">회원가입</button>
<button type="button" onclick="location.href='LogIn'">로그인</button>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
