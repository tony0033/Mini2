<%@page import="bean.MemberDAO"%>
<%@page import="bean.MemberDTO"%>
<%@page import="bean.BBSDTO"%>
<%@page import="bean.BBSDAO"%>
<%@page import="com.mysql.jdbc.PreparedStatement.ParseInfo"%>
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
		int no = Integer.parseInt(request.getParameter("no"));
		
		BBSDAO dao = new BBSDAO();
		BBSDTO dto = dao.select(no);
		MemberDAO dao1 = new MemberDAO();
		
		if(dto.getReport()<5){
			dao.updateReport(dto);
	%>
		<script type="text/javascript">
			alert("신고 하였습니다.");
			location.replace("bbs.jsp?no=<%=no%>");
		</script>
	<%
		}else{
			dao1.updateExp("a");
			dao.delete(no);
	%>
		<script type="text/javascript">
				alert("신고수가 5회가 넘었으므로 게시물을 삭제합니다!")
				history.back(2);
		</script>
	<%
		}
	%>
</body>
</html>