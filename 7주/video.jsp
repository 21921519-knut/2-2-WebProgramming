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
                var videoTitle = $(this).find('h3').text();
                var videoSrc = $(this).find('div').text();
                var videoDesc = $(this).find('p.description').text();

                $("#p2_title").html(videoTitle);
                $("#p2_desc").html(videoDesc);

                var video = $("#p2_video");
                video.attr('src',"../../contents/video/" + videoSrc);
                video.get(0).play();
            }
        );

        $('#page2').click(function()
            {
                $("#p2_video").get(0).pause();
            }
        );
    }
);
</script>
</head>

<body>
<section data-role="page" id="page1">

    <header data-role="header" data-theme="b">
        <h1>비디오 목록</h1>
    </header>

    <section data-role="content">
        <%
        String[] thumnail = {"fountain_night.png", "creek_rock.png", "waterfall_street.png"};
        String[] title = {"음악 분수대의 야경", "계곡", "청계천폭포"};
        String[] description = {"서울, 예술의 전당", "경기도 양평, 용문산", "서울, 청계천"};
        String[] file_name = {"fountain_night.mp4", "creek_rock.mp4", "waterfall_street.mp4"};
        String[] time = {"00:05", "00:03", "00:03"};
        %>
        
        <ul data-role="listview" data-inset="true" data-theme="e">
            <li>
                <a href="#page2" data-rel="dialog" data-transition="pop">
                    <img src="../../contents/video/image/<%= thumnail[0] %>" width=100% height=100%>
                    <h3><%= title[0] %></h3>
                    <p class="description">
                    <%= description[0] %><br>
                    <div style="display: none"><%= file_name[0] %></div>
                    </p>
                    <p class="ui-li-aside"><strong><%= time[0] %></strong>분</p>
                </a>
            </li>

            <li>
                <a href="#page2" data-rel="dialog" data-transition="pop">
                    <img src="../../contents/video/image/<%= thumnail[1] %>" width=100% height=100%>
                    <h3><%= title[1] %></h3>
                    <p class="description">
                    <%= description[1] %><br>
                    <div style="display: none"><%= file_name[1] %></div>
                    </p>
                    <p class="ui-li-aside"><strong><%= time[1] %></strong>분</p>
                </a>
            </li>

            <li>
                <a href="#page2" data-rel="dialog" data-transition="pop">
                    <img src="../../contents/video/image/<%= thumnail[2] %>" width=100% height=100%>
                    <h3><%= title[2] %></h3>
                    <p class="description">
                    <%= description[2] %><br>
                    <div style="display: none"><%= file_name[2] %></div>
                    </p>
                    <p class="ui-li-aside"><strong><%= time[2] %></strong>분</p>
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
        <h1 id="p2_title"></h1>
    </header>

    <section data-role="content">
        <video id="p2_video" width="100%" preload="false" controls="controls"></video>
        <p id="p2_desc"></p>
    </section>

    <footer data-role="footer" data-theme="a" data-position="fixed">
        <%@ include file="../../include/businessInfo.inc" %>
    </footer>
</section>
</body>
</html>