<%--
  Created by IntelliJ IDEA.
  User: liuwenjiang
  Date: 2020/10/17
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<% String path1 =request.getContextPath();%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>商品添加页面</title>
</head>
<h1>添加商品</h1><br>
  <table>
      <thead></thead>
      <tbody>
      <form method="get" action="addresult.jsp">
          <tr>
          <td><label>添加商品id为：</label></td>
              <td><input type="text" id="good_id" name="goodsno"></td>
          </tr>

          <tr>
              <td><label>添加商品名：</label></td>
              <td><input type="text" id="good_name" name="goodsname"></td>
          </tr>

          <tr>
              <td><label>添加商品价格为：</label></td>
              <td><input type="text" id="good_price" name="goodsprice"></td>
          </tr>

          <tr>
              <td><label>添加商品数量为：</label></td>
              <td><input type="text" id="good_number" name="goodsnumber"></td>
          </tr>

          <tr>
              <td><label>添加商品销量：</label></td>
              <td><input type="text" id="good_sales" name="goodssales"></td>
          </tr>

          <tr>
              <td><label>添加商品进货日期为：</label></td>
              <td><input type="text" id="good_purchasedata" name="purchasedata"></td>
          </tr>

          <tr>
              <td><label>添加商品进价为：</label></td>
              <td><input type="text" id="good_supplierprices" name="supplierprice"></td>
          </tr>
          <br>
          <tr align="center">
              <td></td>
              <td><input type="submit" id="add_submit" name="add_submit" onclick="addVerify()" value="确认提交"></td>
          </tr>
      </form>
      </tbody>
      <tfoot></tfoot>
  </table>
${error1}
</body>
</html>
<script>
    function addVerify() {
        var good_id =document.getElementById("goodsno").value;
        var good_name =document.getElementById("goodsname").value;
        var good_price =document.getElementById("goodsprice").value;
        var good_number =document.getElementById("goodsnumber").value;
        var good_sales =document.getElementById("goodssales").value;
        var good_purchasedata =document.getElementById("purchasedata").value;
        var good_supplier =document.getElementById("supplierprice").value;
        if(good_id == '') {
            alert('商品号不能为空！');
            return;
        }
        if(good_name == '') {
            alert('商品名不能为空！');
            return;}
        if(good_price == '') {
            alert('商品价格不能为空！');
            return;}
        if(good_number ==''){
            alert('库存不能为空！');
            return;
        }
        if(good_sales == '') {
            alert('商品销量不能为空！');
            return;}
        if(good_purchasedata == '') {
            alert('进货日期不能为空！');
            return;}
        if(good_supplier == '') {
            alert('商品进价不能为空！');
            return;}
        //调用后台servlet

        document.getElementById("form").submit();
    }
</script>