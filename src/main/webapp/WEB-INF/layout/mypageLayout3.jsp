<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib  prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		list-style: none;
		text-decoration: none;
		border-collapse: collapse;
		margin: 0;					
		padding: 0px;
		font-family: 'Jua';
	}	
	body{
		font-size: 1.3rem;
		font-family: 'Jua';
	}
	
	
</style>
</head>
<body>
	
	<div class="title">
		<tiles:insertAttribute name="header4"/>
	</div>
	<div class="content">
		<tiles:insertAttribute name="content"/>
	</div>
</body>
</html>