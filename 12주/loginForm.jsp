<!DOCTYPE html>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./style2.css" />
</head>
<body>

<section>
    <!-- 1. 헤더 -->
    <header class="header1">
        <h1>JSP 내장객체</h1>
    </header>

    <!-- 2. 본문 -->
    <section>
        <br>
        <form method="POST" action="login.jsp">
            <fieldset>
            <legend>회원정보</legend>
            <ul class="tableForm">
                <!-- 고객ID -->
                <li>
                <label for="ID2">회원ID:</label>
                <input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>
                </li>

                <!-- 비밀번호 -->
                <li>
                <label for="pswd2">비밀번호:</label>
                <input type="password" id="pswd2" name="pswd" size=10 maxlength=10 required="required"/>
                </li>
            </ul>
            <p align="center">
                <input type="submit" value="로그인">
            </p>
            </fieldset>
        </form>
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