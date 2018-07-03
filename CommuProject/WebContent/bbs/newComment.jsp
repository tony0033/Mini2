<%@page import="bean.CommentDAO"%>
<%@page import="bean.CommentDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	int no = Integer.parseInt(request.getParameter("no"));
	String content = request.getParameter("content");
	String writer = (String)session.getAttribute("id");
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	CommentDTO dto = new CommentDTO();
	dto.setNo(no);
	dto.setContent(content);
	dto.setWriter(writer);
	dto.setDate(sdf.format(date));
	CommentDAO dao = new CommentDAO();
	dao.insert(dto);
	%>
	<jsp:forward page="bbs.jsp?no=<%=no %>"></jsp:forward>
</body>
</html>