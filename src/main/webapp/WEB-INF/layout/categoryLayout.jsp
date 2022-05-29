<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
	*{
		list-style: none;
		text-decoration: none;
		border-collapse: collapse;
		margin: 0px;
		padding: 0px;
	}
	
	body{
		font-size: 1.3rem;
		font-family: 'Jua';
	}
	
	
	div.title{
		border: 0px solid red;
		height: 80px;
		box-shadow: 0px 1px 3px #8BD2F1;
	}

	div.banner{
		margin-top: 30px;
		border: 0px solid blue;
	}
	
	div.category{
		margin-top: 30px;
		border: 0px solid green;
	}
	
	.categoryimg{
		border-bottom: 1px solid #c4c4c4;
	}

	div.content{
		width: 980px;
		margin: auto;
		margin-bottom: 250px;
		height: auto;
		border: 0px solid blue;
		border-bottom: 1px solid #c4c4c4;
	}
</style>
</head>
<body>
	<div class="layout">
		<div class="title">
			<tiles:insertAttribute name="title"/>
		</div>		
		<div class="category">
			<tiles:insertAttribute name="category"/>
		</div>
		<div class="content">
			<tiles:insertAttribute name="content"/>
		</div>
		<div class="foot">
			<tiles:insertAttribute name="foot"/>
		</div>
	</div>
</body>
</html>













