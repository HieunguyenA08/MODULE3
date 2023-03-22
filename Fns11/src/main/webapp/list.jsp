<%--
  Created by IntelliJ IDEA.
  User: KIM HIEU
  Date: 3/22/2023
  Time: 7:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Product list</title>
</head>
<body>
<h1>Product list</h1>
<a href="/ProductServlet?action=create">Create new Student</a>
<table>
    <tr>
        <th>ID</th>
        <th>Ten</th>
        <th>Price</th>
        <th>Status</th>
        <th>Detail</th>
        <th>Update</th>
    </tr>
    <c:forEach items="${products}" var="s">
        <tr>
            <td>${s.id}</td>
            <td>${s.name}</td>
            <td>${s.price}</td>
            <td>${s.status}</td>
            <td><a href="/ProductServlet?action=delete&id=${s.id}">Delete</a></td>
            <td><a href="/ProductServlet?action=update&id=${s.id}">Update</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
