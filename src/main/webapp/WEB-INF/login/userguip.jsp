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
		left: 480px;
		
		}
		

		
:root{
	--body-background-color: #f5f6f7;
	--font-color: #4e4e4e;
	--border-gray-color : #dadada;
	--naver-green-color: #04c75a;
	--naver-green-border-color: #06b350;
}

#id{

	border: none;
	width:430px;
	margin-top: 10px;
	font-size: 14px;
	margin-left: 10px;
	height:30px;

}


*{
	margin:0;
	padding:0;
}

body{
	background:white
}

.main-container{
	
	display:flex;
	flex-direction:column;
	align-items:center;
	margin-top: 21px;
	
}
.main-container .main-wrap{
	width:768px;

}





.main-container .main-wrap header .logo-wrap{
	display:flex;	
	flex-direction: column;
	align-items: center;
}
.login-input-section-wrap{
	padding-bottom:30px 0 30px;
	
	display: flex;
	flex-direction: column;
	align-items: center;
	
	
}

.login-input-wrap{
	width: 465px;
	height :48px;
	border: solid 1px var(	--border-gray-color );
	background: white;
	border-radius: 5px;
}

.id-wrap{
	width: 465px;
	height :48px;
	border: solid 1px var(	--border-gray-color );
	background: white;
	border-radius: 5px;

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

.login-input-wrap hp-wrap{

	border: none;
	width:430px;
	margin-top: 10px;
	font-size: 14px;
	margin-left: 10px;
	height:30px;
	
}

.login-input-wrap email-wrap{
	border: none;
	width:430px;
	margin-top: 10px;
	font-size: 14px;
	margin-left: 10px;
	height:30px;
	

}

.login-input-wrap addr-wrap
{
	border: none;
	width:430px;
	margin-top: 10px;
	font-size: 14px;
	margin-left: 10px;
	height:30px;
	
}

.login-input-wrap nickname-wrap{

	border: none;
	width:430px;
	margin-top: 10px;
	font-size: 14px;
	margin-left: 10px;
	height:30px;
}

.login-button-wrap button{
	width: 465px;
	height :48px;
	font-size: 18px;
	background: #8BD2F1;
	color: black;
	border: white;
	border-radius: 5px;
}
.login-stay-sign-in{
	width: 465px;
	height: 52px;
	display: flex;
	font-size: 15px;
	color: #4e4e4e;
	align-items: center;
	justify-content: flex-start;
	
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
	

}
.Easy-sgin-in-wrap h2{
	font-size: 20px;
}
.Easy-sgin-in-wrap .sign-button-list
{
	padding-top:0;
	margin-bottom:30px;
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


}

.forget-msg-list li{
	
	display:inline;
	color:var(--font-color);
	font-size: 14px;
	
	padding-left: 10px;
	margin-left: 10px;
	
}

.forget-msg-list li button{

	border:0; 
	outline: 0;
	background: white;

}


}

#cb2 #cb3{
	
	padding-right: 50px
    appearance: none;
    cursor: pointer;
 
	
	}
	
#login4 :hover{
background: gray;
}
</style>

<script type="text/javascript">
	$(function(){
		//비번 체크
		$("#pass2").keyup(function(){
			var p1=$("#userPassword").val();
			var p2=$(this).val();
			if(p1==p2){
				$("b.passok").html("ok").css("color","blue");;
			}else{
				$("b.passok").html("fail").css("color","red");
			}			
		});
		
		//이메일
		$("#email3").change(function(){
			var s=$(this).val();
			if(s=='-'){
				$("#email2").val("");
				$("#email2").focus();
			}else{
				$("#email2").val(s);
			}
		});
		
		//아이디 중복
		$("#idcheck").click(function(){
			$.ajax({
				type:"get",
				dataType:"json",
				url:"idcheck",
				data:{"userIdx":$("#userIdx").val()},
				success:function(data){
					if(data.count==0){
						$("b.idok").text("ok");
					}else{
						alert("이미 존재하는 아이디입니다\n다른 아이디로 입력해주세요");
						$("#userIdx").val("");
						$("#userIdx").focus();
					}
				}
				
			});
		});
		
		$("#nicknamecheck").click(function(){
			$.ajax({
				type:"get",
				dataType:"json",
				url:"nickcheck",
				data:{"nickName":$("#nickName").val()},
				success:function(data){
					if(data.count==0){
						$("b.nicknameok").text("ok");
					}else{
						alert("이미 존재하는 닉네임입니다\n다른 아이디로 입력해주세요");
						$("#nickName").val("");
						$("#nickName").focus();
					}
				}
				
			});
		});
	});
	
	function check(){
		var a=$("b.passok").text();
		if($("b.idok").text()!='ok'){
			alert("아이디체크 버튼을 눌러서 중복확인을 해주세요");			
			return false;
		}else if(a!='ok'){
			alert("비밀번호를 제대로 입력해 주세요");
			$("#userPassword").val("");
			$("#pass2").val("");
			$("#userPassword").focus();
			return false;//action 호출되지 않음
		}else{
			return true;
		}
	}
</script>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
<div class="main-container">
	<div class="logo-wrap">
	<a href="/">
	<img alt="" src="${root}/image/KakaoTalk_Image_2022-05-19-19-44-47.png" id="image">	
	</a>
	<h3 style="margin-left: 20px; ">우리동네 가장 트렌디한 물물교환</h3>
	
	</div>
		
	<form action="insert" method="post" class="form-inline">
		<section class="login-input-section-wrap" style="margin-top: 30px;">
		
	<div class="id-wrap" >	
		<input type="text" placeholder="id" name="loginId" id="loginIdx" style="width: 350px; display: inline-block; margin: 10px 0px 0px 10px; border: none;" class="form-control"
		required="required">
		
			<button type="button" class="btn btn-sm btn-danger" id="idcheck" style="display: inline-block;">아이디체크</button>
			&nbsp;&nbsp;
			<b class="idok"></b>
	</div>

	<div class="login-input-wrap nickname-wrap" style="margin-top: 10px;" >	
		<input type="text" placeholder="닉네임" name="nickName" id="nickName" style="width: 350px; display: inline-block;" class="form-control"
		required="required">
		
			<button type="button" class="btn btn-sm btn-danger" id="nicknamecheck" style="display: inline-block;">닉네임체크</button>
			&nbsp;&nbsp;
			<b class="nicknameok"></b>
	</div>
		<div class="login-inpu-wrap password-wrap" style="display: inline-block;">	
		<input type="password" name="loginPassword" id="userPassword" style="width: 220px;" class="form-control"
					 required="required" placeholder="비밀번호">
					 
				
			<input type="password" id="pass2" style="width: 220px;" class="form-control"
					 required="required" placeholder="한번더 입력"> 
					 &nbsp;
					 <b class="passok"></b>
			</div>
			<div class="login-input-wrap hp-wrap" style="margin-top: 10px;">
				<input type="text" placeholder="hp" name="userPhoneNumber" id="phoneNumber" style="width: 180px;" class="form-control"
				required="required">	
			</div>
			
			
			<div class="login-input-wrap email-wrap"style="margin-top: 10px;">
				<input type="text" name="userEmail" id="email" style="width: 100px; display: inline-block;"
					class="form-control" required="required"> 
					<b style="display: inline-block;">@</b> <input type="text" name="email2" id="email2" style="width: 130px; display: inline-block;"class="form-control" required="required">
			 <select name="email3" id="email3" class="form-control" style="display: inline-block; width: 100px;">
					<option value="-">직접입력</option>
					<option value="naver.com">네이버</option>
					<option value="nate.com">네이트</option>
					<option value="google.com">구글</option>
				</select>
			</div>
			
			<div class="login-input-wrap addr-wrap" style="margin-top: 10px; ">
			
				<input type="text" placeholder="주소" name="userAddress" id="userAddress" class="form-control"required="required" style="width: 400px;">			
			</div>
			
	<!-- 		<label style=" margin-top: 50px; margin-right: 150px;">
			<input type="checkbox" id="cb2">&nbsp;가입하실때는 자유지만
			<br>
			<input type="checkbox" id="cb3">&nbsp;ㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㄹㅁㄴㅇㅁㄴㅇㄹ
			</label> -->
			
			<div class="login-button-wrap">
				<button type="submit" style="padding-top: 0; margin-top: 20px;">가입하기</button>
			</div>
			
			
			
		</section>
	</form>
		

		<section class="Easy-sgin-in-wrap">
		<h4 style="margin-right: 305px; margin-top:50px; font-size: 15px;">다른 서비스 계정으로 가입</h4>
		
			<ul class="sign-button-list" style="align-content: center; background: white;">
				<li><button style="background: #03c75a; color: white;"><span>NAVER회원가입하기</span></button></li>
				<li><button style="background: #FFE920; color: black;"><span>KaKao회원가입하기</span></button></li>
				<li><button style="background: #E3E3E3; color: white;"><span><img src="${root}/image/Google_logo 1.png">회원가입하기</span></button></li>
			</ul>

		</section>
		
	
			<ul class="forget-msg-list" style="margin-right:30px; margin-top: 30px; ">	
				<li><span>이미 가입하셨다면</span></li>
				<a href="login">
				<li><button id="login4"><span>로그인</span></button></li>
				</a>
			</ul>
			
		<footer style="background: white; color: black; margin-top: 70px;">
			<div class="copyright-wrap">
			<span>Copyright By @  HIBI COMPANY</span>
			</div>
		</footer>			
		
		</div>
	
</body>
</html>










