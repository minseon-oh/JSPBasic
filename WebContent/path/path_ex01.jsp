<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>path_ex01</h3>
	
	<!-- 
	절대경로: 전체경로를 적는 것(IP주소와 port번호를 제외하고 /컨텍스트경로부터 시작)
	상대경로: 내 위치에서 다른파일의 경로를 참조하는 것
	 -->
	
	<a href="path_ex02.jsp">ex02로(상대경로)</a><!-- 같은폴더안에 있기때문에 파일명만 작성 -->
	<a href="/JSPBasic/path/path_ex02.jsp">ex02로(절대경로)</a>
	<a href="<%=request.getContextPath() %>/path/path_ex02.jsp">ex02로(절대경로)</a>
</body>
</html>