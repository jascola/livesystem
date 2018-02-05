<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>${title}</title>
    <script src="/livesystem/resources/js/jquery.js"></script>
    <!--链接样式表-->
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/Login.css"/>
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/broadcast.css" />
    <script>
        window.onload = function () {
            document.getElementById("Phone_login_div").style.visibility = "visible";
            document.getElementById("Phone_login_div").style.height = "auto";
            document.getElementById("Sno_Login_div").style.visibility = "hidden";
            document.getElementById("Sno_Login_div").style.height = "0";
            $(document).ready(function () {
                $("#login").click(function () {
                    $("#teacherlogin").submit();
                });
            });
        }

        function select_login(a) {
            if (a.id == "Phone_login") {
                document.getElementById("login_select").innerHTML = "<label class='active_select' id='Phone_login' onclick='select_login(this)'>教师登录</label>" +
                    "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" +
                    "<label id='Sno_login' onclick='select_login(this)'>学生登录</label>";
                document.getElementById("Phone_login_div").style.visibility = "visible";
                document.getElementById("Phone_login_div").style.height = "auto";
                document.getElementById("Sno_Login_div").style.visibility = "hidden";
                document.getElementById("Sno_Login_div").style.height = "0";
                $(document).ready(function () {
                    $("#login").click(function () {
                        $("#teacherlogin").submit();
                    });
                });
            }
            else {
                document.getElementById("login_select").innerHTML = "<label id='Phone_login' onclick='select_login(this)'>教师登录</label>" +
                    "&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp" +
                    "<label class='active_select' id='Sno_login' onclick='select_login(this)'>学生登录</label>";
                document.getElementById("Phone_login_div").style.visibility = "hidden";
                document.getElementById("Phone_login_div").style.height = "0";
                document.getElementById("Sno_Login_div").style.visibility = "visible";
                document.getElementById("Sno_Login_div").style.height = "auto";
                $(document).ready(function () {
                    $("#login").click(function () {
                        $("#studentlogin").submit();
                    });
                });

            }
        }
    </script>
</head>
<body>
<center>
    <br/>
    <!--图标-->
    <img src="#" width="200" height="200"/>
    <br/><br/>
    <div id="login_select">
        <label class="active_select" id="Phone_login" onclick="select_login(this)">教师登录</label>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <label id="Sno_login" onclick="select_login(this)">学生登录</label>
    </div>


    <br/><br/>
    <!--手机号-->
    <form method="post" action="/livesystem/teacherlogin" id="teacherlogin">
    <div id="Phone_login_div">
        <div class="divPhone_account">
            <input type="text" class="input_textBox" placeholder="教工号" name="teacher_id"/>
        </div>
        <div class="divPhone_Password">
            <input type="password" class="input_textBox" placeholder="密码" name="teacher_password"/>
        </div>
    </div>
    </form>

    <!--学号-->
    <form action="/livesystem/studentlogin" method="post" id="studentlogin">
    <div id="Sno_Login_div">
        <div class="divPhone_account">
            <input type="text" class="input_textBox" placeholder="学号" name="student_id"/>
        </div>
        <div class="divPhone_Password">
            <input type="password" class="input_textBox" placeholder="密码" name="student_password"/>
        </div>
    </div>
    </form>
    <br/>
    <!--登陆按钮-->
    <input class="btn" id="login" type="submit" value="登录"/>
    <br/><br/>


    <a href="#">忘记密码</a>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <a href="/regist">注册账号</a>
</center>
</body>
</html>
