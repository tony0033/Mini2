<%@page import="bean.CommentDAO"%>
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
<table class ="type1">
	<tr>
		<th align = "center" width = "10px" scope="cols">no</th>
		<th align = "center" width = "300px" scope="cols">제목</th>
		<th align = "center" width = "100px" scope="cols">작성자</th>
		<th align = "center" width = "50px" scope="cols">조회수</th>
		<th align = "center" width = "50px" scope="cols">추천수</th>
		<th align = "center" width = "100px" scope="cols">날 짜</th>
		
	</tr>
	<%
		BBSDAO dao1 = new BBSDAO();
		ArrayList<BBSDTO> list1 = dao1.selectAll(0,5);
		for(int i = 0 ; i < list1.size() ; i ++){
			BBSDTO dto = (BBSDTO)list1.get(i);
	%>
		<tr>
			<th align = "center" width = "10px" scope="rows"><%= dto.getNo() %></th>
			<td align = "center" width = "300px"><a href = "bbs/countUp.jsp?no=<%=dto.getNo() %>"><%= dto.getTitle() %></a></td>
			<td align = "center" width = "100px"><%= dto.getWriter() %></td>
			<td align = "center" width = "50px"><%= dto.getCount() %></td>
			<td align = "center" width = "50px"><%= dto.getBlike() %></td>
			<td align = "center" width = "100px"><%= dto.getDate() %></td>
		</tr>	
	<%
		}
	%>
</table>
<table width = "700px">
	<tr>
		<td align = "right">
			<button type = "button" onclick = "location.href = 'bbs/idCheck.jsp'">작성</button>
			<button type = "button" onclick = "location.href = 'bbs/bbsPage.jsp'">전체목록</button>
		</td>
	</tr>
</table>
</center>
</body>
</html>