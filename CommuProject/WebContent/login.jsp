<%@page import="bean.MemberDTO"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#fx{
		position: absolute;
		top:5px;
		right: 5px;
		width:400px;
		height: 150px;
		background: lime;
	}
</style>
</head>
<body>

<% 
if(session.getAttribute("id")==null){
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

<%} else{ 
	String id1 = request.getParameter("id");
	MemberDAO dao =new MemberDAO();
	MemberDTO dto =dao.select(id1); 
%>

<%=session.getAttribute("id")%>님 환영합니다.<br>
유료포인트:<%=dto.getPay()%><br>
기본포인트:<%=dto.getFree()%><br>
경험치:<%=dto.getExp()%><br>

<a href="logout.jsp">로그아웃</a>

<a href="MemberInfo.jsp?id=<%=dto.getId()%>">개인정보변경</a>

<%} %>
</body>
</html>