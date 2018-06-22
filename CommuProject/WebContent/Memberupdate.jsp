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

<jsp:useBean id="dto" class="bean.MemberDTO">
	<jsp:setProperty name="dto" property="*" />
</jsp:useBean>

<% 
MemberDAO dao = new MemberDAO();
dao.update(dto);
response.sendRedirect("login.html");
%>
</body>
</html>