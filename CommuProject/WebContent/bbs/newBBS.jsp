<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<form action = "inputBBS.jsp">
<table>
	<tr>
		<td width = "50px" align = "center">제목</td>
		<td width = "150px"><input type = "text" name = "title"></td>
	</tr>
	<tr>
		<td width = "50px" align = "center">내용</td>
		<td width = "150px">
			<textarea rows="10" cols="22"></textarea>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td align="right" width="200px">
			<input type = "submit" value = "작성">
			<button type = "button" onclick = "location.href = '../main.jsp'">돌아가기</button>
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>