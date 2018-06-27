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
		<td align = "center" width = "50px">조회수</td>
		<td align = "center" width = "50px">추천수</td>
		
	</tr>
	<%
		BBSDAO dao1 = new BBSDAO();
		ArrayList list = dao1.selectAll(0,5);
		for(int i = 0 ; i < list.size() ; i ++){
			BBSDTO dto = (BBSDTO)list.get(i);
	%>
		<tr>
			<td align = "center" width = "10px"><%= dto.getNo() %></td>
			<td align = "center" width = "300px"><a href = "bbs/countUp.jsp?no=<%=dto.getNo() %>"><%= dto.getTitle() %></a></td>
			<td align = "center" width = "100px"><%= dto.getWriter() %></td>
			<td align = "center" width = "50px"><%= dto.getCount() %></td>
			<td align = "center" width = "50px"><%= dto.getBlike() %></td>
		</tr>	
	<%
		}
	%>
</table>
<table width = "530px">
	<tr>
		<td align = "right">
			<button type = "button" onclick = "location.href = 'newBBS.jsp'">작성</button>
		</td>
	</tr>
</table>
</center>
</body>
</html>