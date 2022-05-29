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
        </ul>
    </section>
</section>
</body>
</html>