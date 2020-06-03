<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1번 페이지</h2>
	<%@ include file="include_ex02.jsp" %> <%-- 보통 이걸 더 많이 씀 --%>
	<%-- <jsp:include page=""> --%>
	합계:<%=total %>
</body>
</html>