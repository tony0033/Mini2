<%@page import="bean.BBSDAO"%>
<%@page import="bean.BBSDTO"%>
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
%>
<center>
<form action = "chage.jsp">
<table>
	<tr>
		<td width = "50px" align = "center">제목</td>
		<td width = "150px"><input type = "text" name = "title" value = <%= dto.getTitle() %>></td>
	</tr>
	<tr>
		<td width = "50px" align = "center">내용</td>
		<td width = "150px">
			<textarea rows="10" cols="22"><%= dto.getContent() %></textarea>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td align="right" width="200px">
			<input type = "submit" value = "수정완료">
			<button type = "button" onclick = "location.href = 'bbs.jsp?no = <%= dto.getNo()%>'">돌아가기</button>
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>