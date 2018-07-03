<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
					
					<form action="/CommuProject/SearchPwExe.jsp">
					<h3>비밀번호 찾기</h3>
아이디 <input type = "text" name="id"><br>
이름 <input type = "text" name="name"><br>

<input type = "submit">
</form>
</center>
					</div>
					
				</div>
				
			</td>
		</tr>
	</table>






</body>
</html>