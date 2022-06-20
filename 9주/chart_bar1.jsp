<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- jQuery/jQuery Mobile 라이브러리 사용 -->
<%@ include file="../../include/jQueryMobile.inc" %>

<!----- jqPlot 라이브러리 사용: 시작 ----->
<!-- CSS 기본 라이브러리 -->
<link class="include" rel="stylesheet" type="text/css" href="../../jqplot/jquery.jqplot.min.css" />
<!-- 자바스크립트 기본 라이브러리 -->
<script type="text/javascript" src="../../jqplot/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="../../jqplot/examples/syntaxhighlighter/scripts/shCore.min.js"></script>
<script type="text/javascript" src="../../jqplot/examples/syntaxhighlighter/scripts/shBrushJScript.min.js"></script>
<script type="text/javascript" src="../../jqplot/examples/syntaxhighlighter/scripts/shBrushXml.min.js"></script>
<!-- 카테고리 자바스크립트 라이브러리 -->
<script type="text/javascript" src="../../jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<!-- x, y축 라벨 -->
<script type="text/javascript" src="../../jqplot/plugins/jqplot.canvasTextRenderer.min.js"></script>
<script type="text/javascript" src="../../jqplot/plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
<!-- 바 차트 자바스크립트 라이브러리 -->
<script type="text/javascript" src="../../jqplot/plugins/jqplot.barRenderer.min.js"></script>
<!----- jqPlot 라이브러리 사용: 끝 ----->

<script type="text/javascript">
$(document).ready(function()
{
    // x축의 값
    var x =['5', '6', '7', '8'];
    // x축에 대응하는 y값(데이터 시리즈)
    var s1 = [200, 600, 700, 1000];

    // id가 chart1인 영역에 y값들을 차트로 출력
    var plot1 = $.jqplot('chart1', [s1],
    {
        seriesDefaults:
        {
            // 바 차트로 그리기
            renderer: $.jqplot.BarRenderer
        },
        
        //x, y축 설정
        axes:
        {
            // x축
            xaxis:
            {
                // x축에 데이터 시리즈를 하나의 카테고리로 적용
                renderer: $.jqplot.CategoryAxisRenderer,
                // x값 설정
                ticks: x,
                // x축 라벨 출력
                label: '월'
            },
            // y축
            yaxis:
            {
                // y축 라벨 출력
                label: '이익(천원) ',
                // y축 방향에 따른 라벨 출력
                labelRenderer: $.jqplot.CanvasAxisLabelRenderer 
            }
        }
    });
});
</script>

</head>
<body>

<!-- 페이지 영역 지정 -->
<section data-role="page">

    <!-- 1. 헤더 -->
    <header data-role="header" data-theme="b">
        <!-- 헤더 타이틀 -->
        <h1>월별 이익 실적</h1>
    </header>

    <!-- 2. 본문 -->
    <section data-role="content">
        <!-- 차트 영역 -->
        <div id="chart1" style="width:100%; height:400px;"></div>
    </section>

    <!-- 3. 푸터 -->
    <footer data-role="footer" data-theme="a" data-position="fixed">
        <!-- 푸터 내용: 회사정보 -->
        <h3>(주)JSP World 서울 강남구 삼성동 1234</h3>
    </footer>
</section>

</body>
</html>