<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

/* 	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email"); */
%>
<%--
	id는 사용할 변수명
	class는 패키지명을 포함하는 실제경로
	scope는 빈의 사용범위
 --%>
<jsp:useBean id="u1" class="com.bean.User" scope="request"/>

<%--setter의 사용: *를 사용하면 이름이 같은 모두를 가져온다. 위에 변수에도 안담아도 된다.--%>
<jsp:setProperty property="*" name="u1"/>
<%-- 
<jsp:setProperty name="u1" property="id" value="<%=id %>"/>
<jsp:setProperty name="u1" property="pw" value="<%=pw %>"/>
<jsp:setProperty name="u1" property="name" value="<%=name %>"/>
<jsp:setProperty name="u1" property="email" value="<%=email %>"/>
 --%>
 
<%--getter의 사용--%>
<jsp:getProperty name="u1" property="id"/>
<jsp:getProperty name="u1" property="pw"/>
<jsp:getProperty name="u1" property="name"/>
<jsp:getProperty name="u1" property="email"/> 
