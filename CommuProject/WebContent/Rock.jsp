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
var point = 0;
 playroll = setInterval(function() {
	roll++;
	if(roll>3){roll=1;}
	$("#roll").attr("src","/CommuProject/img/roll"+roll+".jpg");

}, 1000);
});

function doDisplay(){
    var con = document.getElementById("show");
    if(con.style.display=='block'){
        con.style.display = 'none';
    }else{
        con.style.display = 'block';
    }
}



</script>
<style type="text/css">
#roll{
border: 1px solid gray;
display: block;
margin: auto;
width: 200px;
height: 200px;
}
p{
display: none;
}
*{

}
</style>
</head>

<body>
<% Random ran = new Random(); 
int num = ran.nextInt(3)+1;

%>
<center>
<h3>가위바위보</h3>
<img src = "/CommuProject/img/roll1.jpg" id="roll">

<button onclick="window.open('/CommuProject/Rockpoint.jsp?ran=<%=num %>&rock=1','결과','width=320,height=250')&location.reload()">가위</button>
<button onclick="window.open('/CommuProject/Rockpoint.jsp?ran=<%=num %>&rock=2','결과','width=320,height=250')&location.reload()">바위</button>
<button onclick="window.open('/CommuProject/Rockpoint.jsp?ran=<%=num %>&rock=3','결과','width=320,height=250')&location.reload()">보</button><br>
<button onclick="doDisplay()">경기 규칙</button>
<p id = "show"> 한번할때 500포인트씩 사용됩니다<br>
비길경우 전부 돌려받고 이길경우 2배의 포인트를 획득합니다.</p>
</center>
</body>
</html>