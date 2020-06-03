<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	1.폼태그를 처리할 수 있는 빈을 선언
	2.폼값을 받아서 평균과 총점을 구한다
	3.quiz_result페이지로 이동해서 학생정보,평균,총점 출력
	4.단, 세션사용 금지
--%>
<% 
	request.setCharacterEncoding("utf-8"); 
	double kor = Double.valueOf(request.getParameter("kor"));
	double math = Double.valueOf(request.getParameter("math"));
	double total = kor + math;
	double avg = total / 2;

%>

<jsp:useBean id="student" class="com.bean.Student" scope="request"/>
<jsp:setProperty property="total" name="student" value="<%=total %>"/>
<jsp:setProperty property="avg" name="student" value="<%=avg %>"/>
<jsp:setProperty property="*" name="student"/>
<jsp:forward page="quiz_result.jsp"/>
