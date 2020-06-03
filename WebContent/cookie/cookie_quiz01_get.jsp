<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();

	if(cookies != null){
		for(Cookie c : cookies){
			out.println(c.getName());
			out.println(c.getValue());
		}
	}else{
		out.println("쿠키가 없습니다");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>