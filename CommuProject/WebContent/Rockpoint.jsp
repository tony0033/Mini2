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
int rock = Integer.parseInt(request.getParameter("rock"));
String idR = (String) session.getAttribute("id");
int ran =  Integer.parseInt(request.getParameter("ran"));
int a =0;
MemberDAO daoR = new MemberDAO();
if(rock==1){
	if(ran ==1){
		out.print("<img src = 'img/roll1.jpg'> 졌습니다.(-500p)");
		 a = -500;
		}
		else if (ran == 2){
			out.print("<img src = 'img/roll2.jpg'> 이겼습니다!!(+500p)");
			 a = 500;
		}
		else {
			out.print("<img src = 'img/roll3.jpg'> 비겼습니다(+0p)");
			 a = 0;
		}
}
	else if (rock==2){
		if(ran == 1){
		out.print("<img src = 'img/roll1.jpg'> 비겼습니다(+0p)");
		 a = 0;
		}
		else if (ran == 2){
			out.print("<img src = 'img/roll2.jpg'> 이겼습니다!!(+500p)");
			 a = 500;
		}
		else {
			out.print("<img src = 'img/roll3.jpg'> 졌습니다.(-500p)");
			 a = -500;
		}
}
	else {
		if(ran == 1){
		out.print("<img src = 'img/roll1.jpg'> 이겼습니다!!(+500p)");
		 a = 500;
		}
		else if (ran == 2){
			out.print("<img src = 'img/roll2.jpg'> 비겼습니다(+0p)");
			 a = 0;
		}
		else {
			out.print("<img src = 'img/roll3.jpg'> 졌습니다.(-500p)");
			 a = -500;
		}
}
daoR.updatefree(idR, a);

%>

</body>
</html>