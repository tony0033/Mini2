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
MemberDAO dao =new MemberDAO();

if(session.getAttribute("id")==null){
%>
<div id="fx">
<form action="login2.jsp">

<table>
<tr>
<td><input type="text" name="id" value ="아이디" onfocus="this.value=''" ></td>
<td rowspan="2"><input type="submit" value="로그인"></td>
</tr>
<tr>
<td><input type="text" name="pw" value = "비밀번호" onfocus="this.type='password',this.value=''" ></td>
</tr>
</table>
</form>

<table>
<tr>
<td>회원가입</td>
<td>비밀번호 찾기</td>
</tr>
</table>
</div>

<%} else{ 
	String id1 = request.getParameter("id");
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