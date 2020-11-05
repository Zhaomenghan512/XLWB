<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>后台管理登录</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <style>
        #body {
            margin: 0 auto;
            padding: 10%;
            width: 100%;
            height: 100%;
            background:url("/images/bj.jpg");
            overflow: auto;
            background-size: 100% 100%;
        }
        .control-label {
            color: yellow;
        }
        #span1 {
            text-align: center;
            margin: 0 auto;
            padding: 0;
        }
    </style>
</head>
<body id="body">
<span id="span1"><h2 style="color: red">后台管理登录页面</h2></span>
<form class="form-horizontal" method="post" action="/admin/login">
    <div class="form-group">
        <label for="username" class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-8">
            <input type="text" name="username" class="form-control" id="username" placeholder="用户名">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;码</label>
        <div class="col-sm-8">
            <input type="password" name="password" class="form-control" id="password" placeholder="密码">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">登录</button>
        </div>
    </div>
</form>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="../js/jquery-1.11.0.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
