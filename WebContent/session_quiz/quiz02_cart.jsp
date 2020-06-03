<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Map<String, Integer> map = new HashMap<>();
	Set<Map.Entry<String,Integer>> s = map.entrySet();
	int n_count;
	int a_count;
	int l_count;
	int total;

%>
<%
	int num = 1;

	if(session.getAttribute("product") == null){

	}else{
		String product = (String)session.getAttribute("product");
		int price = (int)session.getAttribute("price");
		map.put(product, price);
		
		for(Map.Entry<String,Integer> m : s ){
			if(m.getKey().equals("나이키")){ 
				n_count++;
			}else if(m.getKey().equals("아디다스")){ 
				a_count++;
			}else if(m.getKey().equals("라코스테")){ 
				l_count++;
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
	<!-- 장바구니페이지 -->
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>가격</td>
			<td>수량</td>
		</tr>
		<% if(session.getAttribute("product") == null){ %>
			<tr>
			<td colspan="4">장바구니가 비었습니다</td>
			</tr>
		<% } else {%>
			<% for(Map.Entry<String,Integer> m : s ){%>
				<tr>
				<td><%=num++ %></td>
				<td><%=m.getKey() %></td>
				<td><%=m.getValue() %></td>
				<% if(m.getKey().equals("나이키")){ %>
				<td><%=n_count %></td>
				<%}else if(m.getKey().equals("아디다스")){ %>
				<td><%=a_count %></td>
				<%}else if(m.getKey().equals("라코스테")){ %>
				<td><%=l_count %></td>
				</tr>
				<% } %>
				<% num++; %>
			<% } %>
		<% } %>
		
		<tr>
			<td colspan="4"><a href="quiz02.jsp">계속쇼핑하기</a></td>
		</tr>
	</table>
</body>
</html>