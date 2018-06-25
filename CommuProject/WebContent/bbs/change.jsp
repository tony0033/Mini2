<%@page import="java.util.Date"%>
<%@page import="bean.BBSDTO"%>
<%@page import="bean.BBSDAO"%>
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
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Date date1 = new Date();
		String date = (date1.getYear()-100) + "-" + date1.getMonth() + "-"
					  + date1.getDay();
		
		BBSDAO dao = new BBSDAO();
		BBSDTO dto = new BBSDTO();
		dto.setNo(no);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setDate(date);
		
		dao.update(dto);
	%>
	
	<script type="text/javascript">
		alert("수정 완료 되었습니다!");
		location.replace("bbs.jsp?no=<%=no%>")
	</script>
</body>
</html>