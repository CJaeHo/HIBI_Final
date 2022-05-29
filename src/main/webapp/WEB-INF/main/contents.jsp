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
img, sva{
	vertical-align: middle;
}
.main-service{
    width: 1070px;
    height: 273px;
    margin: 0 auto;
}
.main-service .title{
	margin-left: 50px;
}
.best-list{
	width: 970px;
}
.service-image{
    width: 229px;
    height:150px;
    border: 1px solid #f2f2f2;
    border-radius: 8px;
    margin-bottom: 8px;
}
.service-info{
	font-size: 17px;
	font-weight: 500;
	margin-bottom: 4px;
	text-decoration: none;
	color: black;
}
.request-count{
	color: #737373;
	display: flex;
	align-items: center;
}
.request-icon{
	margin-right: 6px;
}

.slider,.best-list-track{
	display: flex;
	flex-direction: row;
	align-items: center;
}
.slider{
	justify-content: space-between;
}
.slide-btn{
	border:0px;
	width: 48px;
	height: 48px;
	background-color:white;
}
.slide-img{
	padding: 0px;
	border: 0px;
}
</style>
</head>
<c:set var="messageicon" value="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxNnYxNkgweiIvPgogICAgICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEgMykiPgogICAgICAgICAgICA8cmVjdCBmaWxsPSIjQzVDNUM1IiB3aWR0aD0iMTQiIGhlaWdodD0iMTAiIHJ4PSIxIi8+CiAgICAgICAgICAgIDxwYXRoIHN0cm9rZT0iI0ZGRiIgc3Ryb2tlLXdpZHRoPSIxLjIiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0ibTEyIDIuNS01IDMtNS0zIi8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"></c:set>
<c:set var="root" value="<%=request.getContextPath()%>"/>
<body>
    <div class="main-service">
	    <h2 class="title">hibi 인기 게시글</h2>
	    <div class="main-slide">
		    <div class="slider">
		    															
			    <button type="button" data-role="none" class="slide-prev slide-btn" style="display: block;">
			    	<img class="slide-img" alt="" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxkZWZzPjxmaWx0ZXIgeD0iLTEyLjUlIiB5PSItMTAlIiB3aWR0aD0iMTI1JSIgaGVpZ2h0PSIxMjUlIiBmaWx0ZXJVbml0cz0ib2JqZWN0Qm91bmRpbmdCb3giIGlkPSJhIj48ZmVPZmZzZXQgZHk9IjEiIGluPSJTb3VyY2VBbHBoYSIgcmVzdWx0PSJzaGFkb3dPZmZzZXRPdXRlcjEiLz48ZmVHYXVzc2lhbkJsdXIgc3RkRGV2aWF0aW9uPSIxLjUiIGluPSJzaGFkb3dPZmZzZXRPdXRlcjEiIHJlc3VsdD0ic2hhZG93Qmx1ck91dGVyMSIvPjxmZUNvbG9yTWF0cml4IHZhbHVlcz0iMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMC4yIDAiIGluPSJzaGFkb3dCbHVyT3V0ZXIxIi8+PC9maWx0ZXI+PGNpcmNsZSBpZD0iYiIgY3g9IjI0IiBjeT0iMjQiIHI9IjIwIi8+PC9kZWZzPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PHVzZSBmaWxsPSIjMDAwIiBmaWx0ZXI9InVybCgjYSkiIHhsaW5rOmhyZWY9IiNiIi8+PHVzZSBmaWxsPSIjRkZGIiB4bGluazpocmVmPSIjYiIvPjxwYXRoIGQ9Ik0xMiAxMmgyNHYyNEgxMnoiLz48cGF0aCBzdHJva2U9IiM4ODgiIHN0cm9rZS13aWR0aD0iMS43IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Ik0yNiAzMWwtNy03IDctNyIvPjwvZz48L3N2Zz4=">
				</button>
			    <div class="best-list">
				    <div class="best-list-track" style="width: 1976px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
						<div class="best-content" style="outline: none; width: 247px;">
							 <a href="#" class="service-info" tabindex="-1" style="width: 100%; display: inline-block;">
							    <div class="main-service-card">
								    <img alt="영어 과외" class="service-image" src="/image/test.jpg">
								    <p class="service-name">test1</p>
								    <div class="request-count">
									    <img src="${messageicon}" alt="요청서 아이콘" class="request-icon">
									    <span >512,942</span>명 요청 
							    	</div>
							    </div>
							</a>
				    	</div>
				    
					    <div class="best-content" style="outline: none; width: 247px;">
							 <a href="#" class="service-info" tabindex="-1" style="width: 100%; display: inline-block;">
							    <div data-testid="main-service-card" class="main-service-card">
								    <img alt="퍼스널트레이닝(PT)" class="service-image" src="/image/test2.jpg">
								    <p class="service-name">퍼스널트레이닝(PT)</p>
								    <div class="request-count">
								    	<img src="${messageicon}" alt="요청서 아이콘" class="request-icon">
								    	<span>375,782</span>명 요청 
								    </div>
							    </div>
						    </a>
				    	</div>
	   		    	    <div class="best-content" style="outline: none; width: 247px;">
						    <a href="#" class="service-info" tabindex="-1" style="width: 100%; display: inline-block;">
							   <div data-testid="main-service-card" class="main-service-card">
								    <img alt="퍼스널트레이닝(PT)" class="service-image" src="/image/test3.jpg">
								    <p class="service-name">퍼스널트레이닝(PT)</p>
								    <div class="request-count">
								    	<img src="${messageicon}" alt="요청서 아이콘" class="request-icon">
								    	<span>375,782</span>명 요청 
								    </div>
							    </div>
						    </a>
				    	</div>
				    	<div class="best-content" style="outline: none; width: 247px;">
							 <a href="#" class="service-info" tabindex="-1" style="width: 100%; display: inline-block;">
								 <div data-testid="main-service-card" class="main-service-card">
								    <img alt="퍼스널트레이닝(PT)" class="service-image" src="/image/test4.jpg">
								    <p class="service-name">퍼스널트레이닝(PT)</p>
								    <div class="request-count">
								    	<img src="${messageicon}" alt="요청서 아이콘" class="request-icon">
								    	<span>375,782</span>명 요청 
								    </div>
							    </div>
						    </a>
				    	</div> 
					</div>
				</div>
				<button type="button" data-role="none" class="slider-next slide-btn" style="display: block;">
					<img class="slide-img" alt="" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxkZWZzPjxmaWx0ZXIgeD0iLTEyLjUlIiB5PSItMTAlIiB3aWR0aD0iMTI1JSIgaGVpZ2h0PSIxMjUlIiBmaWx0ZXJVbml0cz0ib2JqZWN0Qm91bmRpbmdCb3giIGlkPSJhIj48ZmVPZmZzZXQgZHk9IjEiIGluPSJTb3VyY2VBbHBoYSIgcmVzdWx0PSJzaGFkb3dPZmZzZXRPdXRlcjEiLz48ZmVHYXVzc2lhbkJsdXIgc3RkRGV2aWF0aW9uPSIxLjUiIGluPSJzaGFkb3dPZmZzZXRPdXRlcjEiIHJlc3VsdD0ic2hhZG93Qmx1ck91dGVyMSIvPjxmZUNvbG9yTWF0cml4IHZhbHVlcz0iMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMCAwIDAgMC4yIDAiIGluPSJzaGFkb3dCbHVyT3V0ZXIxIi8+PC9maWx0ZXI+PGNpcmNsZSBpZD0iYiIgY3g9IjI0IiBjeT0iMjQiIHI9IjIwIi8+PC9kZWZzPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+PHVzZSBmaWxsPSIjMDAwIiBmaWx0ZXI9InVybCgjYSkiIHhsaW5rOmhyZWY9IiNiIi8+PHVzZSBmaWxsPSIjRkZGIiB4bGluazpocmVmPSIjYiIvPjxwYXRoIGQ9Ik0xMiAxMmgyNHYyNEgxMnoiLz48cGF0aCBzdHJva2U9IiM4ODgiIHN0cm9rZS13aWR0aD0iMS43IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Ik0yMiAzMWw3LTctNy03Ii8+PC9nPjwvc3ZnPg==">
				</button>
			</div>
		</div>
	</div>
</body>
</html>









