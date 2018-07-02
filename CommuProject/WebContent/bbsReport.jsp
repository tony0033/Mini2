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
		<table border="1">
			<tr>
				<td align="center" width="10px">no</td>
				<td align="center" width="250px">제목</td>
				<td align="center" width="100px">작성자</td>
				<td align="center" width="50px">조회수</td>
				<td align="center" width="50px">추천수</td>
				<td align="cetner" width="50px">신고수</td>
				<td align="center" width="100px">날 짜</td>

			</tr>
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
				ArrayList list = dao1.selectAll(start, end);
				for (int i = 0; i < list.size(); i++) {
					BBSDTO dto1 = (BBSDTO) list.get(i);
					if (dto1.getReport() >= 1) {
			%>
			<tr>
				<td align="center" width="10px"><%=dto1.getNo()%></td>
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