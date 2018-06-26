
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
<form action = "inputTrade.jsp">
	<table border = "1">
		<tr>
			<td align = "center" width = "70px">제품이름</td>
			<td align = "center" width = "280px"><input type="text" name="name"></td>
		</tr>
		<tr>
			<td align = "center" width = "70px">가격</td>
			<td align = "center" width = "280px"><input type="text" name="price"></td>
		</tr>
	</table>
	<table>
	<tr>
		<td align="right" width="160px">
			<input type = "submit" value = "등록">
			<button type = "button" onclick = "location.href = 'tradeList.jsp'">돌아가기</button>
		</td>
	</tr>
</table>
</form>
</center>
</body>
</html>