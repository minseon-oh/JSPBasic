<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	이 페이지 처음 진입하면 idCheck를 찾아서 값을 얻고 
	아이디 태그안에 미리 값을 넣어주는 코드작성
	
	input에 value.
	*/
	Cookie[] coo = request.getCookies();
	String id = "";
	if(coo != null){
		for(Cookie c : coo){
			if(c.getName().equals("idCheck")){
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
	
	<h3>쿠키로그인연습</h3>
	
	<form action="cookie_ex01_ok.jsp" method="post">
		아이디:<input type="text" name="id" size="10" value=<%=id %>><br>
		비밀번호:<input type="password" name="pw" size="10"><br>
		<input type="submit" value="로그인">
		<input type="checkbox" name="idCheck" value="y">아이디 기억하기
	</form>
	
</body>
</html>