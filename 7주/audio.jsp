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
                var videoTitle = $(this).find('div').text();

                var myAudio = $("#audio");
                myAudio.get(0).pause();
                myAudio.attr('src', "../../contents/audio/" + videoTitle);
                myAudio.get(0).play();
            }
        );
    }
);
</script>
</head>

<body>
<section data-role="page" id="page1">

    <header data-role="header" data-theme="b">
        <h1>오디오 목록</h1>
    </header>

    <section data-role="content">
        <%
        String[] title = {"학교종", "코끼리 아저씨", "산토끼"};
        String[] file_name = {"schoolBell.mp3", "elephant.mp3", "hare.mp3"};
        String[] time = {"00:19", "00:16", "00:16"};
        %>
        
        <ul data-role="listview" data-inset="true" data-theme="e">
            <li>
                <a href="#">
                    <h3><%= title[0] %></h3>
                    <p>
                    <%= artist[0] %><br>
                    <div style="display: none"><%= file_name[0] %></div>
                    </p>
                    <p class="ui-li-aside"><strong><%= time[0] %></strong>분</p>
                </a>
            </li>

            <li>
                <a href="#">
                    <h3><%= title[1] %></h3>
                    <p>
                    <%= artist[1] %><br>
                    <div style="display: none"><%= file_name[1] %></div>
                    </p>
                    <p class="ui-li-aside"><strong><%= time[1] %></strong>분</p>
                </a>
            </li>

            <li>
                <a href="#">
                    <h3><%= title[2] %></h3>
                    <p>
                    <%= artist[2] %><br>
                    <div style="display: none"><%= file_name[2] %></div>
                    </p>
                    <p class="ui-li-aside"><strong><%= time[2] %></strong>분</p>
                </a>
            </li>
        </ul>

        <center>
            <audio id="audio" controls></audio>
        </center>
    </section>

    <footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
    </footer>
</section>
</body>
</html>