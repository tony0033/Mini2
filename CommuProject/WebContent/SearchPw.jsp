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
							<br> <br> <br>

							<form action="/CommuProject/SearchPwExe.jsp">
								<h3>비밀번호 찾기</h3>
								<table border="1"> 
								<tr align="center">
									<td>아이디:</td> 
									<td><input type="text" name="id"></td>
									<td> </td>
								</tr>
								<tr align="center">
									<td>비밀번호: </td>
									<td><input type="text" name="pw"></td>
									<td> </td>
								</tr>
								<tr align="center">
									<td>이름: </td>
									<td> <input type="text" name="name"> </td>
									<td> </td>
								</tr>
								<tr align="center">
									<td colspan="3"><input type="submit"></td>
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