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
*{
}
#total{
	
	width: 1200px;
	
	border:1px solid red;
}
#top {
	width: 1200px;
	height: 100px;
	background-color: white;
	border:1px solid red;
}
#adver{
float: left;
	padding-left: 100px;
	width: 750px;
border:1px solid red;
}
#logo{
float:  left;
	padding-left:50px;
	width:200px;
	border:1px solid red;
}

#content{
padding-top:150px;
	width:1200px;
border:1px solid red;
}
#login{

width:290px;
float:  left;
border:1px solid red;
padding-bottom: 100px;
}
#bbs{
border:1px solid red;
padding-left:100px;
float:  right;
	width: 800px;
	height: 400px;
	
}
#trade{
border:1px solid red;
	padding-left: 100px;
	float: right;
	width: 800px;
	height: 400px;

}
#bottom{
width:1200px;
float:right;
border:1px solid red;
background-color: blue;
height: 200px;
}
#game{
width:290px;
float: left;
border:1px solid red;
}
#gametable{

width: 300px;
height: 300px;
border: 1;

}
</style>
</head>
<body>
<div id = "total">
<div id = "top">
<div id = "logo"><img src=img/23.jpeg width="200" height="100"></div>
<div id = "adver"><img src=img/adver.jpg width="750" height="100"></div>
</div>
<div id = "content">
<div id = "login">
</div>
<div id = "bbs">
<%@include file="bbsmain.jsp" %>
</div>
<div id = "game">
<table id = "gametable" border="1">
<tr>
<td align="center" height="20px">포인트게임</td>
</tr>
<tr>
<td align="center" valign="top"><a href="Rock.jsp">가위바위보</a></td>
</tr>
</table></div>
<div id = "trade"><img src = "img/trade.jpg" width="800" height="400"> </div>
</div>

<div id = bottom> </div>
</div>





</body>
</html>