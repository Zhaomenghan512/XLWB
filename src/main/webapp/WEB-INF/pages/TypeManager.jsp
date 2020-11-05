<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>类型管理</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <style>
        #update {
            background-color: #5bc0de;
            position: fixed;
            width: 500px;
            height: 300px;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }
        #insert {
            background-color: #5bc0de;
            position: fixed;
            width: 500px;
            height: 300px;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }
        #fm1 {
            width: 320px;
            height: 100px;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }
        #fm2 {
            width: 320px;
            height: 100px;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }
    </style>
</head>
<body>
<table class="table table-hover">
    <caption><button style="float: right" type="button" onclick="insert()">添加类型</button></caption>
    <tr>
        <th>类型编号</th>
        <th>类型名称</th>
        <th>修改类型</th>
        <th>删除类型</th>
    </tr>
    <c:forEach items="${typeList}" var="type">
        <tr>
            <td>${type.typeId}</td>
            <td>${type.typeName}</td>
            <td><a href="#" onclick="update(${type.typeId})" class="bottom" >修改</a> </td>
            <td><a onclick="deleteType(${type.typeId})" class="bottom">删除</a> </td>
        </tr>
    </c:forEach>
</table>
<div id="insert" hidden="hidden" align="center">
    <form action="/type/insert" method="post" id="fm2">
        <table>
            <tr>
                <td>类型名称：</td>
                <td><input id="insertName" type="text" name="typeName"></td>
            </tr>
            <tr>
                <td><button onclick="add()" id="btn_insert" type="button">添加</button></td>
                <td><button onclick="hid()" type="button" value="取消">取消</button></td>
            </tr>
        </table>
    </form>
</div>
<div id="update" hidden="hidden" align="center">
    <form id="fm1" action="/type/update" method="post">
        <table>
            <tr>
                <td>类型编号：</td>
                <td><input readonly="readonly" type="text" name="typeId" id="t_id" value="${typeId}"></td>
            </tr>
            <tr>
                <td>类型名称：</td>
                <td><input type="text" name="typeName" id="t_name" value="${typeName}"></td>
            </tr>
            <tr align="center">
                <td><button onclick="update_submit()" type="button">修改</button></td>
                <td><button onclick="hid()" type="button" value="取消">取消</button></td>
            </tr>
        </table>
    </form>
</div>
<script>
    function update(id) {
        var div1 = document.getElementById("update");
        var t_id = document.getElementById("t_id");
        var t_name = document.getElementById("t_name");
        $.ajax({
            url: "/type/detail",
            type: "POST",
            data: "typeId="+id,
            success: function(data) {
                var arr = data.split(",");
                var id = arr[0];
                var name = arr[1];
                t_id.value = id.split("=")[1];
                t_name.value = name.split("=")[1];
            },
        });
        div1.hidden = false;
    }
    function update_submit() {
        $.ajax({
            type: "POST",
            url: "/type/update",
            cache: false,
            data: $("#fm1").serialize(),
            dataType: 'json',
            success: function(data) {
                if ("0" != data) {
                    alert("修改成功！");
                    window.location.reload();
                } else {
                    alert("修改失败，请稍后重试！");
                    window.location.reload();
                }
            }
        })
    }
    function hid() {
        var div1 = document.getElementById("update");
        var div2 = document.getElementById("insert");
        div2.hidden = "hidden";
        div1.hidden = "hidden";
    }
    function deleteType(id) {
        var flag = confirm("是否确定删除？");
        if (flag) {
            $.ajax({
                url: "/type/delete",
                type: "POST",
                data: "typeId="+id,
                success: function(data) {
                    if ("0" != data) {
                        alert("删除成功！");
                        window.location.reload();
                    } else {
                        alert("删除失败，请重试！");
                        window.location.reload();
                    }
                },
            });
        } else {

        }
    }
    function insert() {
        var div2 = document.getElementById("insert");
        div2.hidden = false;
    }
    function add() {
        var targetUrl = $("#fm2").attr("action");
        $.ajax({
            type: "POST",
            url: targetUrl,
            cache: false,
            data: $("#fm2").serialize(),
            dataType: 'json',
            success: function(data) {
                if ("0" != data) {
                    alert("添加成功！");
                    window.location.reload();
                } else {
                    alert("添加失败，请稍后重试！");
                    window.location.reload();
                }
            }
        })
    }
</script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="/js/jquery-1.11.0.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="/js/bootstrap.min.js"></script>
</body>
</html>
