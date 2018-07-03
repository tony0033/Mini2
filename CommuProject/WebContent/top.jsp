<%@page import="bean.MemberDAO"%>
<%@page import="bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type ="text/css" href ="css/main.css"> 
</head>
<body>
	<div id="top">
		<div id="logo">
			<a href="/CommuProject/main.jsp"><img src=/CommuProject/img/logo.png width="200" height="150"></a>
		</div>
		<div id="adver">
			<img src="/CommuProject/img/adver.gif" width="700" height="100">
		</div>
		<jsp:include page="menu.jsp"></jsp:include>
	</div>
</body>
</html>