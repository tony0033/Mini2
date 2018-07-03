<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type ="text/css" href ="/CommuProject/css/main.css">
<style>
p{
font-size: 40px;
color:pink;


}


</style> 
</head>
<body>
<jsp:useBean id="dtoN" class="bean.MemberDTO">
	<jsp:setProperty name="dtoN" property="*" />
</jsp:useBean>

<%
	request.setCharacterEncoding("utf-8");
	 MemberDAO daoN = new MemberDAO();
	daoN.insert(dtoN);
%>
<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0
		style="margin: 0 auto;">
		<tr>
			<td>
				<div id="total">
					<%@ include file="/top.jsp"%>
					<%@ include file="/left.jsp"%>
					<div id="rightLay">
					<center><br><br>
					<p>회원가입을 환영 합니다</p>
					<a href="main.jsp">로그인 하러 가기 </a>
					</center>
					</div>
				</div>
				
			</td>
		</tr>
	</table>



</body>
</html>