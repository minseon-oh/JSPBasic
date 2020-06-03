<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구한다
	평균이 60점 이상이면 score_quiz03으로 이동하여
		~~님 평균은 xx점 합격입니다 출력
	60점 이하라면 score_quiz04로 이동하여
		~~님 평균은 xx점 불합격입니다 출력
		
	조건: 세션사용x
	*/
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));

	int avg = (kor + eng + math) / 3;
	
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	/*
	쌤풀이
	if(avg >= 60){
		request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
	}else{
		request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
	} */

	if(avg >= 60){ %>
		<jsp:forward page="score_quiz03.jsp"/>
<%	}else{%>
		<jsp:forward page="score_quiz04.jsp"/>
<%	}%>

%>