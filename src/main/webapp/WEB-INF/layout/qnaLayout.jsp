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
    <style type="text/css">

    </style>
</head>
<body>
<div class="layout">
    <div class="title">
        <tiles:insertAttribute name="title"/>
    </div>
    <div class="content">
        <tiles:insertAttribute name="content"/>
    </div>
    <div class="foot">
        <tiles:insertAttribute name="footer"/>
    </div>
</div>
</body>
</html>