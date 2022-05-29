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

	.header{
		display: flex;
		width: 940px;
		margin: 0 auto;
		height: 62px;
	}
	/* '메인로고' */
	.logo img{
		width: 170px;
		height: 62px;
		top: 9px;
	}
	/* 'HiChat' 큰틀*/
	.chatlog{
		display: flex;
		justify-content: flex-end;
		height: 62px;
		line-height: 80px;
		width: calc(980px - 490px);
		margin-left: 300px;
	}
	/* 'HiChat' */
	.chatlog li{
		margin-left: 15px;
	}
	/* 'HiChat' */
	li.chat {
		font-weight: bold;
	}
	/* 'HiChat' */
	li.chat a{
		color: #8BD2F1;
		font-size: 20px;
	}
	/* Login */
	li.login a{
		padding: 3px 8px 3px 8px;
		width: 60px;
		height: 35px;
		margin-top: 20px;
		color: gray;
		font-size: 20px;
		border: 1px solid gray;
		border-radius: 10px;
	}
	
</style>
</head>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
	<div class="mypageTitle">
		<div class="header">
			<a href="/" class="logo">
				<img src="/image/logo.png">	
			</a>
			<ul class="chatlog">
				<li class="chat"><a href="#">Hi Chat🤚🏻</a></li>
				<li class="login"><a href="${root}/login/loginpage">Login</a></li>
			</ul>    
		</div>
	</div>
</body>
</html>










