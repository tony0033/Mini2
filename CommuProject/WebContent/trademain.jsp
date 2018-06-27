<%@page import="bean.TradeDTO"%>
<%@page import="java.util.ArrayList"%>
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
<center>
<table border = "1">
	<tr>
		<td align = "center" width = "10px">no</td>
		<td align = "center" width = "225px">이 름</td>
		<td align = "center" width = "225px">가 격</td>
		<td align = "center" width = "100px">작성자</td>
		<td align = "center" width = "50px">조회수</td>
	</tr>
	<%
		TradeDAO dao2 = new TradeDAO();
		ArrayList list2 = dao2.selectAll(0,5);
		for(int i = 0 ; i < list2.size() ; i ++){
			TradeDTO dto = (TradeDTO)list2.get(i);
	%>
		<tr>
			<td align = "center" width = "10px"><%= dto.getNo() %></td>
			<td align = "center" width = "225px"><a href = "trade/tCountUp.jsp?no=<%=dto.getNo() %>"><%=dto.getName() %></a></td>
			<td align = "center" width = "125px"><%=dto.getPrice() %></td>
			<td align = "center" width = "100px"><%=dto.getWriter() %></td>
			<td align = "center" width = "50px"><%=dto.getCount() %></td>
		</tr>	
	<%
		}
	%>
</table>
<table width = "630px">
	<tr>
		<td align = "right">
			<button type = "button" onclick = "location.href = 'newTrade.jsp'">등록</button>
		</td>
	</tr>
</table>
</center>
</body>
</html>