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
String idM = (String)session.getAttribute("id");

%>
<div id = "menu">
<table border="1">
				<tr>
					<td align="center" height="20px">빠른이동</td>
				</tr>
				<tr>
					<td align="center" valign="top">
					<a href = "/CommuProject/main.jsp"> 메 인 </a><br>
					<a href = "/CommuProject/bbs/bbsPage.jsp">게시판</a><br>
					<a href = "/CommuProject/trade/tradePage.jsp">거래소</a><br>
					<%if(idM!=null){
						%>
						<a href = "/CommuProject/trade/basketList.jsp">장바구니</a><br>
						<%
					if(idM.equals("admin")){
						%><a href = "/CommuProject/reportList">관리자페이지</a><br><br>
						
						<%
					}}
					%>
					</td>
					
				</tr>
			</table>

</div>
</body>
</html>