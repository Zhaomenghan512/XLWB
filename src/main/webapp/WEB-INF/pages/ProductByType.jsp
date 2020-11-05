<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <table class="table table-hover">
        <tr>
            <th>产品标号</th>
            <th>产品名称</th>
            <th>产品半径</th>
            <th>表面处理</th>
        </tr>
        <c:forEach items="${productList}" var="product">
            <tr>
                <td>${product.id}</td>
                <td><a href="/product/productDetail?id=${product.id}">${product.name}</a></td>
                <td>${product.diameter}</td>
                <td>${product.surface}</td>
            </tr>
        </c:forEach>
    </table>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="/js/jquery-1.11.0.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="/js/bootstrap.min.js"></script>
</body>
</html>
