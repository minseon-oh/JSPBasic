<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");
	String auth = (String)session.getAttribute("auth");
	
	if(auth.equals(code)){
		//인증성공 세션생성
		session.setAttribute("authYN", "y");
		response.sendRedirect("reserve.jsp");
	}else{
		response.sendRedirect("auth.jsp");
	}
%>
