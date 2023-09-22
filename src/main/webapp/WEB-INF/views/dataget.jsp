<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-19
  Time: 오후 2:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Titledata</title>
</head>
<body>
<h1>datapage</h1>
<c:forEach var="userList" items="${userList}">
        <div>${userList.name}</div>
        <div>${userList.password}</div>
        <div>${userList.userId}</div>
</c:forEach>
<div>

</div>

</body>
</html>
