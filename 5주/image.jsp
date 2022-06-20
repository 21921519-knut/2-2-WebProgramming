<!DOCTYPE HTML>
<!-- [1] 지시문(page 디렉티브) -->
<%@ page contentType="text/html;charset=euc-kr"%>
<!-- [1] 지시문(page 디렉티브): Calendar 클래스가 정의된 패키지 -->
<%@ page import = "java.util.*"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- jQuery/jQuery Mobile 라이브러리 사용 -->
<%@ include file="./include/jQueryMobile.inc" %>
<script type="text/javascript">
$(function()
{
    $('ul li a').click(function()
    {
        var imageSrc = $(this).find('img').attr('src');
        var imageTitle = $(this).find('h3').text();
        var imageDesc = $(this).find('p').text();
        $("#p2_image").attr('src', imageSrc);
        $("#p2_title").html(imageTitle);
        $("#p2_desc").html(imageDesc);
    });
});
</script>

</head>
<body>
<!-- 첫 번째 페이지: 시작 -->
<section data-role="page" id="page1">

    <!-- 1. 헤더 -->
    <header data-role="header" data-theme="b">
        <!-- 헤더 타이틀 -->
        <h1>사진 목록</h1>
    </header>

    <!-- 2. 본문 -->
    <section data-role="content">
        <!-- 목록 -->
        <ul data-role="listview" data-inset="true" data-theme="e">

            <!-- 목록 아이템 1 -->
            <li>
                <a href="#page2" data-rel="dialog" data-transition="pop">
                    <!-- 이미지: 소스, 제목, 설명 -->
                    <img src="image/cololseum.jpg" width=100% height=100%>

                    <h3>콜로세움</h3>
                    <p>이탈리아 로마</p>
                </a>
            </li>

            <!-- 목록 아이템 2 -->
            <li>
                <a href="#page2" data-rel="dialog" data-transition="pop">
                    <!-- 이미지: 소스, 제목, 설명 -->
                    <img src="image/eiffel_tower.jpg" width=100% height=100%>

                    <h3>에펠탑</h3>
                    <p>프랑스 파리</p>
                </a>
            </li>

            <!-- 목록 아이템 3 -->
            <li>
                <a href="#page2" data-rel="dialog" data-transition="pop">
                    <!-- 이미지: 소스, 제목, 설명 -->
                    <img src="image/venus.jpg" width=100% height=100%>

                    <h3>비너스상</h3>
                    <p>프랑스 루브르미술관</p>
                </a>
            </li>
        </ul>
    </section>

    <!-- 3. 푸터 -->
    <footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="./include/businessInfo.inc" %>
    </footer>

</section>
<!-- 첫 번째 페이지: 끝 -->

<!-- 두 번째 페이지: 시작 -->
<section data-role="page" id="page2">

    <!-- 1. 헤더 -->
    <header data-role="header" data-theme="b">
        <!-- 이미지 제목 -->
        <h1 id="p2_title"></h1>
    </header>

    <!-- 2. 본문 -->
    <section data-role="content">
        <!-- 이미지 소스 -->
        <img id="p2_image" width="100%">

        <!-- 이미지 설명 -->
        <p id="p2_desc"></p>
    </section>

</section>
<!-- 두 번째 페이지: 끝 -->
</body>
</html>