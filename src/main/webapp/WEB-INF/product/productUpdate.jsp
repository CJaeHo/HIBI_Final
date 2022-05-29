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
					<button class="pf-header-btn" type="submit" onclick="history.back()">취소</button>
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
				<input type="hidden" id="category-v" name="categoryIdx" value="${dto.categoryIdx}">
				<script type="text/javascript">
					$(".pf-category").val(${dto.categoryIdx}).prop("selected",true);
					$(".pf-category").change(function(){
						$("#category-v").val(this.value)
					});
				</script>
				
				<!-- product-name -->
				<div class="pf-product-name"><!-- margin:20px -->
					<input type="text" name="productTitle" value="${dto.productTitle}" style="font-size: 15px;width:500px; height: 18px; border:0px; border-bottom:1px solid"><!-- div랑 라벨로 묶어서? -->
				</div>
				
				<!-- product-status -->
				<div class="pf-product-status-wrap">
					<span>상품 상태</span><br>
					<label><input type="radio" name="productStatus-radio" value="미개봉">미개봉</label>
					<label><input type="radio" name="productStatus-radio" value="거의 새 것">거의 새 것</label>
					<label><input type="radio" name="productStatus-radio" value="사용감 있음">사용감 있음</label>
					<input type="hidden" id="ps" name="productStatus" value="${dto.productStatus}">
				</div>
				<script type="text/javascript">
					$('input[value="${dto.productStatus}"]').prop("checked",true);
					$("#ps").val($("input[name=productStatus-radio]:checked").val())
				</script>
				
				<!-- text-area -->
				<div class="pf-post-text-area">
					<textarea name="productContent" required="required">${dto.productContent}</textarea>
				</div>
				
				<!-- photo-area -->
				<div class="pf-photo-wrap"><!-- flex, , margin or padding -->
					<div class="pf-photo-select">
						<div>
							<input type="file" name="upload" class="form-control"
							multiple="multiple" 
							style="color: #969e96;font-size: 10px; width:600px; height:79px; border-radius:8px; border: 1px solid #e9ecef; 
							cursor:pointer; background-color:#e9ecef; text-align:center; line-height:79px;">
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