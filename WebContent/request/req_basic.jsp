<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request는 브라우저에 대한 정보, 사용자가 전달하는 값에 대한 많은 정보들이 담겨있음.
	
	StringBuffer url = request.getRequestURL(); //url주소확인
	
	String uri = request.getRequestURI(); //url값 확인
	
	String path = request.getContextPath(); //컨텍스트 경로: 톰캣이 프로젝트를 구분하는 경로
	
	String query = request.getQueryString(); //주소에 넘어오는 문자열값
	
	String addr = request.getRemoteAddr(); //접속주소
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	URL주소: <%=url%><br>
	URI주소: <%=uri%><br>
	컨패스: <%=path%><br>
	query: <%=query%><br>
	접속주소: <%=addr%><br>

</body>
</html>