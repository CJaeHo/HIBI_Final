<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자주 묻는 질문💙</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link
            href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Gowun+Dodum&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
            rel="stylesheet">

    <style type = "text/css">

        body {
            margin: 0 auto;
            width: 100%;
            /*min-height: 100vh;*/
            font-family: "Inter", sans-serif;
            font-size: 1.25rem;
        }

        h2 {
            font-size: 12px;
            text-align: center;
            font-weight: 700;
        }
/*--------------------------------------------*/
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap');

        *, *:after, *:before {
            box-sizing: border-box;
        }

        :focus {
            outline: none;
        }

        body > div {
            width: 100%;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 5rem;
        }

        div.name{
            margin-top: 50px;
            margin-right: 300px;
            margin-left: 300px;
            margin-bottom: 50px;
        }

        details div {
            border-left: 2px solid #000;
            border-right: 2px solid #000;
            border-bottom: 2px solid #000;
            padding: 1.5em;
        }

        details div > * + * {
            margin-top: 1.5em;
        }

        details + details {
            margin-top: .5rem;
        }

        summary {
            list-style: none;
        }

        summary::-webkit-details-marker {
            display: none;
        }

        summary {
            border: 2px solid #000;
            /*padding: .75em 1em;*/
            padding: 2rem;
            cursor: pointer;
            position: relative;
            padding-left: calc(1.75rem + .75rem + .75rem);
        }

        summary:before {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            left: .75rem;
            content: "↓";
            width: 1.75rem;
            height: 1.75rem;
            background-color: #000;
            color: #FFF;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            flex-shrink: 0;
        }

        details[open] summary {
            background-color: #eee;
        }

        details[open] summary:before {
            content: "↑";
        }

        summary:hover {
            background-color: #eee;
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

        code {
            font-family: monospace;
            font-weight: 600;
        }
        /*------------------------*/

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

    </style>
</head>
<body>
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
                <a class="faq-kind-text" data-remote="true" a href="/qna/q4">문의 사항 리스트</a>
            </li>
            <li class="faq-kind " data-kind="event">
                <a class="faq-kind-text" data-remote="true" a href="/qna/form">고객의 소리</a>
            </li>
            <li class="faq-kind " data-kind="etc">
                <a class="faq-kind-text" data-remote="true" a href="/qna/re">자주 묻는 질문</a>
            </li>
        </ul>
    </section>
    <h2>자주 묻는 질문🤔</h2>
    <div class="name">
        <details open>
            <summary>
                좋은말 할 떄 궁금한거 없어라
            </summary>
            <div>
                있기만해봐 내가 매운맛을 보여준다
            </div>
        </details>
        <details>
            <summary>
                이게 난 최선이야
            </summary>
            <div>
                열심히했다구,,,
            </div>
        </details>
        <details>
            <summary>
                여긴 개소리를 적어볼게
            </summary>
            <div>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
                ㅁㅇ라ㅣㅓㅁ이ㅏ럼;ㅣㅇㄴ러미;ㅇ럼니;아ㅗㅓㄹ나ㅓㅇ로나ㅓ오라ㅓㄴㅇ롸ㅣ넘올미ㅏㅓㄴㅇㄹㅎ마ㅣㅓㄴ옳머ㅣㅗㄴㅇㄹ히만ㅇ;ㅗㅓㄹㅎ마ㅣㄴㅇ호리마<br>
            </div>
        </details>
        <details>
            <summary>
                이게 아직도 안끝남
            </summary>
            <div>
                ㅁㅇㄹㅁㅇㄹㅁ
            </div>
        </details>
        <details>
            <summary>
                나 일해
            </summary>
            <div>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>

                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>

                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
            </div>
        </details>
        <details>
            <summary>
                나 일해
            </summary>
            <div>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>

                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>

                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
            </div>
        </details>
        <details>
            <summary>
                나 일해
            </summary>
            <div>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>

                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>

                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
            </div>
        </details>
        <details>
            <summary>
                나 일해
            </summary>
            <div>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>

                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>

                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
                <code>&lt;일&gt;</code> 나일해 <code>&lt;일&gt;</code> 일한다구!<br>
            </div>
        </details>
    </div>
</body>
</html>