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
	
	.mypagecommentlistcontainer2 {
		width: 600px;
		height: 500px;
		margin: 0 auto;
		border: 1px solid black;
		border-radius: 8px;
		margin-top: 30px;
	}
	
	.mypagecommentlistcontainer2 .commenttitle2 {
		display: flex;
		font-size: 3rem;
		text-align: center;
		height: 80px;
		line-height: 80px;
	}
	
	.mypagecommentlistcontainer2 .commenttitle2 .leftcomment2 {
		width: 300px;
		height: 80px;
		border-bottom: 1px solid black;
		background-color: #8BD2F1;
		cursor: pointer;
	}
	.mypagecommentlistcontainer2 .commenttitle2 .rightcomment2 {
		 width: 300px; 
		 height: 80px; 
		 border-left: 1px solid black;
		 cursor: pointer;
	}
	
	.mypagecommentlistcontainer2 .mypagecommentlistbox2 {
		 display: flex; 
		 border-bottom: 1px solid black; 
		 width: 600px; 
		 height: 130px;
	}
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>

	
	<c:if test="">
		받은 댓글이 없을 때
	</c:if>
	
	<div class="mypagecommentlistcontainer2">
		<div class="commenttitle2">
			<div class="leftcomment2" onclick="location.href='${root}/mypage/commentList'">나의 댓글</div>
			<div class="rightcomment2" onclick="location.href='${root}/mypage/commentList2'">받은 댓글</div>
		</div>
		<c:forEach var="mypagecommentlist2" begin="1" end="3">
			<div class="mypagecommentlistbox2">
				<div style="padding-left: 30px; padding-top: 15px;">
					<a href="#">
						<img src="${root}/image/2.jpg" style="width: 100px; height: 100px; cursor: pointer;">
					</a>
				</div>
				<div style="width: 500px; height: 130px; padding-left: 30px; padding-top: 30px; font-size: 2rem;">
					닉네임<br>
					남긴 날짜<br>
					내용
				</div>				
			</div>
		</c:forEach>
	</div>
</body>
</html>