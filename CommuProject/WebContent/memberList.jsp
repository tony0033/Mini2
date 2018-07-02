<%@page import="java.util.ArrayList"%>
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
						<div id = "report">
							<body>
								<center>
									<table border="1">
										<tr>
											<td align="center" width="100px">아이디</td>
											<td align="center" width="100px">이름</td>
											<td align="center" width="100px">유료포인트</td>
											<td align="center" width="100px">무료포인트</td>
											<td align="center" width="100px">신고횟수</td>
											<td align="center" width="100px">최근로그인</td>

										</tr>
										<%
											MemberDAO dao1 = new MemberDAO();
											int pageNum;
											if (request.getParameter("pageNum") == null) {
												pageNum = 1;
											} else {
												pageNum = Integer.parseInt(request.getParameter("pageNum"));
											}

											int start = (pageNum - 1) * 15;
											int end = (pageNum * 15);
											ArrayList list = dao1.memberAll();
											for (int i = 0; i < list.size(); i++) {
												MemberDTO dto1 = (MemberDTO) list.get(i);
										%>
										<tr>
											<td align="center" width="100px"><%=dto1.getId()%></td>
											<td align="center" width="100px"><%=dto1.getName()%></td>
											<td align="center" width="100px"><%=dto1.getPay()%></td>
											<td align="center" width="100px"><%=dto1.getFree()%></td>
											<td align="center" width="100px"><%=dto1.getExp()%></td>
											<td align="center" width="100px"><%=dto1.getLast()%></td>
										</tr>
										<%
											}
										%>
									</table>
									<table width="630px">
										<tr>
											<td align="center">
												<%
													int size = 15;
													int tot;
													int cnt = dao1.memberCount();
													tot = cnt / size;
													if (cnt % size != 0) {
														tot++;
													}
													for (int i = 0; i < tot; i++) {
												%> <a href="bbsPage.jsp?pageNum=<%=i + 1%>">[<%=(i + 1)%>]
											</a> <%
 	}
 %>
											</td>
										</tr>
									</table>
								</center>
							</body>
						</div>
					</div>
				</div>
				
			</td>
		</tr>
	</table>
</body>
</html>