<%@ page import="com.example.modal.Customer" %><%--

  Created by IntelliJ IDEA.
  User: KIM HIEU
  Date: 3/15/2023
  Time: 6:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
<head>
    <title>Detail Customer</title>
    <style>
        img{
            width: 200px;
            height: 200px;
        }
        table{
            width: 100%;
            border: solid 1px;
        }
    </style>
</head>
<body>
<h1>Detail Customer</h1>
<table>
    <tr>
        <td>Name</td>
        <td>Day of Bird</td>
        <td>Address</td>
        <td>Avata</td>
    </tr>
    <c:forEach var="c" items="${customer}" varStatus="no">
        <tr>
            <td>${c.name}</td>
            <td>${c.dob}</td>
            <td>${c.address}</td>
            <td>
                <img src="${c.avarta}">
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
