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
	
	* {
		font-family: 'Jua';
	}
	
	/* 제일 큰 테두리 */
	.secessioncontainer {
		height: auto;
		width: 665px;
		margin: 0 auto;
		margin-top: 80px;

	}
	
	hr {
		color: #C3C3C3;
	}
	/* '탈퇴되는 계정'쪽 */
	.secessionuser {
		border: 1px solid #C3C3C3;
		width: 600px;
		height: 120px;
		
	}
	/* '탈퇴되는 계정'쪽 */
	.secessionuser .secessionusertitle {
		border-bottom: 1px solid #C3C3C3;
		width: 600px;
		height: 30px;
	}
	/* '확인사항' 쪽 */
	.secessioncontainer .secessionconfirm {
		border: 1px solid #C3C3C3;
		width: 600px;
		height: 230px;
	}
	/* '확인사항 내용' 쪽 */
	.secessioncontainer .secessionconfirm .secessionconfirmdetail {
		border: 1px solid #C3C3C3;
		width: 560px;
		height: 165px;
		margin-left: 19px;
	}
	
	b, h6{
		margin-left: 25px;
	}
	
	h4 {
		margin-left: 20px;
		font-weight: bold;
	}
	
	h2 {
		margin-left: 20px;
		
		
	}
	
	h5 {
		margin-left: 10px;
		color: gray;
		font-size: 1.3rem;
	}
	
	button {
		width: 240px;
		height: 45px;
		left: 100px;
		border: 0px;
		margin-left: 35px;
		margin-bottom: 10px;
	}
	
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	<div class="secessioncontainer">
		<h2>하이바이계정 탈퇴</h2>
		<hr style="width: 660px;">
		<b>eowkd0206@naver.com</b><br>
		<b>진짜?</b><br>
		<h6 style="color: gray;">탈퇴 후 하이바이 서비스를 더이상 이용하실 수 없습니다</h6>
		<div class="secessionuser">
			<div class="secessionusertitle">
				<h4>탈퇴되는 계정</h4>
			</div>
			<p style="margin-left: 20px; margin-top: 5px; font-size: 15px; color: gray;">
			<img src="${root}/image/Naver_Logotype.svg" style="width: 71px; height: 14px;"> 계정 회원&nbsp;
			<img src="${root}/image/Google_logo 1.png" style="width: 71px; height: 14px;"> 계정 회원</p>
		</div>
		<br><br><br>
		<div class="secessionconfirm">
			<h4>확인사항</h4>
			<div class="secessionconfirmdetail">
				<h5>탈퇴 후 하이바이계정 정보가 삭제되며, 복원할 수 업슴니다</h5>
				<h5>탈퇴 후 서비스 내 프로필 정보 및 서비스 이용기록은 모두 삭제됨니당</h5>
				<h5>단, 타인의 글에 등록한 댓글은 남아있습니다</h5>
				<h5>삭제나 백업을 원하시는 데이터가 있다면 반드시 탈퇴 전에 확인하시기 바랍니다</h5>
			</div>
		</div>
		<br>
		<div class="secessioncheck" style="display: flex; width: 215px;">
			<input type="radio"  style="width: 15px; height: 15px;"">
			<div style="margin: 0; margin-top: 4px;">&nbsp;위 안내를 모두 확인했습니다.</div>
		</div>
		<br><br>
		<button type="button" style="background-color: rgb(139,210,241,0.3)">탈퇴 취소</button>
		<button type="button" style="background-color: #D9D9D9">확인</button>
	</div>
	
	
	<!--
	.secession input[type="radio"]:checked {
		background: url('${root/image/radiochecked.svg}');
		width: 15px;
		height: 15px;
	}
	
	<div class="" style="border: 1px solid gray; border-radius: 100px; width: 15px; height: 15px; margin:0; margin-top: 1.5px;"></div>
	-->
</body>
</html>


