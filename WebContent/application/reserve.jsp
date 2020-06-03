<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//인증을 거치지 않은사람은 접근하지 못하도록 처리
	if(session.getAttribute("authYN") == null){
		response.sendRedirect("auth.jsp");
	}

	//화면에 들어왔을 때 app좌성정보가 있다면 정보를 얻어온다
	List<String> list = new ArrayList<>();
	if(application.getAttribute("list") != null){
		list = (List<String>)application.getAttribute("list");
	}
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
	태그를 사용하지 못하도록 처리하는 옵션 disabled
	체크처리 checked
	 -->

	<div align="center">
		<h2>영화 좌석 예약</h2>
		<h4>예약할 좌석을 체크한 후 예약버튼을 클릭하세요</h4>
		<hr>
		<form action="reserve_ok.jsp">
		<h4>좌석배치도</h4>
		&nbsp;&nbsp;
		<% for(char c='A'; c<='Z'; c++){ %>
			<small><%=c %></small>&nbsp;&nbsp;
		<% } %>
		<br>
		<% for(int i=1; i<=6; i++){ %>
			<% if(i == 4) %> <br>
			<%=i %>
			<% for(char j='A'; j<='Z'; j++) {%>
				<% if(list.contains(j + "-" + i)){ %>
					<input type="checkbox" name="seat" value="<%=j%>-<%=i%>" disabled>
				<% }else{ %>
					<input type="checkbox" name="seat" value="<%=j%>-<%=i%>">
				<% } %>
			<% } %>
			<br>
		<% } %>
		<br>
			<input type="submit" value="예약">
			<input type="reset" value="취소">
		</form>
	</div>
</body>
</html>