<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!-- param은 forward 태그에 값을 담아줄 때 사용한다 -->
<jsp:forward page="param_ex03.jsp">
	<jsp:param value="똑똑이" name="nick"/>
	<jsp:param value="20" name="age"/>
</jsp:forward>
