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
	String id = (String)session.getAttribute("id");

	if(id==null){
%>
		<script type="text/javascript">
			alert("로그인을 해주십시오!");
			history.back();
		</script>		
<% 
	}else{
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.select(id);
%>
		<script type="text/javascript">
			location.href = "myTrade.jsp";
		</script>
<%		
	}
	
%>

</body>
</html>