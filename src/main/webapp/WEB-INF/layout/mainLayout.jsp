<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/toolbar.css">
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
		opacity: 95%;
		/* box-shadow: 0px 1px 3px gray; */
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
		<div class="menu_toolbar">
			<a href="/product/form" class="toolbar_write_btn">
				<svg width="20" height="20" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M34.4048 1.59594C33.3813 0.573993 31.9941 0 30.5478 0C29.1015 0 27.7142 0.573993 26.6907 1.59594L2.20556 26.0816C1.50438 26.7789 0.948421 27.6083 0.569845 28.5218C0.19127 29.4353 -0.00240573 30.4148 2.2554e-05 31.4036V34.4945C2.2554e-05 34.8937 0.158636 35.2767 0.440969 35.559C0.723302 35.8414 1.10623 36 1.50551 36H4.59626C5.58501 36.0028 6.56449 35.8094 7.478 35.4311C8.3915 35.0527 9.22089 34.4969 9.91815 33.7959L34.4048 9.30869C35.4263 8.28524 36 6.89831 36 5.45232C36 4.00632 35.4263 2.6194 34.4048 1.59594ZM7.7894 31.6671C6.94031 32.5106 5.79307 32.9855 4.59626 32.9889H3.01099V31.4036C3.00947 30.8103 3.12564 30.2226 3.35279 29.6745C3.57994 29.1264 3.91355 28.6287 4.33431 28.2104L22.9165 9.62786L26.3791 13.0905L7.7894 31.6671ZM32.2746 7.1799L28.5018 10.9542L25.0392 7.49906L28.8135 3.72474C29.0408 3.49787 29.3107 3.31801 29.6075 3.19541C29.9044 3.07282 30.2225 3.00991 30.5437 3.01026C30.8649 3.0106 31.1828 3.07421 31.4794 3.19745C31.776 3.32069 32.0455 3.50114 32.2723 3.7285C32.4992 3.95587 32.6791 4.22569 32.8016 4.52256C32.9242 4.81944 32.9871 5.13755 32.9868 5.45874C32.9864 5.77993 32.9228 6.09791 32.7996 6.39452C32.6764 6.69112 32.4959 6.96055 32.2686 7.18742L32.2746 7.1799Z" fill="black"/>
				</svg>
			</a>
		</div>
	</div>
</body>
</html>
