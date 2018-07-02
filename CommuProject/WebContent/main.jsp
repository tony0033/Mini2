<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
var s;
</script>
<link rel="stylesheet" type ="text/css" href ="css/main.css"> 
<body>
	<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0
		style="margin: 0 auto;">
		<tr>
			<td>
				<div id="total">
					<jsp:include page="top.jsp"/>
					<jsp:include page="left.jsp"/>
					
					<div id="rightLay">
						<%if(session.getAttribute("id") != null){
							if(session.getAttribute("id").equals("admin")){
						%>
							<a href = "reportList.jsp"><img src =img/reportlist.png id = "picture"></a>
							<a href = "memberList.jsp"><img src =img/memberlist.png id = "picture"></a>
						<%
							}else{
							}
						}
						
						%>
						<div id="bbs">
							<a href = "bbs/bbsPage.jsp"><img src =img/bbs.png id = "picture"></a>
							<jsp:include page="bbsmain.jsp"/>
						</div>
						<div id="trade">
							<a href = "trade/tradePage.jsp"><img src =img/trade.png id = "picture"></a>
							<jsp:include page="trademain.jsp"/>
						</div>
					</div>
				</div>
				
			</td>
		</tr>
	</table>
</body>
</html>