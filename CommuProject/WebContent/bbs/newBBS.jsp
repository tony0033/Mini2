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
					<%@ include file="../top.jsp"%>
					<%@ include file="../left.jsp"%>
					<div id="rightLay">
						<div id="bbs">
							<body>
								<center>
									<form action="inputBBS.jsp">
										<table class="type2">
											<tbody>
											<tr>
												<th width="100px" align="center" scope="rows">제목</th>
												<td width="250px"><textarea rows="1" cols="60"style="resize: none;" name = "title"></textarea></td>
											</tr>
											<tr>
												<th width="100px" align="center" scope="rows">내용</th>
												<td width="250px"><textarea rows="20" cols="60"style="resize: none;" name = "content"></textarea>
												</td>
											</tr>
										</table>
										<table>
											<tr>
												<td align="right" width="500px">
													<input type="submit" id="submit"value="작성">
													<button type="button" onclick="location.href = 'bbsPage.jsp'">돌아가기</button>
												</td>
											</tr>
										</tbody>
										</table>
									</form>
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


