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
<<<<<<< HEAD


String id1 = request.getParameter("id");
String pw = request.getParameter("pw");
MemberDAO dao =new MemberDAO();
MemberDTO dto =dao.select(id1); 


if(id1.equals(dto.getId())&&pw.equals(dto.getPw())){



=======
>>>>>>> branch 'master' of https://github.com/tony0033/Mini2.git
if(session.getAttribute("id")==null){
 
String id = request.getParameter("id");
	MemberDAO dao = new MemberDAO();
	MemberDTO dto = dao.select(id); 
session.setAttribute("id", id);

<<<<<<< HEAD
=======
String name = dto.getName();
session.setAttribute("name", name);
>>>>>>> branch 'master' of https://github.com/tony0033/Mini2.git
} 
%>

<%=session.getAttribute("id")%>님 환영합니다.<br>
유료포인트:<%=dto.getPay()%><br>
기본포인트:<%=dto.getFree()%><br>
경험치:<%=dto.getExp()%><br>

<a href="logout.jsp">로그아웃</a>

<a href="MemberInfo.jsp?id=<%=dto.getId()%>">개인정보변경</a>
<%
}
else{
	out.print("아이디와 비번이 다릅니다.");
%>
	<a href="login.html">로그인 화면으로</a>
<% 	
}
%>
</body>
</html>