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


String id1 = request.getParameter("id");
String pw = request.getParameter("pw");
MemberDAO dao =new MemberDAO();
MemberDTO dto =dao.select(id1); 


if(pw.equals(dto.getPw())) {

 
String id = request.getParameter("id");
session.setAttribute("id", id);
%>
<jsp:forward page="login.jsp"></jsp:forward> 
<%
}else{
	
	
		%>
	<div id="fx">
<table>
<form action="login2.jsp">
<tr>
<td>아이디:<input type="text" name="id"></td>
<td rowspan="2"><input type="submit" value="로그인"></td>
</tr>
<tr>
<td>패스워드:<input type="text" name="pw"></td>
</tr>
</form>
</table>

<br><br>
<table>
<form action="join.html">
<td><input type="submit" value="회원가입"></td>
</form>
<form action="SearchPw.jsp">
<td><input type="submit" value="비밀번호찾기"></td>
</form>
</table>
</div>
	<%
	
}
%>

</body>
</html>