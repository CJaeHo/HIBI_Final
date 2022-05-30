<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/jquery.com/jquery-3.5.0.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
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

.fa-qrcode{
	color:var(--naver-green-color);
}

.fa-line{
	color:var(--naver-green-color);
}

.fa-facebook-square{
	color:#4064ac;
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

#cb2 #cb3{
	padding-right: 50px
    appearance: none;
    cursor: pointer;
}
	
#login4 :hover{
background: gray;
}

div.wellcome{
	font-size: 15px;
	margin-top: 30px;
}

span.myemail{
	font-size: 20px;
	font-weight: bold;
}
</style>
<!-- 스타일 마지막 -->

<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("L_JLkR8lU8vY4v1VSTJo", "http://127.0.0.1:9001/login/naver/callback");
  // ì ê·¼ í í° ê° ì¶ë ¥
  // alert(naver_id_login.oauthParams.access_token);
  // ë¤ì´ë² ì¬ì©ì íë¡í ì¡°í
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // ë¤ì´ë² ì¬ì©ì íë¡í ì¡°í ì´í íë¡í ì ë³´ë¥¼ ì²ë¦¬í  callback function
  function naverSignInCallback() {
//    alert(naver_id_login.getProfileData('email'));
//    alert(naver_id_login.getProfileData('nickname'));
//    alert(naver_id_login.getProfileData('age'));
	var email = naver_id_login.getProfileData('email');
	var nickname = naver_id_login.getProfileData('nickname');
	var id = "naver";
    console.log(email);
   	  
    $("span.myemail").text(email);
    $("#userEmail").val(email);

        $.ajax({
    	type:"get",
    	dataType:"json",
    	url:"/login/naver/callback2",
    	data:{"email":email, "id":id},
    	success:function(data){
    		console.log(${sessionScope.loginok});
    		console.log("data="+data);
    		//alert(data);
    		if(data==1)
    			//history.go(-2);
    			location.href="../../";
    			
    		
    	}
    })      
  }
  
  $(function(){
	  
	  
  })
  
  
  $(function(){
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
						alert("이미 존재하는 닉네임입니다\n다른 닉네임을 입력해주세요");
						$("#nickName").val("");
						$("#nickName").focus();
					}
				}
				
			});
		});
	});
	
</script>
<div class="main-container">
	<div class="logo-wrap">
	<a href="/">
		<img alt="" src="${root}/image/KakaoTalk_Image_2022-05-19-19-44-47.png" id="image">	
	</a>
	<h3 style="margin-left: 20px; ">우리동네 가장 트렌디한 물물교환</h3>
	</div>
	<div class="wellcome">
		<span class="myemail"></span>
		<b>으로 가입하기</b>
	</div>
		
<!-- 네이버 가입폼 시작 -->		
	
	<form action="insert" method="post" class="form-inline">
		<section class="login-input-section-wrap" style="margin-top: 30px;">
		
			<div class="login-input-wrap nickname-wrap" style="margin-top: 10px;" >	
				<input type="text" placeholder="닉네임" name="nickName" id="nickName" style="width: 350px; display: inline-block;" class="form-control"
				required="required">
				
					<button type="button" class="btn btn-sm btn-danger" id="nicknamecheck" style="display: inline-block;">닉네임체크</button>
					&nbsp;&nbsp;
					<b class="nicknameok"></b>
			</div>
				
			<div class="login-input-wrap hp-wrap" style="margin-top: 10px;">
				<input type="text" placeholder="hp" name="userPhoneNumber" id="userphoneNumber" style="width: 180px;" class="form-control" required="required">	
			</div>
				
			
			<div class="login-input-wrap addr-wrap" style="margin-top: 10px; ">
				<input type="text" placeholder="주소" name="userAddress" id="userAddress" class="form-control"required="required" style="width: 400px;">			
			</div>
					
			<!--
			 		<label style=" margin-top: 50px; margin-right: 150px;">
					<input type="checkbox" id="cb2">&nbsp;가입하실때는 자유지만
					<br>
					<input type="checkbox" id="cb3">&nbsp;ㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㄹㅁㄴㅇㅁㄴㅇㄹ
					</label>
			-->
					
			<div class="login-button-wrap">
				<button type="submit" style="padding-top: 0; margin-top: 20px;">가입하기</button>
			</div>
			
			<div class="login-input-wrap email-wrap"style="margin-top: 10px; visibility: hidden;">
				<input type="text" name="userEmail" id="userEmail" style="width: 300px; display: inline-block;"
					class="form-control" required="required"> 
			</div>
				
		</section>
	</form>

		<footer style="background: white; color: black; margin-top: 70px;">
			<div class="copyright-wrap">
			<span>Copyright By @  HIBI COMPANY</span>
			</div>
		</footer>			
		
		</div>
	
</body>
</html>