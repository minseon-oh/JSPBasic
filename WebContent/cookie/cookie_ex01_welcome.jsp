<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] arr = request.getCookies();
	String id = "";
	
	if(arr != null){
		for(Cookie c : arr){
			if(c.getName().equals("user_id")){
				id = c.getValue();
			}
		}
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><%=id %>님이 로그인 중 입니다</h3>

</body>
</html>