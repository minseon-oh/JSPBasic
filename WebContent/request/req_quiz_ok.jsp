<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	double cm = Double.valueOf(request.getParameter("height"));
	double kg = Double.valueOf(request.getParameter("weight"));
	
	double bmi = Math.round(kg / (cm/100 * cm/100));
	
	String result;
	if(bmi >= 25){
		result = "과체중";
	}else if(bmi <= 18){
		result = "저체중";
	}else{
		result = "정상";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>BMI결과</h3>
	<hr>
	이름: <%=name %><br>
	신장: <%=cm %><br>
	몸무게: <%=kg %><br>
	BMI: <%=result %>(<%=bmi %>)<br>

</body>
</html>