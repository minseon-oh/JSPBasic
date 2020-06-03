<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(num.equals("1")){ %>
	<div align="center">
		<h3>강의영상</h3>
		<hr>
		<p>자바 수업소개</p>
		<iframe width="427" height="240" src="https://www.youtube.com/embed/SXX2cnmL0Ng?list=PLK7AWkPYwus5xddciHublVj-B8h18xj6V" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<%}else if(num.equals("2")){ %>
	<div align="center">
		<h3>강의영상</h3>
		<hr>
		<p>자바스크립트 수업소개</p>
		<iframe width="427" height="240" src="https://www.youtube.com/embed/nOTpuof2YG8?list=PLK7AWkPYwus6SdPJyhK9SNnKJybIC5qCs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>	
	<%}else if(num.equals("3")){ %>
	<div align="center">
		<h3>강의영상</h3>
		<hr>
		<p>오라클 수업소개</p>
		<iframe width="427" height="240" src="https://www.youtube.com/embed/DEVR_R2Hva0?list=PLK7AWkPYwus5eaHdYaraU73uMDRX18STn" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>		
	<%}else{ %>
	오류입니다
	<%} %>
</body>
</html>