<%@page import="bean.BBSDTO"%>
<%@page import="java.util.ArrayList"%>
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
<center>
<table>
	<tr>
		<td>no</td>
		<td>제목</td>
		<td>작성자</td>
	</tr>
	<%
		BBSDAO dao = new BBSDAO();
		ArrayList list = dao.selectAll();
		for(int i = 0 ; i < list.size() ; i ++){
			BBSDTO dto = (BBSDTO)list.get(i);
	%>
		<tr>
			<td><%= dto.getNo() %></td>
			<td><%= dto.getTitle() %></td>
			<td><%= dto.getWriter() %></td>
		</tr>	
	<%
		}
	%>
</table>
</center>
</body>
</html>