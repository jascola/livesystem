<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jascola
  Date: 2017/8/14
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="/livesystem/resources/js/jquery.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<table>
    <tr>
        <td>教师号</td>
        <td>学院</td>
        <td>教师姓名</td>
        <td>教师邮箱</td>
    </tr>
    <c:forEach items="${teacher}" var="t">
        <tr>
            <td>${t.id}</td>
            <td>${t.academy}</td>
            <td>${t.name}</td>
            <td>${t.email}</td>
            <td>

                <!-- 按钮样式自设 -->
                <button  data-toggle="modal" data-target="#myModal">
                    删除
                </button>


                <!-- 模态框（Modal） -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;
                                </button>
                                <h4 class="modal-title" id="myModalLabel">
                                    删除教师
                                </h4>
                            </div>
                            <div class="modal-body">
                                
                                <!-- 样式自设 -->
                                <form action="/livesystem/delete_teacher" >
                                    教师id: <input value="${t.id}" type="text" name="id"/>
                                    </br>
                                    </br>
                                    学院：<input value="${t.academy}" type="text"/>
                                    <br>
                                    </br>
                                    姓名： <input value="${t.name}" type="text"/>
                                    <br>
                                    </br>
                                    邮箱： <input value="${t.email}" type="text"/>
                                    <br>
                                    </br>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                        </button>
                                        <button type="submit" class="btn btn-primary" >
                                            提交更改
                                        </button>
                                    </div>
                                </form>
                            </div>

                        </div><!-- /.modal-content -->
                    </div><!-- /.modal -->
                </div>
            </td>
        </tr>
    </c:forEach>


    <tr>
        <td>

            <!-- 按钮样式自设 -->
            <button  data-toggle="modal" data-target="#myModa">
                添加
            </button>

            <!-- 模态框（Modal） -->
            <div class="modal fade" id="myModa" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title" id="myModalLabe">
                                添加教师
                            </h4>
                        </div>
                        <div class="modal-body">
                            <form action="/livesystem/add_teacher" >
                                教师id： <input  type="text" name="id"/>
                                </br>
                                </br>
                                学院：  <input  type="text" name="academy"/>
                                <br>
                                </br>
                                姓名： <input  type="text" name="name"/>
                                <br>
                                </br>
                                密码：<input  type="text" name="password"/>
                                <br>
                                <br>
                                邮箱： <input type="text" name="email"/>
                                <br>
                                </br>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                    </button>
                                    <button type="submit" class="btn btn-primary" >
                                        提交更改
                                    </button>
                                </div>
                            </form>
                        </div>

                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>
        </td>
    </tr>
</table>




</body>
</html>
