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
						<div id="trade">
							<center>
<form method="post" enctype="multipart/form-data" action = "inputTrade.jsp">
	<table class="type2">
		<tbody>
		<tr>
			<th align = "center" width = "70px">제품이름</th>
			<td align = "center" width = "280px">
			<textarea rows="1" cols="45"style="resize: none;" name = "name"></textarea>
			</td>
		</tr>
		<tr>
			<th align = "center" width = "70px">가격</th>
			<td align = "center" width = "280px">
			<textarea rows="1" cols="45"style="resize: none;" name = "price"></textarea>
			</td>
		</tr>
		<tr>
		<th align = "center" width = "70px">내용</th>
		<td align = "center" width = "280px">
		<textarea cols="45" rows="10" name="content" style="resize:none;"> </textarea>
		</td>
		</tr>
		<tr>
			<th align="center" width="70px">이미지 첨부</th>
			<td align="center" width="280px" ><input type="file" name="filename1" size=40></td>
				
		</tr>
		</tbody>
	</table>
	
	<table>
	<tr>
	<td align = "right" width = "400px">
			<input type = "submit" id="submit" value = "등록">
			<button type = "button" onclick = "location.href = 'tradePage.jsp'">돌아가기</button>
	</td>
	</tr>
	
	</table>
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