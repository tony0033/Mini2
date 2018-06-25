<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
var roll=1;
 playroll = setInterval(function() {
	roll++;
	if(roll>3){roll=1;}
	$("#roll").attr("src","img/roll"+roll+".jpg");

}, 1000);
});
function rock(ran){
	
	clearInterval(playroll);
	$("#roll").attr("src","img/roll"+ran+".jpg");
	
	if(ran == 1){
	Alert('<img src = "img/roll1.jpg"> 비겼습니다');
	}
	else if (ran == 2){
		Alert('<img src = "img/roll2.jpg"> 졌습니다');
	}
	else {
		Alert('<img src = "img/roll3.jpg"> 이겼습니다');
	}
	location.reload();
}
function scissors(ran){
	
	clearInterval(playroll);
	
	if(ran == 1){
	Alert('<img src = "img/roll1.jpg"> 졌습니다');
	}
	else if (ran == 2){
		Alert('<img src = "img/roll2.jpg"> 이겼습니다');
	}
	else {
		Alert('<img src = "img/roll3.jpg"> 비겼습니다');
	}
	location.reload();
}
function paper(ran){
	
	clearInterval(playroll);
	
	if(ran == 1){
	Alert('<img src = "img/roll1.jpg"> 이겼습니다');
	}
	else if (ran == 2){
		Alert('<img src = "img/roll2.jpg"> 비겼습니다');
	}
	else {
		Alert('<img src = "img/roll3.jpg"> 졌습니다');
	}
	location.reload();
}


function Alert (msg){
	var k = window.open("","","width=300,height=200");
	k.document.open();
	k.document.write(msg);
	k.document.close();
	
}
</script>
<style type="text/css">
img{
border: 1px solid gray;
display: block;
margin: auto;
}
</style>
</head>

<body>
<% Random ran = new Random(); 
int num = ran.nextInt(3)+1;

%>
<center>
<img src = "img/roll1.jpg" id="roll">

<button onclick="scissors(<%= num %>)">가위</button>

<button onclick="rock(<%= num %>)">바위</button>
<button onclick="paper(<%= num %>)">보</button>
</center>
</body>
</html>