<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
	
	.cimg{
		width: 220px;
		height: 220px;
		margin: 25px 10px 15px 10px;
		border: 0px solid black;
		border-radius: 15px;
		box-shadow: 0px 0px 1px gray;
	}
	
	.content_title{
		width: 220px;
		height: auto;
		font-size: 15px;
		font-weight: bold;
		padding: 5px;
		margin: 0px 10px;
	}

	.content_read{
		width: 220px;
		height: 150px;
		font-size: 15px;
		font-weight: right;
		color: gray;
		margin: 0px 10px;
		resize: none;
		padding: 5px;
		box-sizing: border-box;
		border: solid 0px #1E90FF;
	}
	
	h2.category_name{
		font-family: 'Jua';
		font-size: 45px;
		font-weight: bold;
		color: gray;
	}
	
	b.content_title, textarea.content_read{
		font-family: 'Jua'
	}
</style>
</head>
<body>
	<h2 class="category_name">리빙/가구</h2>
	<table>
   		<tr>
   			<c:forEach var="catimg" begin="1" end="13">   		
	   			<td class="catcontent">
	   				<img class="cimg" src="${root}/image/${catimg}.jpg"><br>
	   				<b class="content_title">제목이들어간다아아</b><br>
	   				<textarea class="content_read">길어지면 이상해짐문제있음</textarea>
	   			</td>
	   			<c:if test="${catimg%4==0}">
	   				</tr><tr>
	   			</c:if> 
 			</c:forEach>
   		</tr>
   	</table>
</body>
</html>