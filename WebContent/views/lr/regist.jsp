<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>基于网红模式的高校直播平台--注册</title>

    <!--链接样式表-->
    <script src="/livesystem/resources/js/jquery.js"></script>
    <!--链接样式表-->
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/Login.css" />
    <link rel="stylesheet" type="text/css" href="/livesystem/resources/css/broadcast.css" />
</head>
<body>
<center>
    <br />
    <!--图标-->
    <img src="#" width="200" height="200" />
    <br /><br />
    <label>注册账号</label>
    <br /><br />
    
    
    <form action="/livesystem/registaction" method="post" id="form">
        <div class="divPhone_account" >
            <input type="text" class="input_textBox" placeholder="学院" name="academy" id="academy" />
            <lable>wfwfwefwe</lable>

        </div>
        <div class="divSno_center">
            <input type="text" class="input_textBox" placeholder="学号" name="id" id="id"/>
        </div>
        <div class="divSno_center">
            <input type="text" class="input_textBox" placeholder="姓名" name="name" id="name"/>
        </div>
        <div class="divSno_center">
            <input type="text" class="input_textBox" placeholder="邮箱" name="email" id="email"/>
        </div>
        <div class="divSno_center">
            <input type="password" class="input_textBox" placeholder="密码" name="password" id="password"/>
        </div>
        <br />
    </form>
    <button class="btn" id="submit">注册</button>
    <br />
    <label style="font-size:14px;cursor:auto;">点击"注册"按钮,即表示您同意</label>
    <br />
    <a href="#" style="color:green">《基于网红模式的高校直播平台用户协议》</a>
</center>
<script>

    $(document).ready(function () {
        $("#submit").click(function () {
$("#form").submit();
        });

        $("#id").blur(function () {
            var zhi = $(this).val();
            if(zhi===""){
                console.log("sss");
            }
            else {
                $.ajax(
                    {
                        type: 'get',
                        url: 'checkId',
                        data: {
                            'id': zhi
                        },
                        success: function (data) {
                            console.log(data.status)
                        },
                        error: function () {
                            console.log("error");
                        }
                    }
                )

            }
        })   ;

    });
</script>
</body>
</html>
