<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	세션에 저장된 값은 자동으로 30분 유지. 브라우저를 끄면 사라짐.
	어느페이지에서나 사용할 수 있다
	getAttribute("이름");으로 사용
	*/
	
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
	
	//세션의 유지기간
	int time = session.getMaxInactiveInterval();
	
	//특정세션삭제
	session.removeAttribute("user_name");
	
	//모든세션삭제
	session.invalidate();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	세션에 저장된 id:<%=id %><br>
	세션에 저장된 name:<%=name %><br>
	세션에 유지시간 :<%=time %><br>

</body>
</html>