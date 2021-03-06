<%@page import="bean.TradeDTO"%>
<%@page import="bean.TradeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="/CommuProject/css/main.css">
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
							TradeDAO daoT = new TradeDAO();
							TradeDTO dtoT = daoT.select(no);
							
						%>
						
						<script type="text/javascript">
							function info(){
								alert("추천하기 완료!");
								}
							
								function check(){
								var check = confirm("삭제하시겠습니까?");
								if(check){
									location.replace("deleteTrade.jsp?no=<%=dtoT.getNo()%>");
								}else{
									return;
								}
								}
								
								function report(){
									var check = confirm("신고하시겠습니까?");
									if(check){
										location.replace("report.jsp?no=<%=dtoT.getNo()%>");
									}else{
										return;
									}
								}
						</script>

						<center>
							<table class="type2">
								<tr>
									<th align="center" width="70px">제품이름</th>
									<td align="center" width="280px"><%=dtoT.getName()%></td>
								</tr>
								<tr>
									<th align="center" width="70px">가격</th>
									<td align="center" width="280px"><%=dtoT.getPrice()%></td>
								</tr>
								<tr>
									<th align="center" width="70px">내용</th>
									<td align="center" width="70px"><%=dtoT.getContent()%></td>
								</tr>
								<tr>
									<th align="center" width="70px">판매현황</th>
									<%
										if (dtoT.getStatus() == 0) {
									%>
									<td align="center" width="280px">판매중</td>
									<%
										} else if (dtoT.getStatus() == 1){
									%>
									<td align="center" width="280px">판매완료</td>
									<%
										}else if(dtoT.getStatus() ==2){
									%>
									<td align="center" width="280px">받기완료</td>
									<%
										}
									%>
								</tr>
							</table>
							<table>
								<tr>
									<td align="right" width="600px"><%
										if (session.getAttribute("id") != null) {
												String pid = (String) session.getAttribute("id");
												if (pid.equals(dtoT.getWriter())) {
												if (dtoT.getStatus() == 0) {
									%>
													<button type="button" onclick=check();>제거</button> 
									<%
 										} else if(dtoT.getStatus() ==1){
 									%>
										<button type="button" onclick="location.href='receive.jsp?no=<%=dtoT.getNo()%>'">받기</button> 
									<%
									 	}else{
									 	}
											} else {
							 			if (dtoT.getStatus() == 0) {
									 %>
											<button type="button" onclick="location.href='buy.jsp?no=<%=dtoT.getNo()%>'">구매</button> 
									<%
									 	} else {
									 			}
							 		%>
							 				<button type="button" onclick=report();>신고하기</button>
							 		<%
									 		}
									 	}
									 %>
									 <button type = "button" onclick="location.href='basket.jsp?no=<%=no%>'">장바구니 추가</button>
						
										<button type="button" onclick="location.href='tradePage.jsp'">돌아가기</button>
									</td>
								</tr>
							</table>
						</center>

					</div>
				</div>

			</td>
		</tr>
	</table>
</body>
</html>
