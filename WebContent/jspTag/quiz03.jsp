<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	List<String> friends = new ArrayList<>();
	Random ran = new Random();
	String[] kakao = {"프로도","무지","튜브","어피치","라이언","제이지","네오","콘"};
%>
<%
	int r = ran.nextInt(6);
	String s = kakao[r];
	friends.add(s);
	
	int count = 0;
	
	for(String e : friends){
		if(e.equals(s)){
			count++;
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

		[<%=s %>]님이 입장<br>
		
		현재 같은 카카오 프렌즈는 <%=count %>명 입니다.<br>

		<h3>현재 구성정보</h3>
		<%=friends.toString()%>
		(<%=friends.size() %>명 참가중)

		<%
		if(friends.size() == 10){
			friends.clear();
		}
		%>
</body>
</html>