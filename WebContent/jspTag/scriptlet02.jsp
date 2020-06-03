<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% for(int i=1; i<=10; i++){ %>
		<%=i %>
	<% } %>
	
	<h3>구구단 3단을 out.println으로 출력</h3>
	<%
		for(int i=1; i<10; i++){
			out.println("3 x " + i + " = " + 3*i + "<br>");
		}
	%>
	
	<hr>
	<h3>구구단 3단을 표현식을 통해 출력</h3>
	<% for(int i=1; i<10; i++){%>
		3 x <%=i %> = <%= 3*i %><br>
	<% } %>
	
	<hr>
	<h3>반복문으로 체크박스에 1~20까지 이름을 붙여서 가로출력</h3>
	<% for(int j=1; j<=20; j++) {%>
	<input type="checkbox" name="num"><%=j %>
	<% } %>
	
	<h3>중첩반복문을 사용하여 1-9단 출력</h3>
	<% for(int a=1; a<=9; a++){%>
		<% for(int b=1; b<=9; b++){ %>
			<%=a %> x <%=b %> = <%= a*b %> <br>
		<% }%>
	<br>
	<% }%>

</body>
</html>