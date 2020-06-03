<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String product = request.getParameter("product");
	String price = request.getParameter("price");
	
	if(product.equals("나이키")){
		session.setAttribute("product", product);
		session.setAttribute("price", price);
	}else if(product.equals("아디다스")){
		session.setAttribute("product", product);
		session.setAttribute("price", price);
	}else if(product.equals("라코스테")){
		session.setAttribute("product", product);
		session.setAttribute("price", price);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style type="text/css">
		.center{
			border: 1px solid #777;
			width: 300px;
			margin: 0 auto;
		}
	</style>
	
</head>
<body>
	<div class="center">
	<%=product %>상품이 추가되었습니다<br>
	<a href="quiz02.jsp">계속쇼핑하기</a>
	<a href="quiz02_cart.jsp">장바구니확인하기</a>
	</div>

</body>
</html>