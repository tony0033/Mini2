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
						<body>
							<center>
								<table border="1">
									<tr>
										<td align="center" width="50px">제목</td>
										<td align="center" width="300px"><%=dtoB.getTitle()%></td>
									</tr>
									<tr>
										<td align="center" width="50px">내용</td>
										<td align="center" width="300px" height="300px"><%=dtoB.getContent()%></td>
									</tr>
								</table>
								<table>
									<tr>
										<td align="right" width="350px">
											<%
												if(session.getAttribute("id") != null){
												String pid = (String) session.getAttribute("id");
												if (pid.equals(dtoB.getWriter())) {
											%>
											<button type="button"
												onclick="location.href ='changeBBS.jsp?no=<%=dtoB.getNo()%>'">수정</button>
											<button type="button" onclick=check();>제거</button>
										   <%
 	} else{
 %>
											<button type="button" onclick=report();>신고하기</button> 
											<%
 	}
 	}
 %>
											<button type="button"
												onclick="location.href = 'likeUp.jsp?no=<%=dtoB.getNo()%>';info();">추천하기</button>
											<button type="button" onclick="location.href = '../main.jsp'">돌아가기</button>
										</td>
									</tr>
								</table>
							</center>
						</body>
					</div>
				</div>
				
			</td>
		</tr>
	</table>
</body>
</html>
