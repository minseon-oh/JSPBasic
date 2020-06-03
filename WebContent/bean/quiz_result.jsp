<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학생정보</h2>
	
		<jsp:useBean id="student" class="com.bean.Student" scope="request"/>
		아이디:<jsp:getProperty property="id" name="student"/>
		비밀번호:<jsp:getProperty property="pw" name="student"/>
		이름:<jsp:getProperty property="name" name="student"/>
		주소:<jsp:getProperty property="address" name="student"/>
		국어:<jsp:getProperty property="kor" name="student"/>
		수학:<jsp:getProperty property="math" name="student"/>
		총점:<jsp:getProperty property="total" name="student"/>
		평균:<jsp:getProperty property="avg" name="student"/>
</body>
</html>