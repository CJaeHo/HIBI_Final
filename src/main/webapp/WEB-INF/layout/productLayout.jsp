<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세 페이지입니다람쥐🐿️</title>
<style type="text/css">
.header{
	height: 80px;
}
.content{
	
}
.footer{
	
}
</style>
</head>
<body>
	<div class="header">
		<tiles:insertAttribute name="header"/>
	</div>
	<div class="content">
		<tiles:insertAttribute name="plcontent"/>
	</div>
	<div class="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>