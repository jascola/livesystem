<%--
  Created by IntelliJ IDEA.
  User: jascola
  Date: 2017/8/9
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${title}</title>
     <script src="/livesystem/resources/js/jquery.js"></script>
    <!--链接样式表-->
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/SuperUser.css"/>

    <!--载入js-->
    <script src="/livesystem/resources/js/SuperUser.js"></script>

</head>


<body>
<!--头部-->
<div class="header">
    <!--选项按钮-->
    <div class="select_btn1" id="course_btn" onclick="select_btn_click(this)">课程</div>
    <div class="select_btn2" id="teacher_btn" onclick="select_btn_click(this)">教师</div>
    <div class="select_btn3" id="student_btn" onclick="select_btn_click(this)">学生</div>

    <!--搜索框-->
    <div class="search_div">
        <input type="text" placeholder="请输入课程名称/编号、老师名称/账号、学生名称/账号" class="search_input_textBox"/>
        <input type="submit" value="搜索" class="search_btn"/>
    </div>

    <!--操作按钮-->
    <div class="action_btn1">新建管理员</div>
    <div class="action_btn2">注销</div>

</div>

<!--内容-->
<div class="detail_div_out">
    <center>
        <div class="new_div1" id="addcourse">添加课程</div>
        <div class="new_div2">添加老师</div>
        <div class="new_div3">添加学生</div>
        <br/><br/>

        <!--每个课程/老师/学生 均由div包含-->
        <br/>
        <div class="course_teacher_student_div">
            <!--课程/老师/学生 图片-->
            <img src="#" class="course_teacher_student_img" />
            <!--课程/老师/学生 介绍-->
            <div class="course_teacher_student_introduce_div">
                <br/>
                <b>名称：</b>  <label>课程/老师/学生 名称</label>
                <br/><br/>
                <b>编号：</b>  <label>课程/老师/学生 编号</label>
                <br/><br/>
                <b>简介：</b>  <label>课程/老师/学生 简介</label>
            </div>
            <!--课程/老师/学生 操作-->
            <div class="course_teacher_student_action_div">
                <div class="delete_lookDetail_btn">删除</div>
                <br/><br/>
                <div class="delete_lookDetail_btn">详细信息</div>
            </div>
        </div>
        <br/>

        <!--每个课程/老师/学生 均由div包含-->
        <br/>
        <div class="course_teacher_student_div">
            <!--课程/老师/学生 图片-->
            <img src="#" class="course_teacher_student_img" />
            <!--课程/老师/学生 介绍-->
            <div class="course_teacher_student_introduce_div">
                <br/>
                <b>名称：</b>  <label>课程/老师/学生 名称</label>
                <br/><br/>
                <b>编号：</b>  <label>课程/老师/学生 编号</label>
                <br/><br/>
                <b>简介：</b>  <label>课程/老师/学生 简介</label>
            </div>
            <!--课程/老师/学生 操作-->
            <div class="course_teacher_student_action_div">
                <div class="delete_lookDetail_btn">删除</div>
                <br/><br/>
                <div class="delete_lookDetail_btn">详细信息</div>
            </div>
        </div>
        <br/>

        <!--每个课程/老师/学生 均由div包含-->
        <br/>
        <div class="course_teacher_student_div">
            <!--课程/老师/学生 图片-->
            <img src="#" class="course_teacher_student_img" />
            <!--课程/老师/学生 介绍-->
            <div class="course_teacher_student_introduce_div">
                <br/>
                <b>名称：</b>  <label>课程/老师/学生 名称</label>
                <br/><br/>
                <b>编号：</b>  <label>课程/老师/学生 编号</label>
                <br/><br/>
                <b>简介：</b>  <label>课程/老师/学生 简介</label>
            </div>
            <!--课程/老师/学生 操作-->
            <div class="course_teacher_student_action_div">
                <div class="delete_lookDetail_btn">删除</div>
                <br/><br/>
                <div class="delete_lookDetail_btn">详细信息</div>
            </div>
        </div>
        <br/>

        <!--每个课程/老师/学生 均由div包含-->
        <br/>
        <div class="course_teacher_student_div">
            <!--课程/老师/学生 图片-->
            <img src="#" class="course_teacher_student_img" />
            <!--课程/老师/学生 介绍-->
            <div class="course_teacher_student_introduce_div">
                <br/>
                <b>名称：</b>  <label>课程/老师/学生 名称</label>
                <br/><br/>
                <b>编号：</b>  <label>课程/老师/学生 编号</label>
                <br/><br/>
                <b>简介：</b>  <label>课程/老师/学生 简介</label>
            </div>
            <!--课程/老师/学生 操作-->
            <div class="course_teacher_student_action_div">
                <div class="delete_lookDetail_btn">删除</div>
                <br/><br/>
                <div class="delete_lookDetail_btn">详细信息</div>
            </div>
        </div>
        <br/>

    </center>
</div>
<script>
$(document).ready(function () {

$("#addcourse").click(function () {
    window.location.href='addcourse';
});

});
</script>
</body>
</html>