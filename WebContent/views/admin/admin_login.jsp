<%--
  Created by IntelliJ IDEA.
  User: jascola
  Date: 2017/8/9
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${title}</title>
    <script src="/livesystem/resources/js/jquery.js"></script>
    <!--链接样式表-->
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/Login.css"/>
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/broadcast.css" />
</head>
<body>
<center>

    <br/>
    <!--图标-->
    <img src="#" width="200" height="200"/>
    <br/><br/>
    <div id="login_select">
        <label class="active_select" >管理员登录</label>
    </div>


    <br/><br/>

<form method="post" action="/livesystem/adminlogin" id="admin">
    <div id="Phone_login_div">
        <div class="divPhone_account">
            <input type="text" class="input_textBox" placeholder="账号" name="admin_id"/>
        </div>
        <div class="divPhone_Password">
            <input type="password" class="input_textBox" placeholder="密码" name="admin_password"/>
        </div>
    </div>
</form>
<!--登陆按钮-->
<input class="btn" id="login" type="submit" value="登录"/>

</center>
<script>
$(document).ready(function () {
$("#login").click(function () {
$("#admin").submit();
});
});
</script>
</body>
</html>
