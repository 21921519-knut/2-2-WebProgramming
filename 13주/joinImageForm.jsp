<!DOCTYPE html>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<section>
    <!-- 1. 헤더 -->
    <header class="header1">
        <!-- 헤더 타이틀 -->
        <h1>회원등록</h1>
    </header>

    <!-- 2. 본문 -->
    <section>
        <br>
        <form method="post" action="joinImage" enctype="multipart/form-data"></form>
            <fieldset>
                <legend>회원정보</legend>

                <ul class="tableForm">
                    <!-- 고객ID -->
                    <li>
                    <label for="ID2">회원ID : </label>
                    <input type="text" id="ID2" name="ID" size=10 maxlength=10 required="required"/>
                    </li>

                    <!-- 성명 -->
                    <li>
                    <label for="name2">성명 : </label>
                    <input type="text" id="name2" name="name" size=10 maxlength=10 required="required"/>
                    </li>

                    <!-- 사진 -->
                    <li>
                    <label for="my_image2">사진 : </label>
                    <input type="file" id="my_image2" name="my_image"/>
                    </li>
                </ul>

                <p align="center">
                <input type="submit" value="등록">
                </p>
            </fieldset>
        </form>
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