<%--
  Created by IntelliJ IDEA.
  User: han
  Date: 2020-06-27
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>产品参数</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <table class="table table-bordered">
        <tr>
            <td>产品编号</td><td>${detail.id}</td><td>产品类型</td><td>${type.typeName}</td>
        </tr>
        <tr>
            <td>产品名称</td><td>${detail.name}</td><td>表面处理</td><td>${detail.surface}</td>
        </tr>
        <tr>
            <td>产品标准</td><td>${detail.standard}</td><td>产品半径</td><td>${detail.diameter}</td>
        </tr>
        <tr><td>产品图片</td></tr>
        <tr>
            <td><img src="${detail.image}"></td>
        </tr>
    </table>
    <button type="button" id="behind" onclick="javascript:window.history.back(-1);">上一页</button>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="/js/jquery-1.11.0.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="/js/bootstrap.min.js"></script>
</body>
</html>
