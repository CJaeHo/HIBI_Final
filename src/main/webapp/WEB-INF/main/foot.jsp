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


footer {
    background-color: #495057;
    color: #fff;
    padding: 8rem 0;
}

* {
    padding: 0;
    margin: 0;
    outline: none;
}

body {
    position: relative;
    color: #212529;
    font-weight: 400;
    min-height: 100%;
    
    }
    
body {
    min-height: calc(100% - 77px);
    position: relative;
  	
}


footer .footer-container {
    width: 980px;
    margin: 0 auto;
}

div {
    display: block;
}


footer .footer-container .footer-top {
    display: flex;
    justify-content: space-between;
    margin-bottom: 4rem;
}

footer .footer-container .footer-top .footer-logo {
    width: 130px;
    height: 37px;
    background-size: 130px 37px;
}

footer .footer-container .footer-top .footer-list {
    list-style-type: none;
}

footer .footer-container .footer-top .footer-list .footer-list-item {
    display: block;
    font-size: 1.6rem;
    margin-bottom: 1.6rem;
}


footer .footer-container .footer-top .footer-list .footer-list-item .link-highlight {
    color: #fff;
    font-weight: 700;
}

footer .footer-container .footer-top .footer-list .footer-list-item a {
    color: #ADB5BD;
    text-decoration: none;
}


footer .footer-container .footer-top .footer-list .footer-list-item {
    display: block;
    font-size: 1.6rem;
    margin-bottom: 1.6rem;
}

footer .footer-container .footer-top {
    display: flex;
    justify-content: space-between;
    margin-bottom: 4rem;
}

footer .footer-container .footer-bottom {
    display: flex;
    justify-content: space-between;
    border-top: 1px solid rgba(255,255,255,0.1);
    margin-top: 3.2rem;
}

footer .footer-container #copyright {
    color: #ADB5BD;
    margin-top: 3.2rem;
}

footer .footer-container #copyright .copyright-list {
    list-style-type: none;
    margin-bottom: 0.4rem;
}

footer .footer-container #copyright .copyright-list .copyright-list-item {
    display: inline-block;
    font-size: 1.4rem;
    margin: 0 0.8rem 0 0;
}

footer .footer-container #copyright .copyright-list .copyright-list-item a {
    text-decoration: none;
    color: #868e96;
}


footer .footer-container #copyright .copyright-list-light {
    margin-top: 1.6rem;
    color: #868e96;

}

footer .footer-container #copyright .copyright-list .copyright-list-item {
    display: inline-block;
    font-size: 1.4rem;
    margin: 0 0.8rem 0 0;
}

ooter .footer-container #social {
    margin-top: 3.2rem;
    margin-bottom: 3.2rem;
}

footer .footer-container #social .social-list {
    list-style-type: none;
}

footer .footer-container #social .social-list .social-list-item {
    display: inline-block;
    margin: 0px;
    margin-right: 2.4rem;
}

footer .footer-container #social .social-list .social-list-item .footer-social-link {
    display: block;
}


footer .footer-container #social .social-list .global-links {
    padding-left: 26px;
    display: inline-block;
    margin: 0px;
}

option {
    font-weight: normal;
    display: block;
    white-space: nowrap;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}

footer .footer-container #social .social-list .global-links select {
    margin-left: 6px;
    text-decoration: underline;
    text-underline-position: under;
    vertical-align: top;
    background: #495057;
    color: #ADB5BD;
    font-size: 16px;
    line-height: 24px;
    border: none;
    appearance: none;
}

footer .footer-container #copyright .copyright-text {
    font-size: 1.4rem;
    margin: 0.4rem 0;
    color: #868e96;
}

</style>

  

</head>
<body>
<footer id="footer">
  <div class="footer-container">
    <div class="footer-top" style="">
      <div class="footer-logo"><img alt="" src="<!-- /image/KakaoTalk_Image_2022-05-19-19-44-47.png -->" style="width: 150px;"></div>
      <ul class="footer-list">
        <li class="footer-list-item"><a class="link-highlight" href="/trust">믿을 수 있는 물물거래</a></li>
        <li class="footer-list-item"><a class="link-highlight" href="/qna/re">자주 묻는 질문</a></li>
      </ul>
      <ul class="footer-list">
        <li class="footer-list-item"><a target="_blank" class="link-highlight" href="https://ads-local.daangn.com">광고주센터</a></li>
        <li class="footer-list-item">
          <a target="_blank" href="https://daangnpay.com">비트페이</a>
        <li class="footer-list-item">
          <a target="_blank" class="ga-click" data-event-category="town_link_from" data-event-action="index_base" data-event-label="footer_town" href="https://town.daangn.com">동네가게</a>
        </li>
        <br>
      </ul>
      <ul class="footer-list">
        <li class="footer-list-item"><a target="_blank" href="https://team.daangn.com/">회사 소개</a></li>
        <li class="footer-list-item"><a target="_blank" href="https://team.daangn.com/jobs/">채용</a></li>
      </ul>
      <br>
      <ul class="footer-list policy">
        <li class="footer-list-item"><a target="_blank" href="https://policy.daangn.com/terms.html">이용약관</a></li>
        <li class="footer-list-item"><a target="_blank" href="https://policy.daangn.com/privacy.html">개인정보처리방침</a></li>
        <li class="footer-list-item"><a target="_blank" href="https://policy.daangn.com/location.html">위치기반서비스 이용약관</a></li>
      </ul>
      <br>
    </div>
    <div class="footer-bottom">
      <div id="copyright">
        <ul class="copyright-list">
          <li class="copyright-list-item">고객문의 <a href="mailto:cs@daangnservice.com">cs@daangnservice.com</a></li>
          <li class="copyright-list-item">제휴문의 <a href="mailto:contact@daangn.com">contact@daangn.com</a></li>
        </ul>
        <ul class="copyright-list">
          <li class="copyright-list-item">지역광고 <a href="mailto:ad@daangn.com">ad@daangn.com</a></li>
          <li class="copyright-list-item">PR문의 <a href="mailto:pr@daangn.com">pr@daangn.com</a></li>
        </ul>
        <br>
        <ul class="copyright-list copyright-list-light">
          <li class="copyright-list-item"><address>주소: 서울특별시 강남구 역삼동 819-3 삼오빌딩 5-9층(서비스)</address></li>
          <li class="copyright-list-item">사업자 등록번호 : 375-87-00088</li>
          <li class="copyright-list-item">직업정보제공사업 신고번호 : J1200020200016</li>
        </ul>
        <div id="social">
          <ul class="social-list">
            <li class="social-list-item">
              <a target="_blank" class="footer-social-link" href="https://www.facebook.com/daangn">
                <img alt="facebook" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-facebook-0563f4a93852d073b41f13b8bcabb03d47af3bb3a6755cdfedd8a73686c7f18c.svg" />
                <span class="sr-only">facebook</span>
</a>            </li>
            <li class="social-list-item">
              <a target="_blank" class="footer-social-link" href="https://www.instagram.com/daangnmarket/">
                <img alt="instagram" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-instagram-2f6c88a461597907c114b7ce28eab053fcae791ed26417915fefb6f7c9f95756.svg" />
                <span class="sr-only">instagram</span>
</a>            </li>
            <li class="social-list-item">
              <a target="_blank" class="footer-social-link" href="https://blog.naver.com/daangn">
                <img alt="blog" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-blog-e1b0d512d1766a6962ec5bbb5b0803d2a6a9c55ad97db5ba9eebb76013caceba.svg" />
                <span class="sr-only">blog</span>
</a>            </li>
            <li class="global-links">
              <img alt="country" src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/footer/icon-global-2f53678b428ec623cefd07a90dd7777f3e55fc0433918f645d7d75ace6ff1fc3.png" width="24" height="24" />
              <select id="global-links-select">
                <option value="kr">한국</option>
                <option value="https://uk.karrotmarket.com">영국</option>
                <option value="https://ca.karrotmarket.com">캐나다</option>
                <option value="https://us.karrotmarket.com">미국</option>
                <option value="https://jp.karrotmarket.com">일본</option>
            </select>
            </li>
          </ul>
        </div>
        <div class="copyright-text">©HiBye Inc.</div>
      </div>
    </div>
  </div>
</footer>

</body>
</html>
