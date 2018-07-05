<%@page import="java.text.SimpleDateFormat"%>
<%@page import="bean.TradeDAO"%>
<%@page import="java.util.ArrayList"%>
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
	<center>
		<table class="type1">
			<thead>
			<tr>
				<th align="center" width="10px">no</th>
				<th align="center" width="200px">이 름</th>
				<th align="center" width="200px">가 격</th>
				<th align="center" width="100px">작성자</th>
				<th align="center" width="50px">조회수</th>
				<th align="center" width="50px">신고수</th>
			</tr>
			</thead>
			<%
				TradeDAO dao3 = new TradeDAO();
				int pageNum1;
				if (request.getParameter("pageNum1") == null) {
					pageNum1 = 1;
				} else {
					pageNum1 = Integer.parseInt(request.getParameter("pageNum1"));
				}
				int start1 = (pageNum1 - 1) * 15;
				int end1 = pageNum1 * 15;
				ArrayList list1 = dao3.selectTAll(start1, end1);
				for (int i = 0; i < list1.size(); i++) {
					TradeDTO dto = (TradeDTO) list1.get(i);
					if(dto.getReport()>=1){
			%>
			<tbody>
			<tr>
				<th align="center" width="10px"><%=dto.getNo()%></th>
				<td align="center" width="200px">
					<a href="trade/tCountUp.jsp?no=<%=dto.getNo()%>"><%=dto.getName()%></a>
				</td>
				<td align="center" width="200px"><%=dto.getPrice()%></td>
				<td align="center" width="100px"><%=dto.getWriter()%></td>
				<td align="center" width="50px"><%=dto.getCount()%></td>
				<td align="center" width="50px"><%=dto.getReport()%></td>
			</tr>
			<%
					}
				}
			%>
			</tbody>
		</table>
		<table width="630px">
			<tr>
				<td align="center"><%
					int size1 = 15;
					int tot1;
					int cnt1 = dao3.tradeRCount();
					tot1 = cnt1 / size1;
					if (cnt1 % size1 != 0) {
						tot1++;
					}
					for (int i = 0; i < tot1; i++) {
				%> <a href="tradeReport.jsp?pageNum1=<%=i + 1%>">[<%=(i + 1)%>]
				</a> <%
 	} 
 %>
				</td>
			</tr>
			</table>
			</center>
</body>
</html>