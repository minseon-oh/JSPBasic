<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 사용자에게 값을 입력받을 때 form태그 사용 -->
	<!-- 받은데이터를 지정된 페이지로 전송할 때 form태그에 action속성을 사용한다 -->
	
	<form action="req_get_ex02.jsp">
		<h3>회원가입양식</h3>
		<hr>
		아이디 <input type="text" size="10" name="id"><br>
		비밀번호 <input type="password" size="10" name="pw"><br> <!-- 글자를 자동으로 암호처리 -->
		
		이름 <input type="text" size="10" name="name"><br>
		닉네임 <input type="text" size="10" name="nick"><br>
		
		<!-- checkbox(중복선택가능), radio(중복선택불가) 타입은 반드시 name속성으로 이름을 통일하여 그룹으로 묶어야한다 -->
		관심분야 
		<input type="checkbox" name="inter" value="자바">JAVA
		<input type="checkbox" name="inter" value="JSP">JSP
		<input type="checkbox" name="inter" value="스프링">SPRING
		<input type="checkbox" name="inter" value="스크립트">JavaScript
		
		<br>
		전공분야 
		<input type="radio" name="major" value="경영">경영
		<input type="radio" name="major" value="컴퓨터">컴퓨터
		<input type="radio" name="major" value="수학">수학
		<input type="radio" name="major" value="기계">기계
		
		<br>
		지역
		<select name="region">
			<option value="서울">서울시</option>
			<option value="경기">경기도</option>
			<option value="인천">인천시</option>
			<option value="부산">부산시</option>
		</select>
		
		<br>
		자기소개<br>
		<textarea rows="5" cols="50" name="intro"></textarea>

		<br>
		<input type="submit" value="확인">

	</form>

</body>
</html>