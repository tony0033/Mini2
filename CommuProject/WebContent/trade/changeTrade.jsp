<%@page import="bean.TradeDAO"%>
<%@page import="bean.TradeDTO"%>
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
	%>
	
<center>
<form action = "tChange.jsp">
	<input name="no" value=<%=dto.getNo() %> type="hidden">
	<table border = "1">
		<tr>
			<td align = "center" width = "70px">제품이름</td>
			<td align = "center" width = "280px">
				<input type="text" name="name" value=<%=dto.getName() %>>
			</td>
		</tr>
		<tr>
			<td align = "center" width = "70px">가격</td>
			<td align = "center" width = "280px">
				<input type="text" name="price" value=<%=dto.getPrice() %>>
			</td>
		</tr>
	</table>
	<table>
	<tr>
		<td align="right" width="160px">
			<input type = "submit" value = "수정완료">
			<button type = "button" onclick = "location.href = 'trade.jsp?no=<%=dto.getNo() %>'">돌아가기</button>
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>