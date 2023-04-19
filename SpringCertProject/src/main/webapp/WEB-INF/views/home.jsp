<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
<head>
	<title>울산 그린 병원</title>
</head>
<body>

<!-- 위아래 둘다 / 넣으면 안됨 -->
<button type="button" onclick="location.href='LogIn'">로그인</button>
<button type="button" onclick="location.href='SignUp'">회원가입</button>

<h1>
	증명서 인터넷 발급
</h1>
<p>인터넷을 사용하여 언제, 어디서든 증명서를 발급받을 수 있으며,
즉시 줄력 또는 다운로드 가능합니다.</p>

<button type="button" name="confirm" onclick="location.href=#">인터넷 발급 바로 가기</button>


<%-- <P>  The time on the server is ${serverTime}. </P> --%>
</body>
</html>
