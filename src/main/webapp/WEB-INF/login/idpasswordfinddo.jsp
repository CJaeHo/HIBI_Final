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




</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
    
    <div class="main-container" style="margin-top: 100px;">
        <h3 style="font-size: 50px;">아이디 찾기</h3>
        <p class="desc" style="font-size: 30px; margin-top: 20px;">고객님 아이디 찾기가 완료 되었습니다.</p>
        <div class="memberInfo">
          
           
            <ul>
                <li style="font-size: 20px; margin-top: 40px;">아이디 : <strong>${myid}</strong></li>
              
                
            </ul>
        </div>
        <p class="copy" style="margin-top: 60px; padding: auto;">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            고객님의 아이디 찾기가 성공적으로 이루어졌습니다. <br>항상 고객님의
            즐겁고 편리한 거래를 위해 최선의 노력을 다하는 HiBi가 되도록 하겠습니다.
        </p>
        <p class="button" style="margin-top: 30px;">
            <a href="${root}/login"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_find_login.gif" alt="로그인" /></a>
            <a href="${root}/idpasswordfind"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/member/btn_find_pw.gif" alt="비밀번호 찾기" /></a>
        </p>
        
        <footer style="background: white; color: black; margin-top: 320px;">
			<div class="copyright-wrap">
			<span>Copyright By @  HIBI COMPANY</span>
			</div>
		</footer>
    </div>
</div>

</body>
</html>