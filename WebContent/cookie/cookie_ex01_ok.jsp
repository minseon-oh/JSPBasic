<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck"); //아이디 기억하기
	
	/*
	1. id=abc pw=1234라면 로그인 성공. (user_id, id)쿠키생성.
	2. 아이디나 비밀번호가 틀리면 로그인페이지로 리다이렉트
	3. 로그인 성공시 cookie_ex01_welcome으로 리다이렉트 화면에 "id님 로그인중"출력
	*/
	
	if(id.equals("abc") && pw.equals("1234")){
		Cookie coo = new Cookie("user_id", id);
		coo.setMaxAge(180);
		response.addCookie(coo);
		
		//아이디 기억하기 쿠기생성
		if(idCheck != null){//기억하기가 체크되어 있다면
			Cookie check = new Cookie("idCheck", id);
			check.setMaxAge(20);
			response.addCookie(check);
		}
		
		//페이지 이동
		response.sendRedirect("cookie_ex01_welcome.jsp");
	}else{
		response.sendRedirect("cookie_ex01.jsp");
	}

%>