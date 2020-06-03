<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error_view.jsp" %><!-- 에러발생시 보여질 페이지의 경로 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String num = request.getParameter("num");
	num.charAt(0);
	%>
</body>
</html>