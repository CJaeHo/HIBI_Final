<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/category.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">

</head>
<body>
	<h2 class="category_name">뷰티/건강</h2>

	
	<div class="category-content-wrap">
   		<c:forEach var="dto" items="${list}">  
   			<div class="category-content"> 		
	   			<div class="catcontent">
		   			<a href="../product/detail?productIdx=${dto.productIdx}&currentPage=${currentPage}">
		   				<img class="cimg" src="../save/${dto.firstImage}"><br>
		   				<b class="content_title">${dto.productTitle}</b><br>
		   				<span class="content_read">조회수 ${dto.productLookupCount} 댓글수 ${dto.account}</span>
		   			</a>
	   			</div>
   			</div>
 		</c:forEach>
   	</div>
</body>
</html>