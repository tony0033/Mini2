<%@page import="bean.CommentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.CommentDAO"%>
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
<%
	int no = Integer.parseInt(request.getParameter("no"));
	
%>
<form action = newComment.jsp>
	<table width = "500px" border="1">
		<tr>
			<td align = "center" width = "100px">작성자</td>
			<td align = "center" width = "400px">내용</td>
			<td align = "center" width = "100px">날짜</td>
		</tr>
			<%
				CommentDAO dao = new CommentDAO();
				ArrayList list = dao.select(no);
				for(int i=0;i<list.size();i++){
					CommentDTO dto = (CommentDTO)list.get(i);
			%>
				<tr>
					<td align = "center" width = "100px"><%=dto.getWriter() %></td>
					<td align = "center" width = "400px"><%=dto.getContent() %></td>
					<td align = "center" width = "100px"><%=dto.getDate() %></td>
				</tr>
			
			<%
				}
			%>
	</table>
	<table width = "500px" border ="1">
		<tr>
		
		</tr>
	</table>
</form>
</center>
</body>
</html>