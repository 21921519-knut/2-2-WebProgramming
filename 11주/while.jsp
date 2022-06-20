<!DOCTYPE html>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<section>
    <!-- 1. 헤더 -->
    <header class="header1">
        <h1>조건문/반복문</h1>
    </header>

    <!-- 2. 본문 -->
    <section>
        <br>
        <br>
        <%
        int sum = 0;
        int i = 1;
        while (i <= 10)
        {
            sum += i;
            i++;
        }
        %>
        1부터 10까지의 합은 <%= sum %>입니다.
        <br>
        <br>
        <br>
    </section>
    <!-- 3. 푸터 -->
    <footer class="footer1">
        <center>
            asdf
        </center>
    </footer>
</section>
</body>
</html>