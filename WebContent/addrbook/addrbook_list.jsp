<%@ page contentType="text/html; charset=EUC-KR"
import="java.util.*, jspbook.addrbook.*, jspbook.addrbean.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="addrbook.css" type="text/css"
	media="screen" />

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
function check(ab_id) {
	pwd = prompt('����/���� �Ϸ��� ��й�ȣ�� ��������');
	document.location.href="addrbook_control.jsp?action=edit&ab_id="+ab_id+"&upasswd="+pwd;
}
</script>
</head>
<jsp:useBean id="datas" scope="request" class="java.util.ArrayList"></jsp:useBean>
<body>
	<div align="center">
		<h2>�ּҷ�:���ȭ��</h2>
		<hr>
		<form>
			<a href="addrbook_from.jsp">�ּҷ� ���</a>
			<p>
				<table border="1"><tr>
					<th>��ȣ</th>
					<th>�̸�</th>
					<th>��ȭ��ȣ</th>
					<th>����</th>
					<th>ȸ��</th>
					<th>�޸�</th>
				</tr>
<%
				for(AddrBook ab : (ArrayList<AddrBook>)datas) {
			%>
			  <tr>
			   <td><a href="javascript:check(<%=ab.getAb_id()%>)"><%=ab.getAb_id() %></a></td>
				<td><%=ab.getAb_name() %></td>
				<td><%=ab.getAb_tel() %></td>
				<td><%=ab.getAb_birth() %></td>
				<td><%=ab.getAb_comdept() %></td>
				<td><%=ab.getAb_memo() %></td>
			  </tr>
			 <%
				}
			 %>
			</table>
		</form>
	</div>
</body>
</html>