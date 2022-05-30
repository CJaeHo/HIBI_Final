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

		

*{
	margin:0;
	padding:0;
}

body{
	background:white
}

.main-container{
	width:100%;
	height:100%;
	display:flex;
	flex-direction:column;
	align-items:center;
	margin-top: 21px;
	}
	
.main-container2{
	width:100%;
	display:flex;
	flex-direction:column;
	align-items:center;
	margin-top: 21px;
	
}
.main-container .main-wrap{
	width:768px;

}
.email input{

	Width:260px;
	Height:51px;
	Top:308px;
	Left:589px;
	border-radius:5px;
	Opacity:70%;
	background: #FFFFFF;
	opacity: 0.7;
	border: 1px solid #ECECEC;
	margin: auto;


}



.login-input-wrap{
	Width:260px;
	Height:51px;
	Top:308px;
	Left:589px;
	border-radius:5px;
	Opacity:70%;
	background: #FFFFFF;
	opacity: 0.7;
	border: 1px solid #ECECEC;
	margin: auto;
	
	}
.password-wrap{
	margin-top: 13px;
}

.login-input-wrap input{
	Width:260px;
	Height:51px;
	Top:308px;
	Left:589px;
	border-radius:5px;
	Opacity:70%;
	background: #FFFFFF;
	border: 1px solid #ECECEC;
	

}

footer{
   
	padding-top: 95px;
	padding-bottom: 15px;
	margin:0 auto;
	display:flex;
	flex-direction:column;
	align-items:center;
	width:768px;



}
.copyright-wrap{

	display: flex;
	flex-direction: column;
	align-items: center;
	height: 15px;


}

footer .copyright-wrap span{
	font-size: 13px;
	line-height: 15px;
}	

#login :hover{ 
	}

#userguip :hover{

 }




</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
<form action="idpasswordfinddo" method="post" style="padding: auto;">	
	<div class="main-container">
	<h3 style="margin-left: 20px; Width:213px;  Top:189px; Left:615px; margin-top: 159px; margin-bottom: 20px; margi">아이디/비밀번호 찾기</h3>
				
		<div class="idfindcontainer" style=" margin:0px; border: 1px solid #DCDCDC; Width:298px; Height:350px; Top:238px; Left:567px; border-radius :10px;">
		<div style="background: #DCDCDC; border-radius: 10px 10px 0px 0px; padding: 5px;" >
			<div style=" border-radius: 10px 10px 0px 0px; margin:0px 4px 4px 4px;  Width:87px; Height:22px; Top:253px; Left: 587px; line-height: 21.78px; font-size: 18px; letter-spacing: -0.5%; font-weight: bold; margin-bottom: 20px; padding-top: 10px; ">아이디 찾기</div>
		</div>
			<div class="login-input-wrap" style="margin-top: 26px;">	
			
				<input placeholder="본명" type="text" style="padding-left: 18px" name="nickName" id="nickName" ></input>
			</div>
			
			<div class="login-input-wrap password-wrap" style="margin-bottom: 10px">	
				<input placeholder="이메일주소" type="email" name="userEmail" id="nickName" style="padding-left: 18px"></input>
			</div>
			
			<div style="Width:259px; Height:35px; Top:439px; Left:590px; font-size: iipx; line-height: 13.75px; margin-top: 20px; padding-left: 20px; text-align: center;">본인인증 받으실 정보를 입력해 주세요.<br>휴대폰 번호로 아이디(이메일 주소)를 <br>보내드립니다.</div>
		
		
						
			<input type="submit" value="아이디 찾기" style="color:white; Width:260px; Height:43px; Top:486px; Left:589px; border-raduis:5px; background: #8BD2F1; border: 1px solid #FFFFFF; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 5px; margin:40px 16px; 17px; 22px;">
			</form>
	
		</div>	


	
	<div class="main-container2">	
		
		<div class="passwordfindcontainer" style="border: 1px solid #DCDCDC; Width:298px; Height:250px; Top:238px; Left:567px; border-radius :10px;">
			<div style="background: #DCDCDC; border-radius: 10px 10px 0px 0px; padding: 5px;" >
			<div style=" border-radius: 10px 10px 0px 0px; margin:0px 4px 4px 4px;  Width:100px; Height:22px; Top:253px; Left: 587px; line-height: 21.78px; font-size: 18px; letter-spacing: -0.5%; font-weight: bold; margin-bottom: 20px; margin-right: 10px;  padding-top: 10px; " >비밀번호 찾기</div>
		</div>
		
			<div class="email" style="margin-top: 26px;">
				<input placeholder="이메일주소" type="text" style="padding-left: 18px;margin-left:18px; color: balck;"></input>
			</div>
			
			<div style=" Width:270px; Height:35px; Top:439px; Left:590px; font-size: iipx; line-height: 13.75px; margin-top: 20px; padding-left: 20px; text-align: center;">가입 시 등록하신 이메일 주소를 입력해주세요<br> 비밀번호재설정 링크를 보내드립니다.</div>
			<form style="padding: auto;">
			
			<input type="submit" value="비밀번호 변경 url 전송" style="color:white; Width:260px; Height:43px; Top:486px; Left:589px; border-raduis:5px; background: #8BD2F1; border: 1px solid #FFFFFF; box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25); border-radius: 5px; margin:10px 16px; padding-left: ">
			
			</form>
		</div>
	<div>
		<a href="login">
		<button id="login" style="Width:60px; Height:25px; Top:833px; left:587px; margin-right: 85px; border: 0; outline: 0; background: white; color: #F9A3A3; margin-top: 15px;" >로그인</button>
		</a>
		
		<a href="userguip">
		<sapn><button id="userguip" style="Width:60px; Height:25px; Top:833px; Left:832px; margin-left: 85px;  border: 0; outline: 0; background: white; color: #F9A3A3; margin-top: 15px;" >회원가입</button></sapn>
		</a>
	</div>
			
		<footer style="background: white; color: black; margin-top: 70px;">
			<div class="copyright-wrap">
			<span>Copyright By @  HIBI COMPANY</span>
			</div>
		</footer>			
		
		</div>
	
</body>
</html>










