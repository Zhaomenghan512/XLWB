<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/css/home.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!--顶部导航栏部分-->
<nav class="navbar navbar2">
    <div class="container-fluid">
        <!-- logo设置 -->
        <div class="navbar-header">
            <a class="logo" title="logoTitle" href="/index">产品列表</a>
        </div>
    </div>   <!-- .container-fluid -->
</nav>

<!-- 中间主体内容部分 -->
<div class="pageContainer">
    <!-- 左侧导航栏 -->
    <div class="pageSidebar">
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            <c:forEach items="${lists}" var="type">
                <div class="panel2">
                    <div class="panel-heading" role="tab">
                        <h4 class="panel-title">
                            <a role="button" href="/product/selectByType?typeId=${type.typeId}" target="mainFrame">
                                <span class="glyphicon glyphicon-duplicate"></span>
                                    ${type.typeName}
                            </a>
                        </h4>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <!-- 左侧导航和正文内容的分隔线 -->
    <div class="splitter"></div>

    <!-- 正文内容部分 -->
    <div class="pageContent">
        <iframe src="" id="mainFrame" name="mainFrame"
                frameborder="0" width="100%"  height="100%" frameBorder="0">
        </iframe>
    </div>

</div>		<!-- 主体部分结束 -->

<!-- 底部页脚部分 -->
<div class="footer">
    <p class="text-center">
        2020 © 星龙微标
    </p>
</div>
</body>
</html>