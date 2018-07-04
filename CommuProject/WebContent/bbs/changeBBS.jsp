<%@page import="bean.BBSDAO"%>
<%@page import="bean.BBSDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type ="text/css" href ="/CommuProject/css/main.css"> 
<body>
	<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0
		style="margin: 0 auto;">
		<tr>
			<td>
				<div id="total">
					<%@ include file="/top.jsp"%>
					<%@ include file="/left.jsp"%>
					<div id="rightLay">
							<%
								int no = Integer.parseInt(request.getParameter("no"));
								BBSDAO daoB = new BBSDAO();
								BBSDTO dtoB = daoB.select(no);
							%>
							<center>
								<form action="change.jsp">
									<input name="no" value=<%=dtoB.getNo()%> type="hidden">
									<table border="1">
										<tr>
											<td align="center" width="50px">제목</td>
											<td align="center" width="300px"><textarea rows="1"
													cols="42" style="resize: none;" name="title"><%=dtoB.getTitle()%></textarea>
											</td>
										</tr>
										<tr>
											<td align="center" width="50px">내용</td>
											<td align="center" width="300px" height="300px"><textarea
													rows="20" cols="42" style="resize: none;" name="content"><%=dtoB.getContent()%></textarea>
											</td>
										</tr>
									</table>
									<table>
										<tr>
											<td align="right" width="200px"><input type="submit"
												value="수정완료">
												<button type="button"
													onclick="location.href ='bbs.jsp?no=<%=dtoB.getNo()%>'">돌아가기</button>
											</td>
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
