<%--
  Created by IntelliJ IDEA.
  User: jascola
  Date: 2017/8/9
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>${title}</title>

<!--链接样式表-->
<link rel="stylesheet" type="text/css" href="/livesystem/resources/css/Mainform_notLogin.css" />
<link rel="stylesheet" type="text/css" href="/livesystem/resources/css/broadcast.css" />

<!--载入js-->
<script src="/livesystem/resources/js/active_select_btn.js"></script>
<script src="/livesystem/resources/js/video_active.js"></script>

<script>
    window.onload = function () {
        document.getElementById("btn_select_1").style.backgroundColor = "#0040ff";

        document.getElementById("ask_div").style.visibility = "hidden";
        document.getElementById("ask_div").style.height = "0";

        document.getElementById("file_down").style.visibility = "hidden";
        document.getElementById("file_down").style.height = "0";

        var id = document.getElementById("last_active_video").value;
        if (id != "") {
            document.getElementById(id).style.color = "#80ffbf";
            document.getElementById(id + "_out").style.color = "#80ffbf";
            document.getElementById(id + "_out").style.height = "80px";
        }
    }
</script>

</head>
<body>
<!--隐藏域传值-->
<input type="text" id="last_active_video" hidden />


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
        <a href="#">直播</a>
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



<!--直播页面-->
<div class="broadcast_div">
    <center>
        <!--直播外框-->
        <div class="broadcast_div_out">
            <!--视频框-->
            <div class="video">

            </div>

            <!--资源框-->
            <div class="source">
                <b>正在直播</b>
                <!--搜索框-->
                <div class="search_textbox_div">
                    <input type="text" placeholder="课程名称/老师姓名" class="search_text" />
                    <input type="button" value="搜索" class="search_btn" />
                </div>

                <!--选择按钮-->
                <div class="select_btn_div">
                    <input type="button" value="直播列表" class="select_btn" id="btn_select_1" onclick="activeBtn(this)" />
                    &nbsp&nbsp&nbsp&nbsp
                    <input type="button" value="资源下载" class="select_btn" id="btn_select_2" onclick="activeBtn(this)" />
                    &nbsp&nbsp&nbsp&nbsp
                    <input type="button" value="问题咨询" class="select_btn" id="btn_select_3" onclick="activeBtn(this)" />
                </div>

                <!--资源框-->
                <div>

                    <!--问题咨询框-->
                    <div class="ask_div" id="ask_div">

                        <!--内容框,所有的问题显示在此处-->
                        <div class="detail_ask_div">
                            <font class="name_ask">老师：</font><font class="detail_ask_label">你们好</font><br />
                            <font class="name_ask">学生809348：</font><font class="detail_ask_label">老师好</font><br />
                        </div>

                        <!--发送框-->
                        <div class="div_ask_out">
                            <center>
                                <input type="text" placeholder="请输入您的问题" class="ask_textbox_input" />

                                <input type="button" value="提问" class="ask_btn" />
                            </center>
                        </div>


                    </div>


                    <!--资源下载框-->
                    <div id="file_down" style="color:white">
                        <br /><br /><br /><br />
                        你还没有登陆哦~;登陆后即可下载所有资源.<br />
                        <a href="/login" style="font-size:15px;color:blue;">点我登陆</a>
                    </div>


                    <!--直播列表-->
                    <div id="broadcast_list">
                        <div class="broadcast_list_div_out">

                            <!--每个视频选项均有一个div,id命名外框为video_num_out内部按钮div命名为video_num,不然js失效-->
                            <div class="video_div" id="video_1_out" onmouseover="mouse_on(this)" onmouseout="mouse_off(this)">
                                <font>视频</font>
                                &nbsp&nbsp&nbsp&nbsp
                                <font>《视频名称》</font>
                                <br />
                                <img src="#" width="90" height="45" style="vertical-align:top;" />
                                <font>作者名称</font>
                                <div class="bofang_div" id="video_1" onclick="video_select_click(this)">
                                    <img src="${pageContext.request.contextPath}/static/image/bofang.png" width="25" />
                                    <font style="position:relative; top:-7px;">立即观看</font>
                                </div>
                            </div><br />

                            <!--每个视频选项均有一个div-->
                            <div class="video_div" id="video_2_out" onmouseover="mouse_on(this)" onmouseout="mouse_off(this)">
                                <font>视频</font>
                                &nbsp&nbsp&nbsp&nbsp
                                <font>《视频名称》</font>
                                <br />
                                <img src="#" width="90" height="45" style="vertical-align:top;" />
                                <font>作者名称</font>
                                <div class="bofang_div" id="video_2" onclick="video_select_click(this)">
                                    <img src="${pageContext.request.contextPath}/static/image/bofang.png" width="25" />
                                    <font style="position:relative; top:-7px;">立即观看</font>
                                </div>
                            </div><br />

                        </div>
                    </div>

                </div>

            </div>

        </div>
    </center>
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

</body>
</html>
