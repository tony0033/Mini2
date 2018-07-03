<%@page import="bean.MemberDTO"%>
<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type ="text/css" href ="/CommuProject/css/main.css"> 

</head>
<body>
<% 
	String idI = request.getParameter("id");
	MemberDAO daoI = new MemberDAO();
	MemberDTO dtoI = daoI.select(idI);
%>
<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0
		style="margin: 0 auto;">
		<tr>
			<td>
				<div id="total">
					<%@ include file="top.jsp"%>
					<%@ include file="left.jsp"%>
					<div id="rightLay">
					<center>
					<br>
					<br>
					<br>
					<br>
					<br>
					<form action="/CommuProject/Memberupdate.jsp">
					<h3>개인정보 수정</h3>
	<table>
	<tr>
		<td class="t1">아이디</td>
		<td class="t2"><input type="text" name="id" readonly="readonly" value="<%= dtoI.getId()%>"></td>
	</tr>
	<tr>
		<td class="t1">비밀번호</td>
		<td class="t2"><input type="text" name="pw" value="<%= dtoI.getPw()%>"></td>
	</tr>
	<tr>
		<td class="t1">이름</td>
		<td class="t2"><input type="text" name="name" value="<%= dtoI.getName()%>"></td>
	</tr>
	</table>
	<table>
	<tr>
	 <td>수정된 내용 저장<input type="submit" value="저장"></td>
	</tr> 	
	</table>
</form>
</center>
					</div>
					
				</div>
				
			</td>
		</tr>
	</table>

</body>
</html>