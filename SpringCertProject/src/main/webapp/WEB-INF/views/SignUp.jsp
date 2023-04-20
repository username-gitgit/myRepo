<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% request.setCharacterEncoding("utf-8"); %>
<title>회원가입</title>
<link rel="stylesheet" href="../resources/css/mystyle.css">
<meta http-equiv="Content-Type" content="text/html;  charset=UTF-8">
</head>
<body>
<form action="memberJoin" method="post">
<h1>회원가입</h1>
이메일<input type="text" name="email" id="email"><br>
비밀번호<input type="text" name="password" id="password"><br>
비밀번호 확인<input type="text" name="passCk" id="passCk"><br>
이름<input type="text" name="name" id="name"><br>
주민등록번호<input type="text" name="residentid" id="residentid"><br>
휴대폰 번호<input type="text" name="phone" id="phone"><br>
<input type="submit" value="회원 가입">
<c:if test="${not empty errorMessage}">
	<div role="alert">${errorMessage}</div>
</c:if>

</form>
</body>
</html>