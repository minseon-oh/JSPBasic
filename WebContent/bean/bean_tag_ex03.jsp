<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>빈 사용하기</h2>
	
	<jsp:useBean id="user" class="com.bean.User" scope="request"/>
	이름:<jsp:getProperty property="name" name="user"/>
	이메일:<jsp:getProperty property="email" name="user"/>
</body>
</html>