<%@page import="bean.TradeDAO"%>
<%@page import="bean.TradeDTO"%>
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
<%
int no = Integer.parseInt(request.getParameter("no"));
TradeDAO daoB = new TradeDAO();
TradeDTO dtoB = daoB.select(no);

 ArrayList<TradeDTO> list = (ArrayList)session.getAttribute("basketlist");
 
 if(list==null)
 {
  list = new ArrayList<TradeDTO>();
  session.setAttribute("basketlist", list);
 }
 list.add(dtoB);
%>
<script type="text/javascript">
alert("장바구니에 추가되었습니다.");
</script>

</body>
</html>