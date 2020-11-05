<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>产品管理</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <style>
        #update {
            background-color: #5bc0de;
            position: fixed;
            width: 960px;
            height: 640px;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto;
        }
        #insert {
            background-color: #5bc0de;
            position: fixed;
            width: 960px;
            height: 640px;
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
    <caption><button style="float: right" type="button" onclick="insert_open()">添加产品</button></caption>
    <tr>
        <th>产品标号</th>
        <th>产品名称</th>
        <th>产品半径</th>
        <th>表面处理</th>
        <th>修改</th>
        <th>删除</th>
    </tr>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td>${product.id}</td>
            <td><a href="/product/productDetail?id=${product.id}">${product.name}</a></td>
            <td>${product.diameter}</td>
            <td>${product.surface}</td>
            <td><a class="button" id="btn_update" onclick="getMessage(${product.id})">修改</a></td>
            <td><a class="button" onclick="deleteProduct(${product.id})">删除</a></td>
        </tr>
    </c:forEach>
</table>
<div id="update" class="white_content" hidden="hidden">
    <form id="fm_update">
        <table class="table table-bordered">
            <input type="hidden" name="typeId" id="p_typeId">
            <tr>
                <td>产品编号</td><td><input readonly="readonly" type="text" name="id" id="p_id"></td><td>产品类型</td><td><input readonly="readonly" name="typeName" type="text" id="p_type"></td>
            </tr>
            <tr>
                <td>产品名称</td><td><input name="name" type="text" id="p_name"></td><td>表面处理</td><td><input name="surface" type="text" id="p_surface"></td>
            </tr>
            <tr>
                <td>产品标准</td><td><input name="standard" type="text" id="p_standard"></td><td>产品半径</td><td><input name="diameter" type="text" id="p_diameter"></td>
            </tr>
            <tr>
                <td>产品图片</td>
                <td><input name="image" type="file" id="p_image"></td>
            </tr>
            <tr>
                <td colspan="4"><img src="${detail.image}" id="p_image0"></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><button type="button" onclick="update_submit()">修改</button></td><td align="center" colspan="2"><button type="button" onclick="hid()">取消</button> </td>
            </tr>
        </table>
    </form>
</div>
<div id="insert" hidden="hidden">
    <form id="fm_insert" enctype="multipart/form-data">
        <table class="table table-bordered">
            <tr>
                <td>产品类型</td><td><select name="typeId" id="typeId"></select></td>
            </tr>
            <tr>
                <td>产品名称</td><td><input type="text" name="name"></td><td>表面处理</td><td><input type="text" name="surface"></td>
            </tr>
            <tr>
                <td>产品标准</td><td><input type="text" name="standard"></td><td>产品半径</td><td><input type="text" name="diameter"></td>
            </tr>
            <tr>
                <td>产品图片</td>
                <td><input id="image" type="file" name="image"></td>
            </tr>
            <tr>
                <td><button onclick="insert_submit()">添加</button>
                <%--<input type="submit" value="添加">--%></td>
                <td><button onclick="hid()">取消</button></td>
            </tr>
        </table>
    </form>
</div>
<script>
    function hid() {
        document.getElementById("update").hidden = "hidden";
        document.getElementById("insert").hidden = "hidden";
    }
    function getMessage(id) {
        var update_div = document.getElementById("update");
        update_div.hidden = false;
        $.ajax({
            url: "/product/detail",
            type: "POST",
            data: "id="+id,
            success: function(data) {
                var split = data.split(",");
                var id = split[0].split("=")[1];
                var typeId = split[1].split("=")[1];
                var name = split[2].split("=")[1];
                var surface = split[3].split("=")[1];
                var standard = split[4].split("=")[1];
                var diameter = split[5].split("=")[1];
                var image = split[6].split("=")[1];
                var typeName = split[7].split("=")[1];
                document.getElementById("p_id").value = id;
                document.getElementById("p_type").value = typeName;
                document.getElementById("p_name").value = name;
                document.getElementById("p_surface").value = surface;
                document.getElementById("p_standard").value = standard;
                document.getElementById("p_diameter").value = diameter;
                if (image == "null" || image =="" || image == null) {

                } else {
                    document.getElementById("p_image0").src = image;
                }
                document.getElementById("p_typeId").value=typeId;
            }
        })
    }
    function update_submit() {
        $.ajax({
            type: "POST",
            url: "/product/update",
            cache: false,
            data: $("#fm_update").serialize(),
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
    function insert_open() {
        var insert_div = document.getElementById("insert");
        insert_div.hidden=false;
        $.ajax({
            url: "/type/all",
            data: "",
            type: "POST",
            success: function(data) {
                var select = document.getElementById("typeId");
                var split = data.split(",");
                for (var i = 0;i < split.length;i++) {
                    var type = split[i].split("=");
                    select.options.add(new Option(type[1],type[0]));
                }
            }
        })
    }
    function insert_submit() {
        $("#fm_insert").ajaxSubmit({
            type: 'post',
            url: '/product/insert',
            contentType: "application/x-www-form-urlencoded; charset=utf-8",
            success: function(data) {
                if ("0" != data) {
                    alert("添加成功！");
                    window.location.reload();
                }else {
                    alert("添加失败，请稍后再试！");
                    window.location.reload();
                }
            }
        })
    }
    function deleteProduct(id) {
        var flag = confirm("您确定要删除吗？");
        if (flag) {
            $.ajax({
                url: "/product/delete",
                data: "id="+id,
                type: 'POST',
                success: function(data) {
                    if ("0" != data) {
                        alert("删除成功！");
                        window.location.reload();
                    } else {
                        alert("删除失败，请稍后再试！");
                        window.location.reload();
                    }
                }
            })
        }else {
            alert("您取消了删除！");
        }
    }
</script>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="/js/jquery-2.1.1.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.form.js"></script>
</body>
</html>
