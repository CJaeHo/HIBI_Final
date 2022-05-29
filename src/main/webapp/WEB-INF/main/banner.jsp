<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.mainimg{
		display: flex;
		width: 980px;
		height: 340px;
		margin: auto;
	}
	
	.mainimg img{
		width: 980px;
		box-shadow: 0px 0px 5px gray;
	}
</style>
</head>
<body>
   <div class="mainimg">
   		<img src="${root}/image/banner1.jpeg">
   </div>
</body>
</html>