<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>JSP World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../../include/jQuaryMobile.inc" %>

<script type="text/javascript">
$(function()
    {
        $('ul li a').click(function()
            {
                var imageSrc = $(this).find('img').attr('src');
                var imageTitle = $(this).find('h3').text();
                var imageDesc = $(this).find('p').text();

                $("#p2_image").attr('src', imageSrc);
                $("#p2_title").attr('src', imageTitle);
                $("#p2_desc").attr('src', imageDesc);
            }
        );
    }
);
</script>
</head>

<body>
<section data-role="page" id="page1">

    <header data-role="header" data-theme="b">
        <h1>사진 목록</h1>
    </header>

    <section data-role="content">
        <%
        String[] title = {"콜로세움", "에펠탑", "비너스상"};
        String[] image_name = {"coloseum.jpg", "eiffel_tower.jpg", "venus.jpg"};
        String[] description = {"이탈리아 로마", "프랑스 파리", "프랑스 루브르마술관"};
        %>
        
        <ul data-role="listview" data-inset="true" data-theme="e">
            <li>
                <a href="#page2" data-rel="dialog" data-transition="pop">
                    <img src="../../contents/image/<%= image_name[0] %>" width=100% height=100%>
                    <h3><%= title[0] %></h3>
                    <p><%= description[0] %></p>
                </a>
            </li>

            <li>
                <a href="#page2" data-rel="dialog" data-transition="pop">
                    <img src="../../contents/image/<%= image_name[1] %>" width=100% height=100%>
                    <h3><%= title[1] %></h3>
                    <p><%= description[1] %></p>
                </a>
            </li>

            <li>
                <a href="#page2" data-rel="dialog" data-transition="pop">
                    <img src="../../contents/image/<%= image_name[2] %>" width=100% height=100%>
                    <h3><%= title[2] %></h3>
                    <p><%= description[2] %></p>
                </a>
            </li>
        </ul>
    </section>

    <footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
    </footer>
</section>

<section data-role="page" id="page2">
    <header data-role="header" data-theme="b">
        <h1 id="p2_image"></h1>
    </header>

    <section data-role="content">
        <img id="p2_image" width="100%">
        <p id="p2_desc"></p>
    </section>
</section>
</body>
</html>