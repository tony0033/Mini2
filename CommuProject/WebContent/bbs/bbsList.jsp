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
<table border = "1">
	<tr>
		<td align = "center" width = "10px">no</td>
		<td align = "center" width = "300px">제목</td>
		<td align = "center" width = "100px">작성자</td>
	</tr>
	<%
		BBSDAO dao = new BBSDAO();
		ArrayList list = dao.selectAll();
		for(int i = 0 ; i < list.size() ; i ++){
			BBSDTO dto = (BBSDTO)list.get(i);
	%>
		<tr>
			<td align = "center" width = "10px"><%= dto.getNo() %></td>
			<td align = "center" width = "300px"><a href = "bbs.jsp?no=<%=dto.getNo() %>"><%= dto.getTitle() %></a></td>
			<td align = "center" width = "100px"><%= dto.getWriter() %></td>
		</tr>	
	<%
		}
	%>
</table>
<table width = "430px">
	<tr>
		<td align = "right">
			<button type = "button" onclick = "location.href = 'newBBS.jsp'">작성</button>
		</td>
	</tr>
</table>
</center>
</body>
</html>