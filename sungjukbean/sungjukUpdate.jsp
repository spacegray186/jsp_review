<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>sungjukUpdate.jsp</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<h3>* 성적 수정 *</h3>
    <p>
    	<a href="sungjukForm.jsp">[성적쓰기]</a>
    	<a href="sungjukList.jsp">[성적목록]</a>
    </p>
<%
	//수정하고자 하는 글 번호 sungjukUpdate.jsp?sno=3
	int sno=Integer.parseInt(request.getParameter("sno"));	
	dto=dao.read(sno);
	if(dto==null){
		out.println("해당 글없음!!");
	}else{
%>		
	
<%	
	}
%>	
  </div>
</body>
</html>