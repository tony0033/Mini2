<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#check{
color:red;
}
</style>
</head>
<body>
	<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0
		style="margin: 0 auto;">
		<tr>
			<td>
				<div id="total">
					<%@ include file="top.jsp"%>
					<div id = "rightray">
											<center>
						<form action="join2.jsp" method="post">
						<br>
						
							<table class="type2"> 
							<thead>
								<tr>
									<th colspan="3" align = "center">회원가입</th>
								</tr>
							</thead>
							<tbody>
								<tr align="center">
									<th scope="rows">아이디:</th> 
									<td><input type="text" name="id" onkeyup=checkID()></td>
									<td width=200px;><div id="idcheck"></div> </td>
								</tr>
								<tr align="center">
									<th scope="rows">비밀번호: </th>
									<td><input type="password" name="pw" onkeyup=check()></td>
									<td></td>
								</tr>
								<tr align="center">
									<th scope="rows">비밀번호 확인: </th>
									<td><input type = "password" name="pw2" onkeyup=check()></td>
									<td><div id ="check"></div></td>
									
								</tr>
								<tr align="center">
									<th scope="rows">이름: </th>
									<td> <input type="text" name="name"> </td>
									<td> </td>
								</tr>
								<tr align="center">
									<td colspan="3">
										<input type="submit" id="submit" value="회원가입">
									</td>
								</tr>
								</tbody>
								</table>
								
								</form>
								</center>
								
								</div>
		</div>
	
			</td>
		</tr>
	</table>
	
	<script type="text/javascript">
	function check(){
		var f1 = document.forms[0];
		  var pw1 = f1.pw.value;
		  var pw2 = f1.pw2.value;
		  if(pw1!=pw2){
		document.querySelector("#check").innerText="비밀번호가 다릅니다.";
		  }
		  else	{
			  document.querySelector("#check").innerText="";
			  
		  }	
		
	}
	function checkID(){
		var f1 = document.forms[0];
		  var id = f1.id.value;
		  if(id.length>10){
		document.querySelector("#idcheck").innerText="ID는 10글자 미만입니다.";
		  }
		  else	{
			  document.querySelector("#idCheck").innerText="";
			  
		  }	
		
	}
	</script>
</head>
<body>
</html>