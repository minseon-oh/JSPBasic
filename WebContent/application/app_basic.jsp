<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	application은 session과 사용방법은 거의 동일하며
	생명주기가 톰캣을 stop할때까지 1개 유지된다
	세션은 브라우저마다 다르게 처리
	어플리케이션은 모두 누적
	*/
	
	int total = 0;
	if(application.getAttribute("total") != null){
		total = (int)application.getAttribute("total");
	}
	//+1증가
	total++;
	application.setAttribute("total", total);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	누적: <%=total%> <br>

</body>
</html>