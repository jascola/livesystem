<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>${title}</title>
    <script src="/livesystem/resources/js/jquery.js"></script>
    <!--链接样式表-->
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/broadcast.css" />
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/Mainform_notLogin.css" />
</head>
<body>
<form>
    <!--顶部-->
    <div class="div_header">

        <!--搜索框-->
        <div class="div_search">
            <!--搜索输入框-->
            <input type="text" placeholder="搜索课程名称、开课老师等" class="input_search" />
            <!--搜索按钮-->
            <input type="image" src="/livesystem/resources/image/搜索图标.png" class="img_search_btn" />
        </div>

        <!--操作按钮-->
        <div class="btn_action_location">
            <!--直播按钮-->
            <a href="/live">直播</a>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <!--登陆按钮-->
            <a href="/livesystem/login">登陆</a>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <!--注册按钮-->
            <a href="/livesystem/regist">注册</a>
        </div>

    </div>


    <!--中间介绍-->
    <div class="div_introduce">
        <img src="/livesystem/resources/image/介绍.png" />
    </div>

    <!--下面介绍-->
    <div>
        <img src="/livesystem/resources/image/介绍1.png" />
        <img src="/livesystem/resources/image/介绍2.png" />
    </div>

    <!--底部-->
    <div class="div_footer">
        <br />
        <center>
            <b>基于网红模式的高校直播平台</b>
            <label>--改变教育的方式</label>
            <br /><br />
            <label>关于我们</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <label>联系我们</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <label>服务中心</label>
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <label>版权说明</label>
        </center>
    </div>

</form>
</body>
</html>
