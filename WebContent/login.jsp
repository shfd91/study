<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="login" class="study.LoginBean" scope="page"></jsp:useBean>
<jsp:setProperty name="login" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		if (!login.checkUser()) {
			out.println("로그인 실패");
		} else {
			out.println("로그인 성공");
		}
	%>

	<hr>
	ID =
	<jsp:getProperty property="login" name="userid" /><br> PW =
	<jsp:getProperty property="login" name="userpw" />
</body>
</html>
