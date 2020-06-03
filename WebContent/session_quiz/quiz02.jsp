<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 상품페이지 -->
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>가격</td>
			<td>장바구니</td>
		</tr>
		<tr>
			<td>1</td>
			<td>나이키</td>
			<td>1000</td>
			<td><a href="quiz02_add.jsp?product=나이키&price = 1000">추가</a></td>
		</tr>
		<tr>
			<td>2</td>
			<td>아디다스</td>
			<td>2000</td>
			<td><a href="quiz02_add.jsp?product=아디다스&price = 2000">추가</a></td>
		</tr>
		<tr>
			<td>3</td>
			<td>라코스테</td>
			<td>3000</td>
			<td><a href="quiz02_add.jsp?product=라코스테&price = 3000">추가</a></td>
		</tr>
		<tr>
			<td colspan="4"><a href="quiz02_cart.jsp">장바구니</a></td>
		</tr>
	
	</table>


</body>
</html>