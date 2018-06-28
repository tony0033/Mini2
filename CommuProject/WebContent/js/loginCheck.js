function idCheck(id){
	if(id==null){
		alert("로그인을 해주십시오!");
		history.back();
	}else{
		location.href = "newBBS.jsp";
	}
}	
