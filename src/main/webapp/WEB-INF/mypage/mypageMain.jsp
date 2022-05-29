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
	body * {
		font-size: 2rem;
	}
	
	.mypagemaincontainer {
		width:940px;
		margin:0 auto;
	}
	
	hr {
		width: 940px;
	}
	
	/*나의게시물, 나의찜*/
	.mpimg {
		width: 200px;
		height: 110px;
		background-size: cover;
	}
	.mlimg {
		width: 167px;
		height: 216px;
	}
	
	/* 나의게시물, 나의찜 제목*/
	.mypagetopic {
		width: 200px;
		margin-top: 50px;
		font-size: 3rem;
		display: flex;
	}
	
	/* +more */
	.plusmore {
		cursor: pointer;
		float: right;
		color: #C4C4C4;
	}
	
	/* 화살표 슬라이드 위치 */
	.leftupnextpage {
		position: relative;
		top: 120px;
		right: 30px;
	}
	.rightupnextpage {
		position: relative;
		top: 120px;
		left: 840px;
	}
	.leftdownnextpage {
		position: relative;
		top: 130px;
		right: 30px;
	}
	.rightdownnextpage {
		position: relative;
		top: 130px;
		left: 840px;
	}
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	<div class="mypagemaincontainer">
		<div class="mypagetopic">나의 게시글</div><b class="plusmore" onclick="location.href='${root}/mypage/productList'">+more</b>
		<hr>
		<table>
		<img src="${root}/image/leftnextpage.svg" class="leftupnextpage">
			 <tr>
			 <c:forEach var="mypostImage" begin="1" end="4">
		   		<td style="width: 230px; height: 250px;">
		   		<a href="${root}/product/productDetail">
		   		<img style="width: 200px; height: 180px;" class="mpimg" src="${root}/image/${mypostImage}.jpg">
		   		</a>
		   		<ul class="mypageposttext">
					<li>게시글 제목</li>
					<li>날짜</li>
					<li>내용</li>
				</ul>
		   		</td>
	   		</c:forEach>
	   		</tr> 
	   	<img src="${root}/image/rightnextpage.svg" class="rightupnextpage">
		</table>
		<br><br>
		
		<div class="mypagetopic">나의 찜</div><b class="plusmore" onclick="location.href='${root}/mypage/likeList'">+more</b>
		<hr>
		<table>
		<img src="${root}/image/leftnextpage.svg" class="leftdownnextpage">
			<tr>
			<c:forEach var="mylikeImage" begin="5" end="8">
			   	<td style="width: 200px;">
			   	<a href="${root}/product/productDetail">
			   	<img class="mlimg" src="${root}/image/${mylikeImage}.jpg">
			   	</a>
			   	<ul>
					<li>게시글 제목</li>
					<li>날짜</li>
					<li>내용</li>
				</ul>
			   	</td>
		   	</c:forEach>
		   	</tr>
	   	<img src="${root}/image/rightnextpage.svg" class="rightdownnextpage">
		</table>
	</div>
	
	
	
	
</body>
</html>