<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: liuwenjiang
  Date: 2020/10/28
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<% String path3 = request.getContextPath();%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有商品信息</title>
    <style>
        table,  th tr
        {border: 1px solid gray;}
        td{border: 1px solid gray;}
        th{border: 1px solid gray;}
    </style>
</head>

<body>
    <table>
        <thead></thead>
        <tbody>
        <form method="get" id="form" action="<%=path3%>/displayServlet">
            <tr>
                <td><label>展示信息</label></td>
            </tr>
            <br>
            <tr>
            <td><input type="submit" id="dis_sub" name="dis_sub"  value="展示"></td>
            </tr>
        </tbody>
        </form>
    </table>
<br>
    <table>
        <thead>

        <tr>
            <th>商品号</th>
            <th>商品名字</th>
            <th>商品价格</th>
            <th>商品数量</th>
            <th>商品售价</th>
            <th>商品进货日期</th>
            <th>商品进货价格</th>
        </tr>
    </thead>
        <tbody>
        <c:forEach items="${ goodsList }" var="goodsList">
        <tr>
            <td>${goodsList.goodsno }</td>
            <td>${goodsList.goodsname }</td>
            <td>${goodsList.goodsprice }</td>
            <td>${goodsList.goodsnumber}</td>
            <td>${goodsList.goodssales}</td>
            <td>${goodsList.purchasedata}</td>
            <td>${goodsList.supplierprice}</td>
            <td colspan="2"><a href="updateServlet?goodsno=${goodsList.goodsno}">编辑</a>
                <button class="btn btn-danger delBtn" data-toggle="modal"
                        data-target=".delModal" value="${goodsList.goodsno }">删除</button></td>
        </tr>
        </tbody>
    </c:forEach>
    </table>
</body>
</html>
    <script>
            document.getElementById("form")
    </script>
