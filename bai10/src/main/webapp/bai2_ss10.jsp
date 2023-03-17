<%--
  Created by IntelliJ IDEA.
  User: KIM HIEU
  Date: 3/15/2023
  Time: 8:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>

</head>
<body>
<h2>Calculator</h2>
<form action="bai10Servlet" method="post">
    <input type="text" name="num1"><br>
    <input type="text" name="num2"><br>
    <select name = "operator">
        <option>Cộng</option>
        <option>Trừ</option>
        <option>Nhân</option>
        <option>Chia</option>
    </select>
    <button type="submit" >Thực Hiện</button>
</form>
</body>
</html>
