<%@page import="bean.MemberDAO"%>
<%@page import="bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image: url("img/back.jpeg");
	
}

#total {
	width: 1100px;
}

#leftLay {
	width: 300px;
	float: left;
}


#logo {
	width: 300px;
	height: 150px;
	padding-left: 50px;
	padding-top: 30px;
}

#login {
	width: 300px;
	height: 150px;
	padding-left: 30px;
	paddint-top:30px;
}

#game {
	width: 300px;
}

#gametable {
	width: 250px;
	height: 250px;
	padding-left: 30px;
}
#chatting{
	width: 300px
	height: 250px;
	
	padding-top:50px;
}

#rightLay {
	width: 800px;
	float: right;
}

#adver{
	float: left;
	width: 700px;
	height : 150px;
	padding-left: 50px;
	padding-top: 30px;
}

#bbs{
padding-left:100px;
padding-top:50px;
	float:  right;
	width: 800px;
	height: 300px;
	
}

#picture{
	width:110px; 
	height:50px;
	padding-left:60px; 
}
#trade{
	padding-left: 100px;
	padding-top:30px;
	float: right;
	width: 800px;
	height: 300px;
}

button{
	background-image: url("img/back.jpeg");
}

textarea{
	background-image: url("img/back.jpeg");
}

</style>
</head>

<body>
<table width="<?=$width?>" align="center" cellpadding=0 cellspacing=0 style="margin:0 auto;"><tr><td>
				<div id="total">
					<div id="leftLay">
						<div id="logo">
							<img src=img/23.jpeg width="150" height="100">
						</div>

						<div id="login">
							<%@include file="login.jsp"%>
						</div>
						<div id="game">
							<table id="gametable" border="1">
								<tr>
									<td align="center" height="20px">포인트게임</td>
								</tr>
								<tr>
									<td align="center" valign="top"><a href="Rock.jsp">가위바위보</a></td>
								</tr>
							</table>
						</div>
						<div id="chatting">
							<%@include file="chatting.jsp"%>
						</div>
					</div>
					<div id="rightLay">
						<div id="adver">
							<img src=img/adver.jpg width="700" height="100">
						</div>
						<div id="bbs">
							<a href = "bbs/bbsPage.jsp"><img src =img/bbs.png id = "picture"></a>
							<%@include file="bbsmain.jsp"%>
						</div>
						<div id="trade">
							<a href = "trade/tradePage.jsp"><img src =img/trade.png id = "picture"></a>
							<%@include file="trademain.jsp"%>
						</div>
					</div>
				</div>

				<div id=bottom></div>
		</td>
	</tr>
</table>




</body>
</html>