<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="bean.MemberDTO"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.select(id1);
		Date d = new Date();
		SimpleDateFormat sdf = 	new SimpleDateFormat("yyyy-MM-dd");
	if (pw.equals(dto.getPw())) {

			String id = request.getParameter("id");
			session.setAttribute("id", id);
		if (!dto.getLast().equals(sdf.format(d))){
			dao.updatefree(id, 500);
			dto.setLast(sdf.format(d));
			dao.update(dto);
			%>
			<script type="text/javascript">
			alert("오늘 출석 하셨습니다 +500p");
			</script>
			<%
		}
		
	
	%>
	<script type="text/javascript">
	location.href="main.jsp"
	</script>
	<%
		} else {
			if (!id1.equals("admin")) {
	%>
	<script type="text/javascript">
		alert("비밀번호가 다릅니다.");
		</script>
	<%
		}
	%>
	<center>
		<div id="fx">
			<form action="/CommuProject/login2.jsp">

				<table>
					<tr>
						<td><input type="text" name="id" value="아이디"
							onfocus="this.value = ''"></td>
						<td rowspan="2"><input type="submit" value="로그인"></td>
					</tr>
					<tr>
						<td><input type="text" name="pw" value="비밀번호"
							onfocus="this.type='password',this.value=''"></td>
					</tr>
				</table>
			</form>

			<br> <br>

			<table border="1">
				<tr>
					<td><a href="join.jsp">회원가입</a></td>
					<td><a href="SearchPw.jsp">비밀번호 찾기</a></td>
				</tr>
			</table>



		</div>
		<% } 


	
	
	

%>
	</center>
</body>
</html>