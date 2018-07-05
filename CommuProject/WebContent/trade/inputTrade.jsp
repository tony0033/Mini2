<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<%@page import="bean.MemberDAO"%>
<%@page import="bean.TradeDTO"%>
<%@page import="bean.TradeDAO"%>
<%@page import="com.sun.jimi.core.Jimi"%>
<%@page import="com.sun.jimi.core.JimiException"%>
<%@page import="com.sun.jimi.core.JimiUtils"%>
<%@page import="java.awt.Image"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "dtoF" class = "bean.TradeDTO">
      <jsp:setProperty name = "dtoF" property = "*" />
      </jsp:useBean>
	<%
	String realFolder = "C:/Users/user/git/CommuProject/WebContent/img";
	 String filename1 = "";
	 int maxSize = 1024*1024*5;
	 String encType = "euc-kr";
	 String savefile = "img";
	 DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	 
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,policy);
	  Enumeration<?> files = multi.getFileNames();
	     String file1 = (String)files.nextElement();
	     filename1 = multi.getFilesystemName(file1);
	
	 
	 String fullpath = realFolder + "\\" + filename1;
		String con = "<img src = /CommuProject/img/"+filename1+" width= 500px height= 400px>"+multi.getParameter("content");

		String writer = (String)session.getAttribute("id");
		dtoF.setWriter(writer);
		dtoF.setName(multi.getParameter("name"));
		dtoF.setPrice(multi.getParameter("price"));
		dtoF.setContent(con);
		TradeDAO dao = new TradeDAO();
		dao.insert(dtoF);
		MemberDAO dao2 = new MemberDAO();
		dao2.updatefree(writer, 100);
		
		String orgImg = fullpath;//원본파일
        String thumbImg = realFolder + "\\thum_" + filename1;//썸네일파일
        int thumbWidth = 100 ;//썸네일 가로
        int thumbHeight = 100 ;//썸네일 세로
 
        Image thumbnail = JimiUtils.getThumbnail(orgImg, thumbWidth, thumbHeight, Jimi.IN_MEMORY);
        Jimi.putImage(thumbnail, thumbImg);


	%>

	 <script type="text/javascript">
		confirm("작성완료");
	</script>
	
	 <jsp:forward page="tradePage.jsp"></jsp:forward> 
</body>
</html>