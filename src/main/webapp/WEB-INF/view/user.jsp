<%--
  Created by IntelliJ IDEA.
  User: Liu Yuhui
  Date: 2016/1/6
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action=""
<c:forEach var="item" items="${users}">
  <c:out value="${item.name}" default="missing" />
  <c:out value="${item.password}" default="nopassword" />
</c:forEach>
</body>
</html>
