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
	
	hr {
		width: 940px;
	}
	
	.mypagelikecontainer {
		width: 940px;
		margin: 0 auto;
	}
	
	.mypagelikecontainer .mypagelikepost {
		margin-top: 40px;
	}
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	<div class="mypagelikecontainer">
		<div class="mypagelikepost" style="font-size: 3rem;">내가 찜한 게시물</div>
		<hr>
		<table>
			 <tr>
			 <c:forEach var="mypagelikepost" begin="1" end="10">
		   		<td style="width: 300px; height: 300px;">
		   			<a href="#">
		   			<img style="width: 280px; height: 280px; border-radius: 8px;" class="mlpimg" src="${root}/image/${mypagelikepost}.jpg">
		   			</a>
		   			<ul>
						<li>게시글 제목</li>
						<li>날짜</li>
						<li>내용</li>
					</ul>
					<c:if test="${mypagelikepost%3==0}">
						</tr><tr>
					</c:if>
					
					
		   		</td>
	   		</c:forEach>
	   		</tr> 
		</table>
	</div>
</body>
</html>