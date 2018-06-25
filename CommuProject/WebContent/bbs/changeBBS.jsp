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
<form action = "change.jsp">
<input name="no" value=<%=dto.getNo() %> type="hidden">
<table border = "1">
		<tr>
			<td align = "center" width = "50px">제목</td>
			<td align = "center" width = "300px">
				<textarea rows="1" cols="42" style="resize:none;" name = "title"><%=dto.getTitle() %></textarea>
			</td>
		</tr>
		<tr>
			<td align = "center" width = "50px">내용</td>
			<td align = "center" width = "300px" height = "300px">
				<textarea rows="20" cols="42" style="resize:none;" name = "content"><%=dto.getContent() %></textarea>
			</td>
		</tr>
	</table>
<table>
	<tr>
		<td align="right" width="200px">
			<input type = "submit" value = "수정완료">
			<button type = "button" onclick = "location.href ='bbs.jsp?no=<%=dto.getNo()%>'">돌아가기</button>
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>