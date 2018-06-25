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
	BBSDAO dao = new BBSDAO(); 
	BBSDTO dto = dao.select(no);
	
%>
<script type="text/javascript">
	function info(){
		alert("추천하기 완료!");
	}
</script>
<script type="text/javascript" src = "delete.js">
	function del(no){
		var check = confirm("삭제하시겠습니까?");
		if(check == true){
			del1(no);
		}else{
			return;
		}
	}
</script>
</head>
<body>

<center>
	<%= dto.getNo() %>
	<table border = "1">
		<tr>
			<td align = "center" width = "50px">제목</td>
			<td align = "center" width = "300px"><%= dto.getTitle() %></td>
		</tr>
		<tr>
			<td align = "center" width = "50px">내용</td>
			<td align = "center" width = "300px" height = "300px"><%= dto.getContent()%></td>
		</tr>
	</table>
	<table>
		<tr>
			<td align = "right" width = "350px">
				<%
					String id = "b";
					/* String id = (String)session.getAttribute("id");
						로 수정하기!!
					*/				
					if(id.equals(dto.getWriter())){
				%>
						<button type = "button" onclick = "location.href = 'changeBBS.jsp?no=<%=dto.getNo()%>'">수정</button>
						<button type = "button" onclick = del(<%=dto.getNo() %>);>제거</button>
				<%		
					}else if(id.equals("")){
					}
				%>
				<button type = "button" onclick = "location.href = 'likeUp.jsp?no=<%= dto.getNo()%>';info();">추천하기</button>
				<button type = "button" onclick = "location.href = 'bbsList.jsp'">돌아가기</button>
			</td>
		</tr>
	</table>
</center>
</body>
</html>