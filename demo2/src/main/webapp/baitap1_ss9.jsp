<%--
  Created by IntelliJ IDEA.
  User: KIM HIEU
  Date: 3/13/2023
  Time: 6:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>DiscountServlet</h2>

<form action="/discount" method="post">
  <label>Product Description: </label><br/>
  <input type="text" name="ProductDescription" /><br/>
  <label>List Price: </label><br/>
  <input type="text" name="ListPrice"  /><br/>
  <label>Discount Percent: </label><br/>
  <input type="text" name="DiscountPercent"  /><br/>
  <input type = "submit" id = "submit" value = "Calculate Discount"/>
</form>
</body>
</html>
