<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 정수를 저장하는 List선언
	2. 1~45까지 로또번호 생성하고 리스트에 추가
	3. 중복되지 않은 숫자의 6개 로또번호 저장 후 화면출력
	4. Set으로도 처리
	*/
	Random ran = new Random();
	List<Integer> list = new ArrayList<>();
	Set<Integer> set = new HashSet<>();
	
	while(list.size() < 6){ 
		int r = ran.nextInt(45)+1; 
		if(!list.contains(r)){
			list.add(r);
		}
	}
	
	while(set.size() < 6){ 
		int r = ran.nextInt(45)+1;
		set.add(r);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	List: <%=list.toString() %><br>
	Set: <%=set.toString() %>
</body>
</html>