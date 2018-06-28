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
<body>
	<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0
		style="margin: 0 auto;">
		<tr>
			<td>
				<div id="total">
					<%@ include file="top.jsp"%>
					<center>
						<h2>회원가입</h2>
						<form action="join.jsp" method="post">
							<table>
								<tr>
									<td>아이디: <input type="text" name="id">
									</td>
								</tr>
								<tr>
									<td>비밀번호: <input type="text" name="pw">
									</td>
								</tr>
								<tr>
									<td>이름: <input type="text" name="name">
									</td>
								</tr>
								<tr>
									<td><input type="submit" value="회원가입"></td>
								</tr>
								</table>
								</form>
								</center>
	</div>
	
			</td>
		</tr>
	</table>
	
	
</body>
</html>