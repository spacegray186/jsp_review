<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>   
<%--
	<jsp:include page="ssi.jsp"></jsp:include>
 --%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>sungjukRead.jsp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
	<h3>* 성적 상세보기 *</h3>
    <p>
    	<a href="sungjukForm.jsp">[성적쓰기]</a>
    	<a href="sungjukList.jsp">[성적목록]</a>
    </p>
<%
	int sno=Integer.parseInt(request.getParameter("sno"));
	dto=dao.read(sno); 
	if(dto==null){
	    out.println("해당 글없음!!");
	}else{
%>
		<table class="table">
		<tr>
			<th class="info">이름</th>
			<td><%=dto.getUname()%></td>
		</tr>
		<tr>
			<th class="info">국어</th>
			<td><%=dto.getKor()%></td>
		</tr>
		<tr>
			<th class="info">영어</th>
			<td><%=dto.getEng()%></td>
		</tr>
		<tr>
			<th class="info">수학</th>
			<td><%=dto.getMat()%></td>
		</tr>
		<tr>
			<th class="info">평균</th>
			<td><%=dto.getAver()%></td>
		</tr>
		<tr>
			<th class="info">주소</th>
			<td><%=dto.getAddr()%></td>
		</tr>
		<tr>
			<th class="info">작성일</th>
			<td><%=dto.getWdate()%></td>
		</tr>
		</table>
		<br><br>
		<a href="sungjukUpdate.jsp?sno=<%=sno%>">[수정]</a>
		&nbsp;&nbsp;
		<a href="sungjukDel.jsp?sno=<%=sno%>">[삭제]</a>
<%	    
	}//if end
%>
  </div>
   
</body>
</html>