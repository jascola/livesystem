<%--
  Created by IntelliJ IDEA.
  User: jascola
  Date: 2017/9/17
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${title}</title>
    <script src="/livesystem/resources/js/jquery.js"></script>
    <!--链接样式表-->
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/new_course.css" />
</head>

<body>
<center>
    <!--操作按钮-->
    <div class="action_div">
        <div class="btn_div1">返回</div>
        <div class="btn_div2">清空</div>
        <div class="btn_div3">添加</div>
    </div>

    <!--录入信息-->
    <div class="info_input_div">
        <div class="div_info_out">
            <b>课程名称:</b>    <input type="text" placeholder="请输入课程名称" />
            <br/><br/><br/>
            <b>任课老师编号:</b>	<input type="text" placeholder="请输入任课老师编号" />
            <br/><br/><br/>
            <b>任课老师姓名:</b>	<input type="text" placeholder="请输入任课老师姓名" />
            <br/><br/><br/>
            <b>老师所属学院:</b>	<input type="text" placeholder="请输入任课老师所在学院" />
            <br/><br/><br/>
            <b>任课老师职称:</b>	<input type="text" placeholder="请输入任课老师职称" />
            <br/><br/><br/>
            <b>任课老师介绍:</b>	<textarea placeholder="请在此输入任课老师的相关介绍"></textarea>
            <br/><br/><br/>
            <b>课程介绍:</b>	<textarea placeholder="请在此输入该课程的相关介绍"></textarea>
            <br/><br/><br/>
        </div>
    </div>

</center>
</body>

</html>