<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<jsp:useBean id="ab" class="jspbook.addrbook.AddrBean" />
<jsp:useBean id="addrbook" class="jspbook.addrbook.AddrBook" />
<jsp:setProperty name="addrbook" property="*" />
<%
	String action = request.getParameter("action");

	if (action.equals("list")) {
	} else if (action.equals("insert")) {
		System.out.println("insert가 진행 중");
		if (ab.insertDB(addrbook)) {
			response.sendRedirect("addrbook_control.jsp?action=list");
			//response.sendRedirect("addrbook_list.jsp");
		} else {
			//throw new Exception("DB input Error");
		}
	} else if (action.equals("edit")) {
	} else if (action.equals("update")) {
	} else if (action.equals("delete")) {
	}
%>