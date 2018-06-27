<%@page import="bean.MemberDTO"%>
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
<% 
	String id = request.getParameter("id");
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = dao.select(id);
%>
<form action="Memberupdate.jsp">
	<table>
	<tr>
		<td class="t1">아이디</td>
		<td class="t2"><input type="text" name="id" readonly="readonly" value="<%= dto.getId()%>"></td>
	</tr>
	<tr>
		<td class="t1">비밀번호</td>
		<td class="t2"><input type="text" name="pw" value="<%= dto.getPw()%>"></td>
	</tr>
	<tr>
		<td class="t1">이름</td>
		<td class="t2"><input type="text" name="name" value="<%= dto.getName()%>"></td>
	</tr>
	</table>
	<table>
	<tr>
	 <td>수정된 내용 저장<input type="submit" value="저장"></td>
	</tr> 	
	</table>
</form>
</body>
</html>