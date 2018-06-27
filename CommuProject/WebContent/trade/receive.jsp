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
		int no = Integer.parseInt(request.getParameter("no"));
		TradeDAO dao = new TradeDAO();
		TradeDTO dto = dao.select(no);
		
		MemberDAO dao1 = new MemberDAO();
		MemberDTO dto1 = dao1.select(dto.getWriter());
		
		int pay = Integer.parseInt(dto1.getPay());
		int price = Integer.parseInt(dto.getPrice());
		
		pay = pay + price;
		String pay1 = String.valueOf(pay);
		dto1.setPay(pay1);
		dao1.updatePay(dto1);
	%>
	<script type="text/javascript">
		alert("돈을 받았습니다.");
		location.replace("deleteTrade.jsp?no=<%=dto.getNo()%>");
	</script>
</body>
</html>