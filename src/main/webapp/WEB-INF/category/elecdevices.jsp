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

	.categoryimg{
		display: flex;
		width: 980px;
		height: 200px;
		margin: auto;
	}
	
	.categoryimg table{
		margin-left: 80px;
	}
	
	.categoryimg img:hover{
		margin: -15px 0px 0px -5px;
	}
	
	.category-content-wrap{
		display: flex;
		width:980px;
		flex-wrap: wrap;
	}
	.category-content{
		display:flex;
		width: 220px;
		margin: 20px;
	}
	/*---------------------------*/
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
	<h2 class="category_name">전자기기</h2>

	
	<div class="category-content-wrap">
   		<c:forEach var="dto" items="${list}">  
   			<div class="category-content"> 		
	   			<div class="catcontent">
		   			<a href="detail?productIdx=${dto.productIdx}">
		   				<img class="cimg" src="/image/${dto.firstImage}.jpg"><br>
		   				<b class="content_title">${dto.productTitle}</b><br>
		   				<span class="content_read">댓글수 ${dto.account}</span>
		   			</a>
	   			</div>
   			</div>
	   			<%-- <c:if test="${catimg%4==0}">
	   				</tr><tr>
	   			</c:if>  --%>
 		</c:forEach>
   	</div>
</body>
</html>