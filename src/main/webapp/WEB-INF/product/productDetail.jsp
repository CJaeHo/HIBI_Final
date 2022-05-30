<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 페이지입니다람쥐🐿️</title>
<style type="text/css">
	
</style>
<link rel="stylesheet" href="/css/productDetail.css"> 
<script type="text/javascript">
	/* $(function(){
		list();
		
		$(document).on("click","",function(){
			
		});
	}); */
</script>
</head>
<body>
	<div class="body-wrap">
		<div class="body"><!-- margin, flex:column, justify... -->
			<div class="post-comment-wrap"><!-- flex,  -->
			
				<!-- 게시물 -->
				<article class="post">
					<section id="article-images"><!-- margin, width, position -->
						<div class="section">
							<input type="radio" name="slide" id="slide01" checked>
							<input type="radio" name="slide" id="slide02">
							<input type="radio" name="slide" id="slide03">
							<div class="slidewrap">
								<ul class="slidelist">
									<li class="slideli">
										<a href="">												
											<img src="/image/test.jpg" alt="">
										</a>
									</li>
									<li class="slideli">
										<a href="">												
											<img src="/image/test2.jpg" alt="">
										</a>
									</li>
									<li class="slideli">
										<a href="">											
											<img src="/image/test3.jpg" alt="">
										</a>
									</li>
								</ul>
								<div class="slide-control">
									<div class="control01">
										<label for="slide03" class="left"></label>
										<label for="slide02" class="right"></label>
									</div>
									<div class="control02">
										<label for="slide01" class="left"></label>
										<label for="slide03" class="right"></label>
									</div>
									<div class="control03">
										<label for="slide02" class="left"></label>
										<label for="slide01" class="right"></label>	
									</div>
								</div>
							</div>
						</div>
					</section>
					
					<!-- 프로필이랑 버튼들 -->
					<section id="article-profile-buttons"><!-- width,margin,flex:space-between, 프로필, 하트/공유/기타 -->
						<div id="article-pb-wrap">
							<div class="article-pb">
								<a id="article-profile-link">
									<div class="article-flex" style="display:flex;">
										<div id="article-profile-image">
											<img alt="" src="/image/test6.jpg">
										</div>
										<div id="article-profile-nickname">
											<div id="nickname"><!-- ${productdto.nickName} --></div>
											<div id="region-name"><!-- ${productdto.userAddress} --></div>
										</div>
									</div>
								</a>
							</div>
							
							<!-- 버튼들(하트, 공유, 기타) -->
							<div class="article-pb">
								<a id="article-buttons-link"><!-- a태그 각각 넣기 -->
									<div id="article-button-wrap"><!-- flex -->
										<div class="article-buttons">
											<!-- <object type="image/svg+xml" data="heart-empty.svg"></object> -->
											<img alt="" src="/image/heart-empty.svg">
										</div>
										<div class="article-buttons">
											<img alt="" src="/image/share.svg">
										</div>
										
										<!-- 로그인 한 상태&작성자->게시자용 모달, 아니면 그 외 사용자용 모달, 로그인 안 하고 신고하기 누르면 로그인 페이지로 -->
										<div class="article-buttons">
											<img alt="" src="/image/3-vertical-dots.svg">
										</div>
									</div>
								</a>
							</div>
					</section>
					<section id="article-description"><!-- margin, padding -->
						<h1 id="article-title" style="margin-top:0px"><%-- ${productdto.productTitle} --%></h1>
						<p id="article-category">
							<%-- ${productdto.categoryName} --%> ∙
	          				<time> <!-- $.{productdto.updateAt} --></time>
						</p>
						<p id="article-price"></p>
						<div id="article-detail">
							<p>
								<%-- ${productdto.productContent} --%>
							</p>
						</div>
						<p id="article-counts"> 관심 <%-- ${productdto.productLikeCount} --%> ∙ 채팅 <%-- ${productdto.chatCount} --%> ∙ 조회 <%-- ${productdto.productLookupCount} --%> </p>
					</section>
				</article>
				
				<!-- 댓글 -->
				<div class="article-comment">
					<ul class="article-comment-list-ul"><!-- list-style: none; -->
						<li class="article-comment-list"><!-- height:79px, flex  -->
							<a class="comment-anchor"><!-- flex:center -->
								<!-- 사진 -->
								<div class="comment-product-image-wrap">
									<img class="comment-product-image" alt="" src="/image/test7.jpg"><!-- 79px, border:1px solid #, border-radius 10px -->
								</div>		
										
								<!-- 내용 -->
								<div class="comment-preview"><!-- flex, column -->
									<div class="preview-title">
										거래하고 싶어요!
									</div>
									<div class="preview-explanation-wrap"><!-- flex, column, 멀리 -->
										<div class="preview-category"><!-- 위로 붙이기 -->
											패션
										</div>
										<div class="preview-status"><!-- 가운데 정렬 -->
											미개봉이에요!
										</div>
									</div>
								</div>
							</a>
							<div class="comment-time-buttons"><!-- flex, column -->
								<p><time>6시간 전</time></p><!-- flex, 오른쪽 정렬 -->
								<button type="button" class="btn btn-info trade"><!-- submit으로? -->
									거래하기
								</button>
								<div class="comment-heart-etc"><!-- flex, 오른쪽 정렬 -->
									<a>
										<img alt="" src="/image/heart-empty.svg"><!-- 15px -->
									</a>
									<a>
										<img alt="" src="/image/3-vertical-dots.svg">
									</a>
								</div>
							</div>
						</li>
					</ul>
					
					<!-- 댓글 남기기 -->
					<div class="comment-btn-wrap"><!-- flex, height:65px, min-height:65px, align-items:center, align-content:center  -->
						<a class="btn-open-popup">
							댓글 남기기
						</a>
					</div>
					<button type="button" class="btn btn-success" style="width:100px;" onclick="location.href='updateform'">수정하기</button>
					<button type="button" class="btn btn-success" style="width:100px;" onclick="location.href='form'">글쓰기</button>
					<button type="button" class="btn btn-danger" style="width:100px;" onclick="location.href='delete'">삭제하기</button>
				</div>
			</div>
			<!-- 다른 게시물 -->
			<section id="article-detail-hot-more">
				<div id="hot-more-link">더 구경하기</div>
			</section>
		</div>
	</div>
			
	<!-- modal -->
			<div class="pd_modal">
		      <div class="pd_modal_body">
		      <div class="pd_modal_post_select">
		      	<!--회원이 올린 게시물(product) 가져오기 -->
		      	<form class="pd_modal_form"><!-- flex, column, , padding 10px auto,  -->
		      		<ul class="pd_modal_user_post"><!-- flex, row, wrap, between-space -->
		      			<li class="pd_user_post"><!-- width:107, height:107px -->
							<img alt="" src="/image/test.jpg">
							<div>
								<span>물건명</span>
								<span>상태</span>
							</div><!-- absolute,  -->
						</li>
		      			<li class="pd_user_post">
		      				<img alt="" src="/image/test2.jpg">
							<div>
								<span>물건명</span>
								<p>상태</p>
							</div><!-- absolute,  -->
		      			</li>
		      			<li class="pd_user_post">
		      				<img alt="" src="/image/test3.jpg">
							<div>
								<span>물건명</span>
								<p>상태</p>
							</div><!-- absolute,  -->
		      			</li>
		      			<li class="pd_user_post">
		      				<img alt="" src="/image/test4.jpg">
							<div>
								<span>물건명</span>
								<p>상태</p>
							</div><!-- absolute,  -->
		      			</li>
		      			<li class="pd_user_post">
		      				<img alt="" src="/image/test5.jpg">
							<div>
								<span>물건명</span>
								<p>상태</p>
							</div><!-- absolute,  -->
		      			</li>
		      		</ul>
		      		<textarea>
		      		</textarea>
		      		<div class="pd_select_btn_wrap">
		      			<button type="submit" style="width:100px; height:40px; background-color:yellow;">
		      				댓글 달기
		      			</button>
		      			<button type="button" class="btn btn-danger" style="width:100px; height:40px;">취소</button>
		      		</div>
		      	</form>
		    	<!-- <button class="btn-open-popup">Modal 띄우기</button> -->
		      </div></div>
		      <!-- 게시물 없을 때 -->
		      <!-- <div class="pd_modal_cancel">
		      	<button type="button" class="btn btn-success">게시물 작성</button>
		      	<button type="button" class="btn btn-success">취소</button>
		      </div> -->
		      
		    </div>
    
    <!-- 모달쓰 콜링 -->
    <script>
    //제공한 선택자 
      const body = document.querySelector('body');
      const modal = document.querySelector('.pd_modal');
      const btnOpenPopup = document.querySelector('.btn-open-popup');

      btnOpenPopup.addEventListener('click', () => {
        modal.classList.toggle('show');

        if (modal.classList.contains('show')) {
          body.style.overflow = 'hidden';
        }
      });

      modal.addEventListener('click', (event) => {
        if (event.target === modal) {
          modal.classList.toggle('show');

          if (!modal.classList.contains('show')) {
            body.style.overflow = 'auto';
          }
        }
      });  /**/
      
      
     
    </script>
</body>
</html>