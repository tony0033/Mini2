<%@page import="bean.MemberDTO"%>
<%@page import="bean.MemberDAO"%>
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
		String id = "a";
		//String id = (String)session.getAttribute("id");
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.select(id);

		int no = Integer.parseInt(request.getParameter("no"));
		TradeDAO dao1 = new TradeDAO();
		TradeDTO dto1 = dao1.select(no);
		
		int pay = Integer.parseInt(dto.getPay());
		int price = Integer.parseInt(dto1.getPrice());
		
		pay = pay - price;
		String pay1 = String.valueOf(pay);
		dto.setPay(pay1);
		dao.updatePay(dto);
		
		dao1.updateStatus(dto1);
	%>
	
	<script type="text/javascript">
		alert("구입하였습니다!");
		location.replace("trade.jsp?no=<%=no%>");
	</script>
</body>
</html>