
<%@page import="bean.MemberDTO"%>
<%@page import="bean.MemberDAO"%>
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
						<div id="bbs">
							<center>
								<%
									String idA = request.getParameter("id");
								
									MemberDAO daoA = new MemberDAO();
									MemberDTO dtoA = daoA.select(idA);
								%>
								<form action = "Memberupdate.jsp">
								<table width="400px">
									<tr>
										<td align="center">아이디</td>
										<td align="center"><input type="text" name="id" value=<%=dtoA.getId() %> readonly="readonly"></td>
									</tr>
									<tr>
										<td align="center">비밀번호</td>
										<td align="center"><input type="text" name="pw" value=<%=dtoA.getPw() %>></td>
									</tr>
									<tr>
										<td align="center">이름</td>
										<td align="center"><input type="text" name="name" value=<%=dtoA.getName() %>></td>
									</tr>
									<tr>
										<td align="center">유료포인트</td>
										<td align="center"><input type="text" name="pay" value=<%=dtoA.getPay() %>></td>
									</tr>
									<tr>
										<td align="center">무료포인트</td>
										<td align="center"><input type="text" name="free" value=<%=dtoA.getFree() %>></td>
									</tr>
									<tr>
										<td align="center">삭제횟수</td>
										<td align="center"><input type="text" name="exp" value=<%=dtoA.getExp() %>></td>
									</tr>
									<input type="hidden" name="last" value=<%=dtoA.getLast() %>>
								</table>
									<input type="submit" value="수정완료">
									<button type="button" onclick=history.back();>돌아가기</button>
								</form>
							</center>
						</div>
					</div>
				</div>
				
			</td>
		</tr>
	</table>
</body>
</html>