<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hibi!하이바이에 오신 것을 환영합니다!</title>
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
		box-shadow: 0px 1px 3px gray;
		position: fixed;
		left: 0;
		right: 0;
		top: 0;
		background-color: white;
		z-index: 1;
	}
	div.banner{
		margin-top: 180px;
		border: 0px solid blue;
	}
	div.category{
		margin-top: 30px;
		border: 0px solid green;
		border-radius: 6px;
	}
</style>
</head>
<body>
	<div class="layout">
		<div class="title">
			<tiles:insertAttribute name="title"/>
		</div>
		
		<div class="banner">
			<tiles:insertAttribute name="banner"/>
		</div>
		
		<div class="category">
			<tiles:insertAttribute name="category"/>
		</div>
		
		<div class="contents">
			<tiles:insertAttribute name="contents"/>
		</div>
		
		<div class="hibiimage">
			<tiles:insertAttribute name="hibiimage"/>
		</div>
		
		<div class="foot">
			<tiles:insertAttribute name="foot"/>
		</div>
	</div>
</body>
</html>
