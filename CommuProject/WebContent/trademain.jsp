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
<table class="type1">
	<tr>
		<th align = "center" width = "10px" scope="cols">no</th>
		<th align = "center" width = "110px" scope="cols">사진</th>
		<th align = "center" width = "200px"scope="cols">이 름</th>
		<th align = "center" width = "125px"scope="cols">가 격</th>
		<th align = "center" width = "100px"scope="cols">작성자</th>
		<th align = "center" width = "80px"scope="cols">조회수</th>
	</tr>
	<%
	String imgthum = null;
	String imgthum1 = null;
	String imgthum2 = null;
	String imgc= null;
	int endd=0;
		TradeDAO dao2 = new TradeDAO();
		ArrayList<TradeDTO> list2 = dao2.selectAll(0,5);
		for(int i = 0 ; i < list2.size() ; i ++){
			TradeDTO dto = (TradeDTO)list2.get(i);
			imgc = dto.getContent();
			endd = imgc.indexOf(".");
			imgthum1 = imgc.substring(11,29);
			imgthum2 = imgc.substring(29,(endd+4));
			imgthum = imgthum1 + "thum_"+ imgthum2;
			imgthum.trim();
	%>
		<tr>
			<th align = "center" width = "10px"scope="rows"><%= dto.getNo() %></th>
			<td align="center" width="110px"><img src=<%=imgthum %>></td>
			<td align = "center" width = "200px"><a href = "trade/tCountUp.jsp?no=<%=dto.getNo() %>"><%=dto.getName() %></a></td>
			<td align = "center" width = "125px"><%=dto.getPrice() %></td>
			<td align = "center" width = "100px"><%=dto.getWriter() %></td>
			<td align = "center" width = "80px"><%=dto.getCount() %></td>
		</tr>	
	<%
		}
	%>
</table>
<table width = "700px">
	<tr>
		<td align = "right">
			<button type = "button" onclick = "location.href = 'trade/idCheck.jsp'">등록</button>
			<button type = "button" onclick = "location.href = 'trade/idCheck1.jsp'">내 목록</button>
		</td>
	</tr>
</table>
</center>
</body>
</html>