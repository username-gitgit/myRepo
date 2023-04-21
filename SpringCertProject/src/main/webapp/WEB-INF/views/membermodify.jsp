<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="digsubmit" method="post">
환자 진단하기<br>
환자 이메일 : ${member.email}
<br>
이름 : ${member.name}
Diagnostic : <input type="text" name="Diagnostic"><br>
pcode : <input type="text" name="pcode">
환자코드는 셀렉션으로 하는게 좋을듯
<input type="submit" value="sub">
</form>
</body>
</html>