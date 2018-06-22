<%@page import="bean.MemberDAO"%>
<%@page import="bean.MemberDTO"%>
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

	

if(session.getAttribute("id")==null){
String id = request.getParameter("id");
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = dao.select(id); 
session.setAttribute("id", id);

String name = dto.getName();
session.setAttribute("name", name);
} 
%>

아이디:<%=session.getAttribute("id")%>
이름:<%=session.getAttribute("name") %>

<a href="logout.jsp">로그아웃</a>
</body>
</html>