<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>

    <link href="/images/icons/shortcut_icon.png" rel="shortcut icon" type="image/x-icon">
<%--    <link rel="stylesheet" media="all" href="https://cs.kr.karrotmarket.com/assets/wv/faqs-f16756c1b356fe178cd7be67e7b8c5616560f4bbf54cbbebf9d633d2519b8d7c.css" />--%>
    <title>
        자주 묻는 질문
    </title>
    <style>
        body.wv-faqs-show {
            min-width: 320px;
            max-width: 740px;
            margin: 500px;
            width: 100%;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
            background-color: #f1f3f5;
            color: #212529;

        }
        body {
            display: block;
        }

        a.faq-kind-text {
            color: inherit;
            font-weight: 600;
            text-decoration: none;
            box-shadow: 0 1px 0 0;
        }

        a:hover {
            box-shadow: 0 3px 0 0;
        }

        #faq-tabs #faq-kinds {
            width: 70%;
            display: table;
            margin-top: 50px;
            margin-left: auto;
            margin-right: auto;
            border-collapse: collapse;
            background-color: #fff;
        }
        ul {
            display: block;
            list-style-type: disc;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            /*padding-inline-end: 40px;*/
            /*padding-inline-start: 40px;*/
            position: relative;
        }

        #faq-tabs #faq-kinds .faq-kind .faq-kind-text {
            display: block;
            padding: 1.6rem 0;
            font-size: 1.5rem;
            line-height: 1.47;
            letter-spacing: -0.5px;
        }
        #faq-tabs #faq-kinds .faq-kind a {
            color: #212529;
            text-decoration: none;
            margin: 0px;
        }
        /** {*/
        /*    margin: 0;*/
        /*    padding: 0;*/
        /*}*/

        user agent stylesheet
        a:-webkit-any-link {
            color: -webkit-link;
            cursor: pointer;
            text-decoration: underline;
        }

        #faq-tabs #faq-kinds .faq-kind {
            display: inline-table;
            text-align: center;
            border-collapse: collapse;
            border-bottom: 1px solid #e9ecef;

            width: calc(33.33% - 1px);
        }

        #faq-detail{
            min-width: 320px;
            max-width: 740px;
            margin: auto;
        }

        .csbanner{
            display: block;
            width: 980px;
            height: 340px;
            margin: auto;
        }

        .csbanner img{
            width: 980px;
            height: 340px;
            box-shadow: 0px 0px 5px gray;
        }
    </style>
</head>

<body id="wv-faqs-show">
<section id="faqs">
    <section id="faq-tabs">
        <h3 id="faq-tabs-title" class="sr-only">카테고리</h3>
        <ul id="faq-kinds">
            <!-- faq-kind active-->
            <li class="faq-kind " data-kind="operational_policy">
                <a class="faq-kind-text" data-remote="true" a href="/qna/q1">운영정책</a>
            </li>
            <li class="faq-kind " data-kind="accounts">
                <a class="faq-kind-text" data-remote="true" a href="/qna/q2">계정/인증</a>
            </li>
            <li class="faq-kind " data-kind="flea_market">
                <a class="faq-kind-text" data-remote="true" a href="/qna/q3">구매/판매</a>
            </li>
            <li class="faq-kind " data-kind="flea_market_item">
                <a class="faq-kind-text" data-remote="true" a href="/qna/q4">거래 품목</a>
            </li>
            <li class="faq-kind " data-kind="event">
                <a class="faq-kind-text" data-remote="true" a href="/qna/q5">기타</a>
            </li>
            <li class="faq-kind " data-kind="etc">
                <a class="faq-kind-text" data-remote="true" a href="/qna/re">자주 묻는 질문</a>
            </li>
        </ul>
    </section>
</section>
<div style="text-align : center;">
    <img alt="" src="/image/csbanner.jpg" width="970px">
</div>
<div id="faq-detail">
    <h2 id="faq-detail-title">
        <span id="faq-detail-category">운영정책</span>
        커뮤니티 가이드라인
    </h2>

    <div id="faq-detail-content">
        <p>HIBI는 동네 이웃 간의 연결을 도와 따뜻하고 활발한 교류가 있는 지역 사회를 만들기 위해 노력하고 있어요.</p>
        <p>이웃을 향한 당신의 따뜻한 관심과 애정은 HIBI의 가장 큰 동력이에요. HIBI를 사용하는 이웃 모두가 커뮤니티 가이드라인을 지키며 따뜻한 지역 커뮤니티를 함께 만들어요.<br>
            혼자 힘으로는 할 수 없지만, 우리가 함께라면 할 수 있어요!</p>
        <p><br></p><p>HIBI는 신뢰, 존중, 윤리를 서비스의 중요한 가치라고 생각해요. 우리는 이 가치를 지키기 위해 언제나 최선을 다할 거예요. 더 가깝고 따뜻한 지역 커뮤니티를 위해 동참해주세요.
        </p><p><br></p><h2><strong>신뢰</strong></h2>
        <p>우리의 따뜻함은 신뢰로부터 나와요. 우리는 가까운 이웃과의 만남이 따뜻함이 될 수 있도록 노력해요. HIBI은 언제나 사용자에게 귀 기울이고, 사용자를 위한 서비스를 제공하며 신뢰를 만들어요.</p>
        <p><br></p><h3>우리는 함께 신뢰를 만들어요.</h3><ul><li>항상 솔직하게 대화해요.
        </li><li>서로 배려하며, 약속은 반드시 지켜요.
        </li><li>자세하고 정확한 정보를 제공해요.
        </li><li>누구나 찾기 쉽고 안전한 공공장소에서 만나요.</li></ul>
        <p><br></p><h3>이런 행동은 할 수 없어요.</h3><ul>
        <li>판매 금지 물품 거래.</li>
        <li>중고거래 사기 등 이웃에게 손해를 입히는 행위</li>
        </li><li>허위 정보 게시 등 이웃을 속이거나 기만하는 행위</li></ul>
        <p><br></p><p><br></p><h2><strong>존중</strong></h2>
        <p>HIBI의 모든 사용자가 우리 동네 이웃이라는 걸 기억해주세요. 어떠한 상황에서도 우리는 이웃의 다양성을 존중하고, 배려하기로 약속해요. HIBI은 누구나 존중받는 따뜻한 지역 커뮤니티를 지향하고 있어요.</p>
        <p><br></p><h3>우리는 서로 <span style="color: inherit;">존중해요.</span></h3><ul><li>성별, 나이, 종교, 혼인 여부, 인종, 장애 등 이웃의 다양성을 존중해요.</li>
        <li>우리 모두는 이 세상에 단 한 명 뿐인 소중한 사람이에요. 따뜻하게 배려해요.</li>
        <li>온라인으로 연결되어 있지만, 동네에서 마주쳤던 이웃일 수 있다는 사실을 기억해요.</li>
        <li>개인 정보와 사생활은 소중해요. 지나치게 묻거나 공개하지 않아요.</li></ul>
        <p><br></p><h3>이런 행동은 할 수 없어요.</h3><ul>
        <li>다양성을 존중하지 않는 차별 및 혐오</li>
        <li>거래 불이행 등 불쾌한 거래 경험을 주는 행위 </li>
        <li>욕설, 괴롭힘 등</li>
        <li></li>불쾌감, 성적 수치심 등을 주는 행위</li>
        <li>이웃을 배제하거나 소외시키는 행위</li></ul>
        <p><br></p><p><br></p><h2><strong>윤리</strong></h2>
        <p>우리는 지역사회의 규범과 가치관을 존중해요. 지역사회에서 다양한 문제가 발생할 수 있다는 것을 알고 있어요. 서비스 내에 우려되는 문제들은 HIBI에 적극적으로 알리고, 함께 해결해요.</p>
        <p><br></p><h3>우리는 윤리적으로 행동해요.</h3><ul><li>이웃이 어려움을 겪고 있다면, 기꺼이 도와요.</li><li>따뜻한 지역 커뮤니티를 위해 도덕적으로 선하게 행동해요.</li>
        <li>이웃의 안전이 염려된다면 즉시 가까운 경찰서나 구조대에 연락해요.</li>
        <li>지역사회 구성원인 우리는 서로가 서로에게 영향을 준다는 사실을 알고, 책임감 있게 행동해요.</li>
        <li>관련 법규를 준수해요.</li></ul><p><br></p><h3>이런 행동은 할 수 없어요.</h3><ul>
        <li>생명의 소중함을 스스로 버리는 행위(혹은 그에 준하는 모든 행위)</li>
        <li>생명을 거래하는 행위</li><li>폭력, 불법 행위를 조장하거나 도모하는 행위</li>
        <li>사회 통념상 용인되기 어려운 모든 행위</li></ul><p><br></p>
        <p><br></p><p>따뜻한 지역 커뮤니티를 만들기 위해서는 우리 모두의 관심과 노력이 필요해요.</p>
        <p>부적절한 게시글이나 사용자를 발견하면 적극적으로 신고해주세요. HIBI의 가치를 훼손하는 행위에 대한 기술적 조치 및 신속한 신고처리를 약속해요. 지금처럼 목소리를 내고, 적극적으로 참여해주세요.</p>
        <p><br></p><p>우리가 함께 지켜나갈 신뢰, 존중, 윤리 이 세가지 가치들을 누구나 볼 수 있도록 이 페이지도 계속해서 다듬고 업데이트할 거예요. 우리 함께 소중한 가치들을 지켜내요.</p>
        <p><br></p><p>서로 신뢰하고 존중하는 따뜻한 커뮤니티를 만들어가요.</p>
        <p><br></p><p>우리가 HIBI에서 서로 신뢰하고 존중하는 따뜻한 커뮤니티를 만들기 위해 함께 지켜야할 다양한 서비스의 정책이 있어요.
    </div>

</div>

</body>
</html>
