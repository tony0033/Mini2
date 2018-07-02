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
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		
		String writer = (String)session.getAttribute("id");
		
		TradeDTO dto = new TradeDTO();
		dto.setName(name);
		dto.setPrice(price);
		dto.setWriter(writer);
		TradeDAO dao = new TradeDAO();
		dao.insert(dto);
		MemberDAO dao2 = new MemberDAO();
		dao2.updatefree(writer, 100);
	%>
	
	<script type="text/javascript">
		confirm("작성완료");
	</script>
	
	<jsp:forward page="tradeList.jsp"></jsp:forward>
</body>
</html>