<%@page import="bean.BBSDAO"%>
<%@page import="bean.BBSDTO"%>
<%@page import="java.util.ArrayList"%>
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
				<th align="center" width="250px">제목</th>
				<th align="center" width="100px">작성자</th>
				<th align="center" width="50px">조회수</th>
				<th align="center" width="50px">추천수</th>
				<th align="cetner" width="50px">신고수</th>
				<th align="center" width="100px">날 짜</th>

			</tr>
			</thead>
			<%
				BBSDAO dao1 = new BBSDAO();
				int pageNum;
				if (request.getParameter("pageNum") == null) {
					pageNum = 1;
				} else {
					pageNum = Integer.parseInt(request.getParameter("pageNum"));
				}

				int start = (pageNum - 1) * 15;
				int end = (pageNum * 15);
				ArrayList list = dao1.selectRAll(start, end);
				for (int i = 0; i < list.size(); i++) {
					BBSDTO dto1 = (BBSDTO) list.get(i);
					if (dto1.getReport() >= 1) {
			%>
			<tbody>
			<tr>
				<th align="center" width="10px"><%=dto1.getNo()%></th>
				<td align="center" width="250px"><a
					href="bbs/countUp.jsp?no=<%=dto1.getNo()%>"><%=dto1.getTitle()%></a></td>
				<td align="center" width="100px"><%=dto1.getWriter()%></td>
				<td align="center" width="50px"><%=dto1.getCount()%></td>
				<td align="center" width="50px"><%=dto1.getBlike()%></td>
				<td align="center" width="50px"><%=dto1.getReport()%></td>
				<td align="center" width="100px"><%=dto1.getDate()%></td>
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
					int size = 15;
					int tot;
					int cnt = dao1.bbsRCount();
					tot = cnt / size;
					if (cnt % size != 0) {
						tot++;
					}
					for (int i = 0; i < tot; i++) {
				%> <a href="reportList.jsp?pageNum=<%=i + 1%>">[<%=(i + 1)%>]
				</a> <%
 	}
 %></td>
			</tr>
		</table>
	</center>

</body>
</html>