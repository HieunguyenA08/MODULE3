<%--
  Created by IntelliJ IDEA.
  User: KIM HIEU
  Date: 4/7/2023
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Nguyễn Kim Hiếu</title>
</head>
<body>
<form method="post">
  <div class="form-floating mb-3">
    <input type="text" class="form-control" id="floatingInput" name="usd" placeholder="0.0">
    <label for="floatingInput">USD</label>
  </div>
  <button type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#result">Exchange</button>
</form>
<h3>VND = <span>${vnd}</span> </h3>

</body>
</html>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <title>Đổi tiền tệ</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Đổi tiền tệ</h1>--%>
<%--<select id="currency">--%>
<%--  <option value="vnd-usd">Vietnam dong (VND) -> US Dollar (USD)</option>--%>
<%--  <option value="usd-vnd">US Dollar (USD) -> Vietnam dong (VND)</option>--%>
<%--</select>--%>
<%--<input type="number" id="amount" placeholder="Số tiền">--%>
<%--<button onclick="convert()">Chuyển đổi</button>--%>
<%--<div id="result"></div>--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>--%>
<%--<script src="script.js"></script>--%>
<%--</body>--%>
<%--</html>--%>