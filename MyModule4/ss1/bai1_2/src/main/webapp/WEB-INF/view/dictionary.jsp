<%--
  Created by IntelliJ IDEA.
  User: KIM HIEU
  Date: 4/12/2023
  Time: 7:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<form method="post">
    <input type="text" name="eng"> <br>
    <p>${vn}</p>
    <button type="submit">Translate</button>
</form>

</body>
</html>
