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
	/* 큰 테두리 */
	.mypagemenucontainer {
		display: flex;
		width: 940px;
		margin: 0 auto;
		padding-left: 250px;
		padding-top: 20px;
		padding-bottom: 20px;
		text-align: center;
	}
	/* 프로필 icon 이미지 */
	.mypagemenucontainer .profileImage {
		
	}
	.mypagemenucontainer div {
		margin-right: 70px;
	}
	
	/* 호버하면 리스트나오는거 */
	.menu:after {
		display:block; 
		content:''; 
		clear:both;
	}
	.menu li {
		position:relative; 
		margin-right:5px;
	}
	.menu li a {
		display:block; 
		padding:0 15px; 
		height:20px; 
		line-height:20px; 
		color: black;
	}
	.menu li:hover .depth1 {
		display:block;
		color: #87CEEB;
	}
	.menu .depth1 {
		display:none; 
		left:0; 
		right:0; 
		text-align:center;
		border: 1px solid skyblue;
		border-radius: 15px;
		width: 105px;
		height: 70px;
		font-size: 1.3rem;
		font-family: 'Jua';
	}
	.menu .depth1 a {
		display:block; 
		padding:5px; 
		color: gray;
	}

	
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	<div class="mypagemenucontainer">
		<div>
			<a href="${root}/mypage/" class="profileImage">
				<img src="${root}/image/profile.svg">
			</a><br>
			<b>Profile</b>
		</div>
		<div>
			<a href="${root}/mypage/modifyMyInfo" class="settingImage">
				<img src="${root}/image/setting.svg">
			</a><br>
			<b>Setting</b>
		</div>
		<div>
			<ul class="menu">
				<li>
					<a href="#" class="heartImage">
						<span class="glyphicon glyphicon-heart" style="font-size: 38px;"></span>
					</a><br><b>Like</b>
					<ul class="depth1">
						<li><a href="${root}/mypage/likeList">찜한 게시물</a></li>
						<li><a href="${root}/mypage/commentList" style="border-top: 1px solid #D9D9D9; border-bottom: 1px solid #D9D9D9; width: 80px; margin-left: 10px;">댓글</a></li>
						<li><a href="${root}/mypage/productList">작성한 게시물</a></li>
					</ul>
				</li>
			</ul>
		</div>
		
		<div>
			<a href="${root}/product/productForm" class="writeImage">
				<img src="${root}/image/pencil.svg">
			</a><br>	
			<b>Write</b>
		</div>
		<div>
			<a href="" class="">
				<img src="${root}/image/pencil.svg">
			</a><br>	
			<b>?????</b>
		</div>
	</div>
</body>
</html>










