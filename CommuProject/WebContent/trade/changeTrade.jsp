<%@page import="bean.TradeDAO"%>
<%@page import="bean.TradeDTO"%>
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
							TradeDAO dao1 = new TradeDAO();
							TradeDTO dto1 = dao1.select(no);
						%>

						<center>
							<form action="tChange.jsp">
								<input name="no" value=<%=dto1.getNo()%> type="hidden">
								<table class="type2">
									<tr>
										<th align="center" width="70px">제품이름</th>
										<td align="center" width="280px"><input type="text"
											name="name" value=<%=dto1.getName()%>></td>
									</tr>
									<tr>
										<th align="center" width="70px">가격</th>
										<td align="center" width="280px"><input type="text"
											name="price" value=<%=dto1.getPrice()%>></td>
									</tr>
								</table>
								<table>
									<tr>
										<td align="right" width="160px"><input type="submit" id="submit"
											value="수정완료">
											<button type="button"
												onclick="location.href = 'trade.jsp?no=<%=dto1.getNo()%>'">돌아가기</button>
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
