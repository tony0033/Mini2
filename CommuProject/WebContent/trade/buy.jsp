<%@page import="bean.TradeDTO"%>
<%@page import="bean.TradeDAO"%>
<%@page import="bean.MemberDTO"%>
<%@page import="bean.MemberDAO"%>
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
		String id = (String)session.getAttribute("id");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.select(id);
		
		int no = Integer.parseInt(request.getParameter("no"));
		TradeDAO dao1 = new TradeDAO();
		TradeDTO dto1 = dao1.select(no);
		
		int pay = Integer.parseInt(dto.getPay());
		int price = Integer.parseInt(dto1.getPrice());
		
		if(pay>=price){
	%>
			<script type="text/javascript">
				var check = confirm("구매하시겠습니까?");
				if(check){
					location.replace("upBuy.jsp?no=<%=dto1.getNo()%>");
				}else{
					alert("구매를 취소했습니다.");
					location.replace("trade.jsp?no=<%=dto1.getNo()%>");
				}
			</script>
	<%		
		}else{
	%>
			<script type="text/javascript">
				alert("잔액이 부족합니다!!");
				location.replace("trade.jsp?no=<%=dto1.getNo()%>");
			</script>
	<%
		}
	%>
</body>
</html>