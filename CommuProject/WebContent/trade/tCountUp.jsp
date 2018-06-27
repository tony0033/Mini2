<%@page import="bean.TradeDTO"%>
<%@page import="bean.TradeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int no = Integer.parseInt(request.getParameter("no"));
	
		TradeDAO dao = new TradeDAO();
		TradeDTO dto = dao.select(no);
		
		dao.updateCount(dto);
	%>
	
	<jsp:forward page="trade.jsp?no=<%=no%>,"></jsp:forward>

</body>
</html>