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
	
</style>
</head>
<body>
   <div class="categoryimg">
   		<table>
   			<tr>
   			<%-- <c:forEach var="cimg" begin="1" end="8">
	   			<td style="width: 122px;"><a href="#">
	   			<img src="${root}/image/category${cimg}.png">
	   			</a></td>
   			</c:forEach> --%>
   			<td style="width: 122px;">
	   			<a href="${root}/category/elecdevices">
	   				<img src="${root}/image/category1.png">
	   			</a>
   			</td>	
   			<td style="width: 122px;">
   				<a href="${root}/category/living">
   					<img src="${root}/image/category2.png">
   				</a>
   			</td>	
   			<td style="width: 122px;">
	   			<a href="${root}/category/hobby">
	   				<img src="${root}/image/category3.png">
   				</a>
   			</td>   				
   			<td style="width: 122px;">
	   			<a href="${root}/category/fashion">
	   				<img src="${root}/image/category4.png">
   				</a>
   			</td>   				
   			<td style="width: 122px;">
	   			<a href="${root}/category/pet">
	   				<img src="${root}/image/category5.png">
   				</a>
   			</td>   				
   			<td style="width: 122px;">
	   			<a href="${root}/category/beauty">
	   				<img src="${root}/image/category6.png">
   				</a>
   			</td>   				
   			<td style="width: 122px;">
	   			<a href="${root}/category/food">
	   				<img src="${root}/image/category7.png">
   				</a>
   			</td>   				
   			<td style="width: 122px;">
	   			<a href="${root}/category/talent">
	   				<img src="${root}/image/category8.png">
   				</a>
   			</td>
   				
   		</table>
   </div>
</body>
</html>