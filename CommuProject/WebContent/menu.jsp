<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

</style>
</head>

<body>
<%
String id = (String)session.getAttribute("id");

%>
<div id = "menu">
<table id="gametable" border="1">
				<tr>
					<td align="center" height="20px">빠른이동</td>
				</tr>
				<tr>
					<td align="center" valign="top">
					<a href = "/CommuProject/main.jsp"> 메 인 </a><br>
					<a href = "/CommuProject/main.jsp">게시판</a><br>
					<a href = "/CommuProject/main.jsp">거래소</a><br>
					<%if(id!=null){
						%>
						<a href = "/CommuProject/main.jsp">장바구니</a><br>
						<%
					if(id.equals("admin")){
						%><button onclick='window.open("Rock.jsp","","width=400,height=400")'>관리자 페이지</button><br>
						
						<%
					}}
					%>
					</td>
					
				</tr>
			</table>

</div>
</body>
</html>