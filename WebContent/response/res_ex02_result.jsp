<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. id,pw를 받아서 처리한다
	2. id가 abc1234이고 비밀번호가 asd123이라면 로그인 성공으로 간주하고 res_ex02_welcome.jsp리다이렉트
	3. id틀리면 res_ex02_id_fail.jsp, pw틀리면 res_ex02_pw_fail.jsp페이지로 리다이렉트
	*/

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(!id.equals("abc1234")){
		response.sendRedirect(" res_ex02_id_fail.jsp");
	}else if(! pw.equals("asd123")){
		response.sendRedirect("res_ex02_pw_fail.jsp");
	}else{
		response.sendRedirect("res_ex02_welcome.jsp");
	}
	
%>
