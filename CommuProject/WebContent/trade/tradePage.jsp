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
<link rel="stylesheet" type ="text/css" href ="/CommuProject/css/main.css"> 
<body>
	<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0
		style="margin: 0 auto;">
		<tr>
			<td>
				<div id="total">
					<%@ include file="/top.jsp"%>
					<%@ include file="/left.jsp"%>
					<div id="rightLay">

						<div id="bbs">
							<center>
							<table border="1">
								<tr>
									<td align="center" width="10px">no</td>
									<td align="center" width="225px">이 름</td>
									<td align="center" width="225px">가 격</td>
									<td align="center" width="100px">작성자</td>
									<td align="center" width="50px">조회수</td>
								</tr>
								<%
									TradeDAO dao3 = new TradeDAO();
									int pageNum;
									if (request.getParameter("pageNum") == null) {
										pageNum = 1;
									} else {
										pageNum = Integer.parseInt(request.getParameter("pageNum"));
									}
									int start = (pageNum - 1) * 15;
									int end = pageNum * 15;
									ArrayList list = dao3.selectAll(start, end);
									for (int i = 0; i < list.size(); i++) {
										TradeDTO dto = (TradeDTO) list.get(i);
								%>
								<tr>
									<td align="center" width="10px"><%=dto.getNo()%></td>
									<td align="center" width="225px"><a
										href="trade/tCountUp.jsp?no=<%=dto.getNo()%>"><%=dto.getName()%></a></td>
									<td align="center" width="125px"><%=dto.getPrice()%></td>
									<td align="center" width="100px"><%=dto.getWriter()%></td>
									<td align="center" width="50px"><%=dto.getCount()%></td>
								</tr>
								<%
									}
								%>
							</table>
							<table width="630px">
								<tr>
									<td align="center">
										<%
											int size = 15;
											int tot;
											int cnt = dao3.tradeCount();
											tot = cnt / size;
											if (cnt % size != 0) {
												tot++;
											}
											for (int i = 0; i < tot; i++) {
										%> <a href="tradePage.jsp?pageNum=<%=i + 1%>">[<%=(i + 1)%>]
									</a> <%
 	}
 %>
									</td>

									<td align="right">
										<button type="button" onclick="location.href = 'idCheck.jsp'">등록</button>
									</td>
								</tr>
								</center>
								</div>
					</div>
				
			</td>
		</tr>
	</table>
</body>
</html>

