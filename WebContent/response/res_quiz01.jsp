<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	1. form태그를 이용해서 post형식으로 이름, 국어점수, 영어점수, 수학점수를 받고
	2. request_quiz03_ok.jsp로 넘어가서 평균을 구하고 평균이 60점 이상이라면 합격 페이지로 이동
	미만이라면 불합격페이지로 이동
	--%>
	<form action="request_quiz03_ok.jsp" method="post">
		이름<input type="text" name="name"><br>
		국어점수<input type="text" name="1"><br>
		영어점수<input type="text" name="2"><br>
		수학점수<input type="text" name="3"><br>
	
		<input type="submit" value="확인">
	</form>


</body>
</html>