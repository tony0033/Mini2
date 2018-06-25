<%@page import="bean.BBSDTO"%>
<%@page import="bean.BBSDAO"%>
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
	
		BBSDAO dao = new BBSDAO();
		BBSDTO dto = dao.select(no);
		
		dao.updateBlike(dto);
	%>
	
	<jsp:forward page="bbs.jsp?no=<%=no %>"></jsp:forward>
</body>
</html>