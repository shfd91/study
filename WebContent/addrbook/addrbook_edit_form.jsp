<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="addrbook.css" type="text/css"
	media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>�ּҷ� :���� ȭ��</h2>
		<hr>
		[<a href="addrbook_list.jsp">�ּҷ� �������</a>]
		<p>
		<form name="form1" method="post" action="addrbook_control.jsp">
			<input type="hidden" name="action" value="update">

			<table border="1">
				<tr>
					<th>�̸�</th>
					<td><input type="text" name="ab_name" maxlength="15"></td>
				</tr>
				<tr>
					<th>email</th>
					<td><input type="text" name="ab_email" maxlength="50"></td>
				</tr>
				<tr>
					<th>��ȭ��ȣ</th>
					<td><input type="text" name="ab_tel" maxlength="20"></td>
				</tr>
				<tr>
					<th>����</th>
					<td><input type="date" name="ab_birth"></td>
				</tr>
				<tr>
					<th>ȸ��</th>
					<td><input type="text" name="ab_comdept" maxlength="20"></td>
				</tr>
				<tr>
					<th>�޸�</th>
					<td><input type="text" name="ab_memo"></td>
				</tr>
				<tr>
					<td colspan="2" aligh="center"><input type="submit" value="����">
						<input type="reset" value="���"> <input type="button"
						value="����" onClick="delcheck()"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>