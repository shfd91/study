<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<form name="form1" method="post" action="ProductSel.jsp">
		<jsp:useBean id="product" class="study.Product" scope="session"></jsp:useBean>
			<select name="sel">
			<%
				for(String item : product.getProductList()){
					out.println("<option>"+item+"</option>");
				}
			%>
			</select>
			<input type="submit" value="선택">
			</form>
	</body>
</html>