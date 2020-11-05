<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/css/home.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="/js/jquery-1.11.0.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>
<c:if test="${empty admin}">
    <jsp:forward page="/login"/>
</c:if>
<!--顶部导航栏部分-->
<nav class="navbar navbar2">
    <div class="container-fluid">
        <!-- logo设置 -->
        <div class="navbar-header">
            <a class="logo" title="logoTitle" href="/index">星龙微标</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li role="presentation">
                    <a href="#">当前用户：<span class="badge">${admin.username}</span></a>
                </li>
                <li>
                    <a href="/admin/quit"><span class="glyphicon glyphicon-lock"></span>退出登录</a>
                </li>
            </ul>
        </div>

    </div>   <!-- .container-fluid -->
</nav>

<!-- 中间主体内容部分 -->
<div class="pageContainer">
    <!-- 左侧导航栏 -->
    <div class="pageSidebar">
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            <!-- 管理员信息管理 -->
            <div class="panel2">
                <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <a role="button" href="/error" target="mainFrame">
                            <span class="glyphicon glyphicon-user"></span>
                            用户管理
                        </a>
                    </h4>
                </div>
            </div>
            <!-- 产品管理 -->
            <div class="panel2">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <a role="button" href="/product/manager" target="mainFrame">
                            <span class="glyphicon glyphicon-gift"></span>
                            产品管理
                        </a>
                    </h4>
                </div>
            </div>
            <!-- 类型管理 -->
            <div class="panel2">
                <div class="panel-heading" role="tab">
                    <h4 class="panel-title">
                        <a role="button" href="/type/manager" target="mainFrame">
                            <span class="glyphicon glyphicon-duplicate"></span>
                            类型管理
                        </a>
                    </h4>
                </div>
            </div>
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