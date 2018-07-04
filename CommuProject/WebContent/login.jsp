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
		MemberDAO dao = new MemberDAO();

		if (session.getAttribute("id") == null) {
	%>

		<form action="/CommuProject/login2.jsp">
			<table class="type1">
				<thead>
				<tr>
					<th colspan="2">로그인</th> 
				</tr>
				</thead>
				<tr>
					<td><input type="text" name="id" value="아이디"
						onfocus="this.value=''"></td>
					<td rowspan="2" valign="center"><input type="submit" value="로그인"></td>
				</tr>
				<tr>
					<td><input type="text" name="pw" value="비밀번호"
						onfocus="this.type='password',this.value=''"></td>
				</tr>
			</table>
		</form>
		<center>
		<table>
			<tr>
				<td><a href=/CommuProject/join.jsp target="_blank">회원가입</a></td>
				<td><a href="/CommuProject/SearchPw.jsp">비밀번호 찾기</a></td>
			</tr>
		</table>
		</center>

	<%
		} else {
			String id1 = (String)session.getAttribute("id");
			MemberDTO dto = dao.select(id1);
	%>
	<table class="type1" width="250px">
	<thead>
		<th><%=session.getAttribute("id")%>님 환영합니다. 
			<a href="CommuProject/logout.jsp">로그아웃</a>
		</th>
	</thead>
	<tbody>
		<tr><td>유료포인트:<%=dto.getPay()%><br> 
		기본포인트:<%=dto.getFree()%><br>
		신고 횟수:<%=dto.getExp()%></td></tr>
	</tbody>
	</table>
	<%
		}
	%>




</body>
</html>