<%@page import="bean.TradeDTO"%>
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
<%
	int no = Integer.parseInt(request.getParameter("no"));
	TradeDAO dao = new TradeDAO();
	TradeDTO dto = dao.select(no);
%>
<script type="text/javascript">
	function info(){
		alert("추천하기 완료!");
	}
	function check(){
		var check = confirm("삭제하시겠습니까?");
		if(check){
			location.replace("deleteBBS.jsp?no=<%=dto.getNo()%>");
		}else{
			return;
		}
	}
</script>

<center>
	<table border = "1">
		<tr>
			<td align = "center" width = "70px">제품이름</td>
			<td align = "center" width = "280px"><%=dto.getName() %></td>
		</tr>
		<tr>
			<td align = "center" width = "70px">가격</td>
			<td align = "center" width = "280px"><%= dto.getPrice()%></td>
		</tr>
	</table>
	<table>
		<tr>
			<td align = "right" width = "350px">
				<%
					String id = "b";
					/* String id = (String)session.getAttribute("id");
						로 수정하기!!
					*/				
					if(id.equals(dto.getWriter())){
				%>
						<button type = "button" onclick = "location.href ='changeTrade.jsp?no=<%=dto.getNo()%>'">수정</button>
						<button type = "button" onclick = check();>제거</button>
				<%
					}else{
				%>
						<button type = "button" onclick ="buy.jsp">구매</button>
				<%
					}
				%>
				<button type = "button" onclick = "location.href = 'likeUp2.jsp?no=<%= dto.getNo()%>';info();">추천하기</button>
				<button type = "button" onclick = "location.href = 'tradeList.jsp'">돌아가기</button>
			</td>
		</tr>
	</table>
</center>

</body>
</html>