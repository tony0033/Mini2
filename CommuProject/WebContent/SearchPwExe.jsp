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
<jsp:useBean id="dao" class="bean.MemberDAO"></jsp:useBean>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
MemberDTO dto = new MemberDTO();
dto = dao.select(id);
if(name.equals(dto.getName())){
	%>
	<%=id %>님의 비밀번호는 <%=dto.getPw() %>입니다.
	
	<%
}
else {
	%>
	<script type="text/javascript">
	alert("일치하는 정보가 없습니다..");
	window.location.href="/CommuProject/SearchPw.jsp";
	</script>
	
	<%
}
%>


</body>
</html>