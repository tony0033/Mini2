<%@page import="bean.TradeDAO"%>
<%@page import="bean.TradeDTO"%>
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
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		
		
		TradeDAO dao = new TradeDAO();
		TradeDTO dto = new TradeDTO();
		dto.setNo(no);
		dto.setName(name);
		dto.setPrice(price);
		
		dao.update(dto);
	%>
	
	<script type="text/javascript">
		alert("수정 완료 되었습니다!");
		location.replace("trade.jsp?no=<%=no%>")
	</script>
</body>
</html>