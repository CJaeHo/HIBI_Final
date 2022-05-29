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
	/* 큰 테두리 */
	.mypageproductcontainer {
		width: 940px;
		margin: 0 auto;
	}
	/* '내가 작성한 게시물' 큰틀 */
	.mypageproductcontainer .mypageproductpost {
		margin-top: 40px;
	}
	
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	<div class="mypageproductcontainer">
		<div class="mypageproductpost" style="font-size: 3rem;">내가 작성한 게시물</div>
		<hr>
		<table>
			 <tr>
			 <td style="background-color: rgb(0,191,255, 0.3); width: 180px; height: 200px; border-radius: 8px;">	
			 	<a href="#">
			 	<img alt="" src="${root}/image/writepost.svg" style="margin-left: 80px;">
			 	</a>
			 	<ul>
			 		<li style="text-align: center; color: gray;">내 게시물 작성</li>
			 	</ul>
			 </td>
			 <c:forEach var="mypageproductlistpost" begin="2" end="13">
		   		<td style="width: 220px; height: 300px;">
		   			<a href="#">
		   			<img style="width: 200px; height: 200px; border-radius: 8px;" class="mppimg" src="${root}/image/${mypageproductlistpost}.jpg">
		   			</a>
		   			<ul>
						<li>게시글 제목</li>
						<li>날짜</li>
						<li>내용</li>
					</ul>
					<c:if test="${mypageproductlistpost%4==0}">
						</tr><tr>
					</c:if>
		   		</td>
	   		</c:forEach>
	   		</tr> 
		</table>
	</div>
</body>
</html>