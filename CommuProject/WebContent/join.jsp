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
	request.setCharacterEncoding("utf-8");
	 MemberDAO dao = new MemberDAO();
	dao.insert(dto);
%>
회원가입이 되었습니다.

<a href="main.jsp">메인으로</a>
</body>
</html>