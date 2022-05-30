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
		width: 980px;
		margin: auto;
		height: 62px;
	}

	.logo img{
		width: 50px;
	}
	.logo #hibi-logo{
		margin-top: 25px;
		margin-right: 80px;
	}
	
	.searchArea{
		width: 320px;
		height: 62px;
		border-radius: 16px;
		line-height: 80px;
		margin-left: 30px;
	}
	
	.chatlog{
		display: flex;
		justify-content: flex-end;
		height: 62px;
		line-height: 80px;
		width: calc(980px - 490px);
	}
	
	.chatlog li{
		margin-left: 15px;
	}
	
	.searchArea form input{
		border: none;
		width: 250px;
		height: 40px;
		background-color: rgba(0,0,0,0,0);
		color: #8BD2F1;
		padding-left: 10px;
		border: 2px solid #8BD2F1;
		border-radius: 5px;
	}
	
	.searchArea form span{
		width: 50px;
		color: #8BD2F1;
		font-weight: bold;
		cursor: pointer;
	}
	
	li.chat {
		font-weight: bold;
	}
	li.chat a{
		color: #8BD2F1;
		font-size: 20px;
	}
	
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
	<div class="title">
		<div class="header">
			<a href="/" class="logo">
				<img id="hibi-logo" src="/image/hibi-logo.png">	
			</a>
			<div class="searchArea">
				<form>
					<input type="search" placeholder="검색">
					<span>검색</span>
				</form>
			</div>	 
			<ul class="chatlog">
				<li class="chat"><a href="chat">Hi Chat🤚🏻</a></li>
				
			<c:if test="${sessionScope.loginok==null}">
				<li class="login"><a href="${root}/login">Login</a></li>
			</c:if>
				
   			 <c:if test="${sessionScope.loginok!=null}">   
  				&nbsp;&nbsp;
        	<span style="color:#a2a2a2">${sessionScope.loginname}님 hi!</span>	
        		 &nbsp;&nbsp;
        
       		<a href="mypage/" class="logo">
				<img src="/image/profile2.svg"
				style="width: 35px; height: 35px">	
			</a>
        	
        	 <button type="button" class="btn btn-info" style="width: 100px; height: 40px; margin-top: 20px; margin-left: 10px;" 
        	    onclick="logout()">Logout</button>
     		 </c:if>
			</ul>    
		</div>
   </div>   
     <script>
   	function logout()
   	{
   		$.ajax({
   			type:"get",
   			dataType:"text",
   			url:"${root}/logout",
   			success:function(){
   				location.reload();	
   			
   			}
   		});
   	}
   </script>
</body>
</html>










