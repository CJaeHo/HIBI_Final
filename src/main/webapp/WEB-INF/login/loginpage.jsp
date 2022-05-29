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
	#image{
		
		display: flex;
		margin: auto;
		width: 311px; 
		height: 117px; 
		top: 118px; 
		left: 5000px;
		
		}
		
:root{
	--body-background-color: #f5f6f7;
	--font-color: #4e4e4e;
	--border-gray-color : #dadada;
	--naver-green-color: #04c75a;
	--naver-green-border-color: #06b350;
}


*{
	margin:0;
	padding:0;
	outline: none;
}

body{
	background:white
}

.main-container{
	width:100%;
	display:flex;
	flex-direction:column;
	align-items:center;
	margin-top: 21px;
	
}
.main-container .main-wrap{
	width:768px;

}
.main-container .main-wrap .sel-lang-wrap .lang-select
{
	width: 96px;
	height: 30px;
	color: var(--font-color);
	border: solid 1px var(--border-gray-color);
}
.main-container .main-wrap .logo-wrap{
	padding-top:55px;
}
.main-container .main-wrap .logo-wrap img
{
	width: 231px;
	height: 44px;
}

.main-container .main-wrap header .sel-lang-wrap{
	display:flex;
	justify-content:flex-end;
}

.main-container .main-wrap header .logo-wrap{
	display:flex;	
	flex-direction: column;
	align-items: center;
}
.login-input-section-wrap{
	padding-top: 30px;
	display: flex;
	flex-direction: column;
	align-items: center;
	
	
}

.login-input-wrap{
	width: 465px;
	height :48px;
	border: solid 1px var(	--border-gray-color );
	background: white;
}
.password-wrap{
	margin-top: 13px;
}
.login-input-wrap input{
	border: none;
	width:430px;
	margin-top: 10px;
	font-size: 14px;
	margin-left: 10px;
	height:30px;
}
.login-button-wrap {
	padding-top: 13px;
}
.login-button-wrap button{
	width: 465px;
	height :48px;
	font-size: 18px;
	background: yellow;
	color: gray;
	border: white;
}
.login-stay-sign-in{
	width: 465px;
	height: 52px;
	
	display: flex;
	font-size: 15px;
	color: #4e4e4e;
	align-items: center;
	justify-content: flex-start;
	border-bottom: solid 1px var(--border-gray-color);
}
.login-stay-sign-in i{
	font-size: 25px;
	color: #9ba1a3;
}
.login-stay-sign-in span{
	padding-left: 5px;
	line-height: 25px;
}

.Easy-sgin-in-wrap{

	display: flex;
	flex-direction: column;
	align-items: center;
	padding-top: 40px;

}
.Easy-sgin-in-wrap h2{
	font-size: 20px;
}
.Easy-sgin-in-wrap .sign-button-list
{
	padding-top:25px;
	list-style: none;
	width: 465px;
	display: flex;
	flex-direction: column;
	align-items: center;
}
.Easy-sgin-in-wrap .sign-button-list li{
	padding-bottom: 10px;
}
.Easy-sgin-in-wrap .sign-button-list li button{
	width: 465px;
	height: 56px;
	border: solid 1px var(--border-gray-color);
	text-align: center;
	background: white;
}
.Easy-sgin-in-wrap .sign-button-list li button i{
	padding-left: 15px;
	font-size: 20px;
}
.fa-qrcode
{
	color:var(--naver-green-color);
}
.fa-line{
	color:var(--naver-green-color);
}
.fa-facebook-square
{
	color:#4064ac;
}
.Easy-sgin-in-wrap .sign-button-list li button span{
	padding-left: 20px;
	font-size: 18px;
}
.Easy-sgin-in-wrap .forget-msg{
	color:var(--font-color);
	font-size: 14px;
	padding-top: 10px;

}

.forget-msg-list li{
	
	display:inline;
	color:var(--font-color);
	font-size: 14px;
	padding-top: 10px;
	padding-left: 10px;
	margin-left: 10px;
	
}

.forget-msg-list li button{

	border:0; 
	outline: 0;
	background: white;

}
footer{
   
	padding-top: 95px;
	padding-bottom: 15px;

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
footer .copyright-wrap span img{
	width: 59px;
	
	height: 11px;
}
footer .copyright-wrap span{
	font-size: 13px;
	line-height: 15px;
}		

#cb1{
	width: 1rem;
    height: 1rem;
    border-radius: 50%;
    border: 1px solid #999;
    appearance: none;
    cursor: pointer;
    transition: background 0.2s;
	
	}
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
<c:if test="${sessionScope.saveid=='yes'}">
	<c:set var="loginid" value="${sessionScope.loginId}"/>
</c:if>
<c:if test="${sessionScope.saveid==null || sessionScope.saveid=='no'}">
		<c:set var="loginid" value=""/>
</c:if>

<div class="main-container">
	<div class="logo-wrap">
		<a href="/">
	<img alt="" src="${root}/image/KakaoTalk_Image_2022-05-19-19-44-47.png" id="image">
		</a>
	</div>
<div>
<form action="process" method="post" class="form-inline">
	<span style="padding: 40px 40px; margin-top: 30px">
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder="ID" type="text" name="id" required="required" autofocus="autofocus" value="${loginid}"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input placeholder="Password" type="password" name="pass" required="required"></input>
			</div>
			
			<label style="float: left; margin-top: 10px; margin-right: 350px">
			<input type="checkbox" name="chkid" id="cb1"
 					${loginid==""?"":"checked"}>&nbsp;로그인 상태 유지
			</label>
			
			<div class="login-button-wrap">
				<button type="submit">login...</button>
			</div>
			
			
			
		</section>
</form>
		
</div>
		<section class="Easy-sgin-in-wrap">
		
			<ul class="sign-button-list" style="align-content: center; background: white;">
			<a href="/login/naver">
				<li><button style="background: #03c75a; color: white;"><span>NAVER로그인하기</span></button></li>
			</a>
				<li><button style="background: #FFE920; color: black;"><span>KaKao로그인하기</span></button></li>
				<li><button style="background: #E3E3E3; color: white;"><span><img src="${root}/image/Google_logo 1.png">로그인하기</span></button></li>
			</ul>

		</section>
	</span>
			<ul class="forget-msg-list" style="margin-right:30px; margin-top: 30px; ">	
				<li><button><a href="idpasswordfind"><span>비밀번호 찾기</span></a></button></li>
				<li><button><a href="idpasswordfind"><span>아이디 찾기</span></a></button></li>
				<li><button><a href="userguip"><span>회원가입</span></a></button></li>
			</ul>
		
		<footer style="background: white; color: black;">
			<div class="copyright-wrap">
			<span>Copyright By @  HIBI COMPANY</span>
			</div>
		</footer>
		
		</div>
	
</body>
</html>










