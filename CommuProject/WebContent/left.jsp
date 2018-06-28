<%@page import="bean.MemberDAO"%>
<%@page import="bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div id="leftLay">
		<div id="login">
			<%@include file="login.jsp"%>
		</div>
		<div id="game">
			<table id="gametable" border="1">
				<tr>
					<td align="center" height="20px">포인트게임</td>
				</tr>
				<tr>
					<td align="center" valign="top"><a href="Rock.jsp">가위바위보</a></td>
				</tr>
			</table>
		</div>
		<div id="chatting">
			<%@include file="chatting.jsp"%>
		</div>
	</div>
</body>
</html>