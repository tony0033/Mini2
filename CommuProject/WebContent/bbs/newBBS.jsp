<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type ="text/css" href ="css/main.css"> 
</head>
<body>
<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0 style="margin:0 auto;"><tr><td>
				<div id="total">
					<div id="leftLay">
						<div id="logo">
							<img src=img/23.jpeg width="150" height="100">
						</div>

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
					<div id="rightLay">
						<div id="adver">
							<img src=img/adver.jpg width="700" height="100">
						</div>
						<div id="bbs">
							<body>
								<center>
									<form action="inputBBS.jsp">
										<table>
											<tr>
												<td width="50px" align="center">제목</td>
												<td width="150px"><input type="text" name="title"></td>
											</tr>
											<tr>
												<td width="50px" align="center">내용</td>
												<td width="150px"><textarea rows="10" cols="22"></textarea>
												</td>
											</tr>
										</table>
										<table>
											<tr>
												<td align="right" width="200px"><input type="submit"value="작성">
													<button type="button" onclick="location.href = '../main.jsp'">돌아가기</button>
												</td>
											</tr>
										</table>
									</form>
								</center>
							</body>
						</div>
					</div>
				</div>

				<div id=bottom></div>
		</td>
	</tr>
</table>
</body>
</html>