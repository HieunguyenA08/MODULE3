<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: KIM HIEU
  Date: 4/14/2023
  Time: 6:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spices</title>
</head>
<body>

  <h1>Sandwich Condiments</h1>
  <form method="post" action="">
    <label><input type="checkbox" name="condiments" value="Lettuce"> Lettuce</label><br>
    <label><input type="checkbox" name="condiments" value="Tomato"> Tomato</label><br>
    <label><input type="checkbox" name="condiments" value="Mustard"> Mustard</label><br>
    <label><input type="checkbox" name="condiments" value="Sprouts"> Sprouts</label><br><br>
    <input type="submit" value="Save">
  </form>
<h2>Các thành phần đã chọn </h2>
<c:forEach items="${s}" var="s">
      <c:out value="${s}"/>
  </c:forEach>
</body>
</html>
