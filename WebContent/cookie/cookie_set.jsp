<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키생성문법
	//1. 쿠키생성- 생성자의 매개변수에 (쿠키이름, 쿠키값)
	Cookie idCookie = new Cookie("user_id", "kkk123");
	Cookie nameCookie = new Cookie("user_name", "홍길자");
	
	//2. 쿠키의 시간설정
	idCookie.setMaxAge(3600); //만료시간: 초단위 작성가능 3600초=1시간
	nameCookie.setMaxAge(20); //20초
	
	//3. response에 쿠키탑재
	response.addCookie(idCookie);
	response.addCookie(nameCookie);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="cookie_get.jsp">쿠키확인하기</a>

</body>
</html>