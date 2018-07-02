<%@page import="bean.BBSDAO"%>
<%@page import="bean.BBSDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type ="text/css" href ="../css/main.css"> 
<body>
<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0
		style="margin: 0 auto;">
		<tr>
			<td>
				<div id="total">
					<%@ include file="top.jsp"%>
					<%@ include file="left.jsp"%>
					<div id="rightLay">
						<div id="report">
							<img src=/CommuProject/img/bbsreport.png id=picture>
							<%@ include file="bbsReport.jsp" %>
							<img src=/CommuProject/img/tradereport.png id=picture>
							<%@ include file="tradeReport.jsp" %>
						</div>
					</div>
				</div>
				
			</td>
		</tr>
	</table>

</body>
</html>