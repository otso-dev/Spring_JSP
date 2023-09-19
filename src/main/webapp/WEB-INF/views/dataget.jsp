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
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("이름");
        String age = request.getParameter("나이");
        String phone = request.getParameter("전화번호");
    %>
<div>
    <p>이름 : <%=name%></p>
    <p>나이 : <%=age%></p>
    <p>전화번호 : <%=phone%></p>
    <a href="testpage">이전으로 이동하기</a>
</div>

</body>
</html>
