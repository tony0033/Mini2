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
%>
	<script type="text/javascript">
		var check = confirm("삭제하시겠습니까?");
		if(check){
			location.href="deleteOK.jsp?id=<%=id%>";
		}else{
			location.href="memberList.jsp";
		}
	</script>
</body>
</html>