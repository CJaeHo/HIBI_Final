<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
</style>
<link rel="stylesheet" href="/css/productForm.css"> 
<script type="text/javascript">
	$(function(){
		
	})
	function check(){
		if($('.pf-category').val()==""){
			alert("항목을 선택해주세요.");
		}
	}
</script>
</head>

<body>
	<c:if test="${sessionScope.loginok==null}">
		<script type="text/javascript">
			alert("로그인을 해주세요.");
			location.href="../../login";
		</script>
	</c:if>
	<div class="pf-body-wrap">
		<form action="insert" method="post" enctype="multipart/form-data" onsubmit="return check()">
			<input type="hidden" name="userIdx" value="${userIdx}">
			<div class="pf-body"><!-- flex,flex-derection:column, margin:0 auto, width:940px,height:100% -->
				
				<!-- header -->
				<div class="pf-header"><!-- flex, fustify-con:space-between, margin-top:50px, width:940px, border-bottom:1px solid #89 -->
					<p class="pf-post-title">중고거래 글쓰기</p>
					<button class="pf-header-btn" type="submit" >등록</button>
				</div>
				
				<!-- category-select -->
				<div class="pf-select-category-wrap"><!-- margin: 40px 0; -->
					<select class="pf-category">
					<!-- value값 없으면(false)->알림창 : 유효성 검사 -->
						<option value="" style="color:#898296;">카테고리를 선택해 주세요.</option><!-- color:연한 그레이 -->
						<option value="1">전자기기</option><!-- 나머지는 검정 -->
						<option value="2">리빙/가구</option>
						<option value="3">취미</option>
						<option value="4">패션의류</option>
						<option value="5">반려동물</option>
						<option value="6">뷰티/건강</option>
						<option value="7">음식</option>
						<option value="8">재능교환</option>
					</select>
				</div>
				<input type="hidden" id="category-v" name="categoryIdx" value="">
				<script type="text/javascript">
					$(".pf-category").change(function(){
						$("#category-v").val(this.value)
					});
				</script>
				
				<!-- product-name -->
				<div class="pf-product-name"><!-- margin:20px -->
					<input type="text" name="productTitle" placeholder="제목을 입력하세요" style="font-size: 15px;width:500px; height: 18px; border:0px; border-bottom:1px solid"><!-- div랑 라벨로 묶어서? -->
				</div>
				
				<!-- product-status -->
				<div class="pf-product-status-wrap">
					<span>상품 상태</span><br>
					<label><input type="radio" name="productStatus-radio" value="미개봉">미개봉</label>
					<label><input type="radio" name="productStatus-radio" value="거의 새 것">거의 새 것</label>
					<label><input type="radio" name="productStatus-radio" value="사용감 있음">사용감 있음</label>
					<input type="hidden" id="ps" name="productStatus" value="">
				</div>
				<script type="text/javascript">
					$("#ps").val($("input[name=productStatus-radio]:checked").val())
				</script>
				
				<!-- text-area -->
				<div class="pf-post-text-area">
					<textarea name="productContent" required="required"></textarea>
				</div>
				
				<!-- photo-area -->
				<div class="pf-photo-wrap"><!-- flex, , margin or padding -->
					<div class="pf-photo-select">
						<div>
							<input type="file" name="upload" class="form-control" multiple="multiple" >
							<svg width="30" height="30" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M11.0833 2.33333H10.787L9.513 0.681333C9.34881 0.470054 9.13869 0.29891 8.89856 0.180865C8.65842 0.06282 8.39458 0.000970109 8.127 0L5.873 0C5.60542 0.000970109 5.34158 0.06282 5.10144 0.180865C4.86131 0.29891 4.65119 0.470054 4.487 0.681333L3.213 2.33333H2.91667C2.1434 2.33426 1.40208 2.64185 0.855295 3.18863C0.308514 3.73541 0.00092625 4.47674 0 5.25L0 11.0833C0.00092625 11.8566 0.308514 12.5979 0.855295 13.1447C1.40208 13.6915 2.1434 13.9991 2.91667 14H11.0833C11.8566 13.9991 12.5979 13.6915 13.1447 13.1447C13.6915 12.5979 13.9991 11.8566 14 11.0833V5.25C13.9991 4.47674 13.6915 3.73541 13.1447 3.18863C12.5979 2.64185 11.8566 2.33426 11.0833 2.33333ZM5.411 1.39417C5.46564 1.32361 5.53565 1.26645 5.61571 1.22703C5.69577 1.18761 5.78376 1.16696 5.873 1.16667H8.127C8.21622 1.16705 8.30419 1.18773 8.38423 1.22715C8.46427 1.26656 8.5343 1.32368 8.589 1.39417L9.3135 2.33333H4.6865L5.411 1.39417ZM12.8333 11.0833C12.8333 11.5475 12.649 11.9926 12.3208 12.3208C11.9926 12.649 11.5475 12.8333 11.0833 12.8333H2.91667C2.45254 12.8333 2.00742 12.649 1.67923 12.3208C1.35104 11.9926 1.16667 11.5475 1.16667 11.0833V5.25C1.16667 4.78587 1.35104 4.34075 1.67923 4.01256C2.00742 3.68437 2.45254 3.5 2.91667 3.5H11.0833C11.5475 3.5 11.9926 3.68437 12.3208 4.01256C12.649 4.34075 12.8333 4.78587 12.8333 5.25V11.0833Z" fill="black"/>
								<path d="M7 4.66675C6.30777 4.66675 5.63108 4.87202 5.05551 5.2566C4.47993 5.64119 4.03133 6.18781 3.76642 6.82736C3.50152 7.4669 3.4322 8.17063 3.56725 8.84956C3.7023 9.5285 4.03564 10.1521 4.52513 10.6416C5.01461 11.1311 5.63825 11.4644 6.31719 11.5995C6.99612 11.7345 7.69985 11.6652 8.33939 11.4003C8.97893 11.1354 9.52556 10.6868 9.91014 10.1112C10.2947 9.53567 10.5 8.85898 10.5 8.16675C10.4991 7.23877 10.13 6.34907 9.47385 5.6929C8.81768 5.03672 7.92797 4.66767 7 4.66675ZM7 10.5001C6.53851 10.5001 6.08739 10.3632 5.70367 10.1068C5.31996 9.85045 5.02089 9.48604 4.84428 9.05968C4.66768 8.63331 4.62147 8.16416 4.7115 7.71154C4.80153 7.25891 5.02376 6.84315 5.35009 6.51683C5.67641 6.19051 6.09217 5.96828 6.54479 5.87825C6.99741 5.78822 7.46657 5.83442 7.89293 6.01103C8.31929 6.18763 8.68371 6.4867 8.9401 6.87042C9.19649 7.25413 9.33333 7.70526 9.33333 8.16675C9.33333 8.78559 9.0875 9.37908 8.64992 9.81666C8.21233 10.2542 7.61884 10.5001 7 10.5001Z" fill="black"/>
							</svg>															
						</div>
					</div>
					<div class="pf-selected-photo"><!-- flex, justify-cont: spac-between, margin-left:10p, 사진이 가로 길이 넘어가면 슬라이드 또는 아래로 내려보내기 -->
						<!-- script사용 -->
						<div class="pf-image-cancel-wrap">
							<div class="pf-selected-image">
								<img alt="" src="/image/test6.jpg">
							</div>
							<label>
								<div class="pf-image-cancel"> <!-- cursor:pointer; -->	
									x
								</div>
							</label>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>