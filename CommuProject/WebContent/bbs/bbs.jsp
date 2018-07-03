<%@page import="java.util.ArrayList"%>
<%@page import="bean.CommentDTO"%>
<%@page import="bean.CommentDAO"%>
<%@page import="bean.BBSDTO"%>
<%@page import="bean.BBSDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<% 
	int no = Integer.parseInt(request.getParameter("no"));
	BBSDAO daoB = new BBSDAO(); 
	BBSDTO dtoB = daoB.select(no);
%>


<script type="text/javascript">
	function info(){
		alert("추천하기 완료!");
	}
	function check(){
		var check = confirm("삭제하시겠습니까?");
		if(check){
			location.replace("deleteBBS.jsp?no=<%=dtoB.getNo()%>");
		}else{
			return;
		}
	}
	function report(){
		var check = confirm("신고하시겠습니까?");
		if(check){
			location.replace("report.jsp?no=<%=dtoB.getNo()%>");
		}else{
			return;
		}
	}
</script>
<link rel="stylesheet" type ="text/css" href ="/CommuProject/css/main.css"> 
</head>

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
									<table border="1">
										<tr>
											<td align="center" width="100px">제목</td>
											<td align="center" width="350px"><%=dtoB.getTitle()%></td>
										</tr>
										<tr>
											<td align="center" width="100px">내용</td>
											<td align="center" width="350px" height="300px"><%=dtoB.getContent()%></td>
										</tr>
									</table><br>
									<table>
										<tr>
											<td align="right" width="450px">
												<%
												if(session.getAttribute("id") != null){
												String pid = (String) session.getAttribute("id");
												if (pid.equals(dtoB.getWriter())) {
											%>
												<button type="button"
													onclick="location.href ='changeBBS.jsp?no=<%=dtoB.getNo()%>'">수정</button>
												<button type="button" onclick=check();>제거</button> <%
 	} else{
 %>
												<button type="button" onclick=report();>신고하기</button> <%
 	}
 	}
 %>
												<button type="button"
													onclick="location.href = 'likeUp.jsp?no=<%=dtoB.getNo()%>';info();">추천하기</button>
												<button type="button" onclick=history.back();>돌아가기</button>
											</td>
										</tr>
									</table>
								</center>
							</div>
							<div id = "comment">
						
							<center>
								<table width="500px" border="1">
									<tr>
										<td width=100px; align = "center">작성자</td>
										<td width=300px; align = "center">내용</td>
										<td width=100px; align = "center">날짜</td>
									</tr>
									<%
										CommentDAO daoC = new CommentDAO();
										ArrayList listC = daoC.select(no);

										for (int i = 0; i < listC.size(); i++) {
											CommentDTO dtoC = (CommentDTO) listC.get(i);
									%>
									<tr>
										<td align="center" width="100px"><%=dtoC.getWriter()%></td>
										<td align="center" width="300px"><%=dtoC.getContent()%></td>
										<td align="center" width="100px"><%=dtoC.getDate()%></td>
									</tr>

									<%
										}
									%>
								</table><br>
									<%
										if (session.getAttribute("id") != null) {
									%> 
										<form action=newComment.jsp>
										<table>
										<tr>
											<td colspan="2" align="center">
											<textarea cols="50" name="content">
											</textarea> 
											</td>
											<td align = "center">
												<input type="submit" value="댓글 작성">
											</td>
										</tr>
										</table>
										</form>
								 	 <%} %> 
							</center>
						</div>
					</div>
				</div>
				
			</td>
		</tr>
	</table> 
</body>
</html>
