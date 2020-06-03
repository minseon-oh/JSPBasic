<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호, 닉네임을 받는다
	2. 아이디 비밀버ㄴ호가 동일하면 (user_id, id)세션생성
		(user_nick, nick) 세션생성
	
	session_welcome으로 이동해서 화면에 id님 환영합니다 출력
	틀리면 로그인 페이지로
	*/
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw)){
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);
		
		response.sendRedirect("session_welcome.jsp");
	}else{
%>
		<script>
			/*
			HTML에서 스크립트의 사용은 script태그를 쓴다
			변수: var a = 1;
			함수: function 이름(){}
			
			자바 스크립트 내장함수
			alert(); :경고창
			confirm(); :확인창
			history.go(-1); :뒤로가기
			location.href = "경로";
			*/
			
			name();
			function name(){
				alert("로그인 실패");
				location.href = "session_login.jsp";
			}
		
		</script>
<% 	
	}
%>
	
	



