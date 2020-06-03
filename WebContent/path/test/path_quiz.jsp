<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- a태그를 이용하여 req_video페이지로 절대&상대경로로 이동 -->
	<a href="../../request/req_video.jsp">req_video(상대)</a>
	<a href="/JSPBasic/request/req_video.jsp">req_video(절대)</a>
	<!-- a태그를 이용하여 TestServlet페이지로 절대&상대경로로 이동 -->
	<hr>
	<a href="../../banana">TestServlet(상대)</a>
	<a href="/JSPBasic/banana">TestServlet(절대)</a>
	<!-- img태그를 이용하여 java.png참조 -->
	<hr>
	<img src="../../request/img/java.png" width="200px">

</body>
</html>