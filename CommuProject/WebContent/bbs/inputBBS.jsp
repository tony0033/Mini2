<%@page import="bean.BBSDAO"%>
<%@page import="bean.BBSDTO"%>
<%@page import="java.util.Date"%>
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
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		String writer = (String)session.getAttribute("id");
		
		Date date1 = new Date();
		String date = (date1.getYear()-100) + "-" + date1.getMonth() + "-"
					  + date1.getDay();
		
		BBSDTO dto = new BBSDTO();
		dto.setTitle(title);
		dto.setContent(content);
		dto.setWriter(writer);
		dto.setDate(date);
		BBSDAO dao = new BBSDAO();
		dao.insert(dto);
	%>
	
	<script type="text/javascript">
		confirm("작성완료");
	</script>
	
	<jsp:forward page="bbsPage.jsp?"></jsp:forward>
</body>
</html>