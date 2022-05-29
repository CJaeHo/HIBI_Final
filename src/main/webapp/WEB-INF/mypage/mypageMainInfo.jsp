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
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	
	/* 큰 테두리 */
	.mypagecontainer{
		border: 1px solid #C4C4C4;
		border-radius: 16px;
		width: 940px;
		margin: 0 auto;
		display: flex;
		padding: 20px 70px;
	}
	
	/* 정보적혀있는거 */
	.mypagecontainer .mypageInfo {
		margin-right: 80px; 
		margin-left: 100px;
		margin-top: 5px;
		line-height: 25px;
		padding-right: 80px;
		padding-top: 30px;
		border-right: 1px solid #C4C4C4;
		font-size: 2rem;
	}
	
	/* 프로필사진 */
	.mypagecontainer .circleprofile .circleprofileimage {
		width: 150px;
		height: 150px;
		border: 0px solid gray;
		border-radius: 100px;
	}
	
	/* 뱃지 이미지*/
	#badgemyBtn{
		width: 150px;
		height: 150px;
		border-radius: 100px;
		margin-top: 5px;
		background-color: white;
		border: 0;
		}
	#badgemyBtn .badgebtnimage {
		width: 150px;
		height: 150px;
		border-radius: 100px;
		border:0;
		;
	}
	
	
	/* 뱃지모달설정 */
	.badgepage{
		padding-left: 25px;
		width: 550px;
		height: 780px;
		background-color: white;
	}
	.badgetitle{
		width: 490px;
		border-bottom: 2px solid gray;
		margin-bottom: 30px;
		margin-top: 30px;
		font-size: 30px;
		font-weight: bold;
	}
	.badgemain{
		width: 180px;
		height: 180px;
		background: #F6F186;
		border-radius: 100px;
		text-align: center;	
		margin-left: 155px;	
	}
	img.mainbimg{
		width: 160px;
		height: 160px;
		border-radius: 100px;
		margin: 10px 10px 10px 10px;
	}
	.badgelist{
		display: flex;
		width: 490px;
		margin-top: 50px;
		border-top: 1px solid gray;
		text-align: center;
		padding-top: 20px;
	}
	.badgelist2{
		display: flex;
		width: 490px;
		margin-top: 50px;
		text-align: center;
	}
	img.subbimg{
		width: 120px;
		height: 120px;
		border-radius: 100px;
	}	
	.imgback{
		background: #F6F186;
		padding: 5px 5px 5px 5px;
		border-radius: 100px;
	}
  	.close {
  		position: absolute;
  		left: 30px;
  	}
	
	
	
</style>

<script>
$(document).ready(function(){
  $("#badgemyBtn").click(function(){
    $("#badgemyModal").modal();
  });
});
</script>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	<div class="mypagecontainer">
		<div>
			<div class="circleprofile">
				<div class="circleprofileimage" style="background-image: url('${root}/image/test8.jpg');"></div>
				<img style="cursor: pointer; position:relative; left: 95px; bottom: 40px;" src="${root}/image/profilecamera.svg">
				<b style="font-size: 2rem; margin-left: 10px;">아이디</b>
			</div>
		</div>
		<div class="mypageInfo">
			<ul>
				<li>권은비</li>
				<li>1994.04.03</li>
				<li>서울 강서구 마곡동</li>
				<li>qwerqwe@gmail.com</li>
				<li>010-2343-3456</li>
			</ul>
		</div>
		
		<div class="badgecontainer">
				<button type="button" class="btn" data-toggle="modal" data-target="#badgemyModal" id="badgemyBtn">
					<img src="${root}/image/8.jpg" class="badgebtnimage"></button>
					<div style="font-size: 2rem; margin-left: 50px; margin-top: 5px;">뱃지 이름</div>
			<div class="modal fade" id="badgemyModal" role="dialog">
				<div class="modal-dialog">
		      <!-- Modal content-->
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="badgepage">
						<div class="badgetitle">
							활동 뱃지
						</div>
						<div class="badgemain">
							<img class="mainbimg" src="${root}/image/8.jpg">
							<h5>대표 뱃지<br>
							뱃지 이름</h5>
						</div>
						<div class="badgelist">
							<div class="badges">
								<div class="imgback">
									<img class="subbimg" src="${root}/image/8.jpg">
								</div>
								<h5>첫 거래의 시작</h5>
							</div>
							<div class="badges" style="margin-left: 50px;">
								<div class="imgback">
									<img class="subbimg" src="${root}/image/8.jpg">
								</div>
								<h5>7일 연속 출석</h5>
							</div>
							<div class="badges" style="margin-left: 50px;">
								<div class="imgback">
									<img class="subbimg" src="${root}/image/8.jpg">
								</div>
								<h5>첫 댓글 남기기</h5>
							</div>
						</div>
						
						<div class="badgelist2">
							<div class="badges">
								<div class="imgback">
									<img class="subbimg" src="${root}/image/8.jpg">
								</div>
								<h5>첫 거래의 시작</h5>
							</div>
							<div class="badges" style="margin-left: 50px;">
								<div class="imgback">
									<img class="subbimg" src="${root}/image/8.jpg">
								</div>
								<h5>7일 연속 출석</h5>
							</div>
							<div class="badges" style="margin-left: 50px;">
								<div class="imgback">
									<img class="subbimg" src="${root}/image/8.jpg">
								</div>
								<h5>첫 댓글 남기기</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>










