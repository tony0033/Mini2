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
<link rel="stylesheet" type ="text/css" href ="../css/main.css"> 
</head>
<body>
<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0 style="margin:0 auto;"><tr><td>
				<div id="total">
					<div id="leftLay">
						<div id="logo">
							<img src=../img/23.jpeg width="150" height="100">
						</div>

						<div id="login">
							<%@include file="../login.jsp"%>
						</div>
						<div id="game">
							<table id="gametable" border="1">
								<tr>
									<td align="center" height="20px">포인트게임</td>
								</tr>
								<tr>
									<td align="center" valign="top"><a href="Rock.jsp">가위바위보</a></td>
								</tr>
							</table>
						</div>
						<div id="chatting">
							<%@include file="../chatting.jsp"%>
						</div>
					</div>
					<div id="rightLay">
						<div id="adver">
							<img src=../img/adver.jpg width="700" height="100">
						</div>
						<div id="bbs">
							<table border = "1">
	<tr>
		<td align = "center" width = "10px">no</td>
		<td align = "center" width = "225px">이 름</td>
		<td align = "center" width = "225px">가 격</td>
		<td align = "center" width = "100px">작성자</td>
		<td align = "center" width = "50px">조회수</td>
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
<table width = "430px">
	<tr>
		<td align = "center">
			<%
				int size = 15;
				int tot;
				int cnt = dao3.tradeCount();
				tot = cnt/size;
				if(cnt % size != 0){
					tot++;
				}
				for(int i=0;i<tot;i++){
			%>
				<a href = "tradePage.jsp?pageNum=<%= i+1 %>">[<%=(i+1) %>]</a>
			<%
				}
			%>
		</td>
		
		<td align = "right">
			<button type = "button" onclick = "location.href = 'newTrade.jsp'">등록</button>
		</td>
	</tr>
						</div>
						
					</div>
				</div>

				<div id=bottom></div>
		</td>
	</tr>
</table>

</table>
</body>
</html>