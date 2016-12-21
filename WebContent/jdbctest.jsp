<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");

	Connection conn = null;
	PreparedStatement pstmt = null;

	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/jspdb";

	try {
		Class.forName(jdbc_driver);

		conn = DriverManager.getConnection(jdbc_url, "jspbook", "1111");

		String sql = "insert into addrbook values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("ab_name"));
		pstmt.setString(2, request.getParameter("ab_email"));
		pstmt.setString(3, request.getParameter("ab_birth"));
		pstmt.setString(4, request.getParameter("ab_tel"));
		pstmt.setString(5, request.getParameter("ab_comdept"));
		pstmt.setString(6, request.getParameter("ab_memo"));

		if (request.getParameter("ab_name") != null) {
			pstmt.executeUpdate();

			System.out.println("DB �߰� ����");
%>

<script>
	alert("�߰� ����");
</script>
<%
	}

	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form name="form1" method="post">
		�̸� : <input type="text" name="ab_name"> 
		���� : <input type="text" name="ab_email">
		���� : <input type="text" name="ab_birth">
		��ȣ : <input type="text" name="ab_tel">
		���� : <input type="text" name="ab_comdept">
		�޸� : <input type="text" name="ab_memo">
		
		<input type="submit" value="���">

	</form>
	<hr>
	# ��� ���
	<p>
		<%
			try {
				String sql = "select * from addrbook";

				pstmt = conn.prepareStatement(sql);

				ResultSet rs = pstmt.executeQuery();
				int i = 1;

				while (rs.next()) {
					out.println(rs.getInt(1) + "\n" + rs.getString(2) + "<BR>" + rs.getString(3)+ rs.getString(4)+ rs.getString(5)+ rs.getString(6));
					i++;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	
</body>
</html>