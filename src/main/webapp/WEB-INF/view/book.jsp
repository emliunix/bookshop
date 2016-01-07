<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 1/7/16
  Time: 8:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理</title>
    <jsp:include page="/WEB-INF/fragments/inc_bootstrap_pre.jsp" />
</head>
<body class="container">
<jsp:include page="/WEB-INF/fragments/admin_header.jsp" />
<div class="row">
<form class="form-horizontal" action="<s:url value="/pages/book/add" />" method="post">
    <div class="form-group">
        <label>书名</label>
        <input type="text" name="name" placeholder="书名" />
    </div>
    <div class="form-group">
        <label>作者</label>
        <input name="author" placeholder="作者" />
    </div>
    <div class="form-group">
        <label>出版社</label>
        <input name="publisher" placeholder="出版社" />
    </div>
    <div class="form-group">
        <label>描述</label>
        <textarea name="description" placeholder="图书描述"></textarea>
    </div>
    <button type="submit">添加</button>
</form>
</div>
<table class="table">
    <tr>
        <th>书名</th>
        <th>作者</th>
        <th>出版社</th>
        <th>操作</th>
    </tr>
    <c:forEach var="item" items="${books}">
        <tr>
            <td><c:out value="${item.name}" default="missing" /></td>
            <td><c:out value="${item.author}" default="missing" /></td>
            <td><c:out value="${item.publisher}" default="missing" /></td>
            <td><span class="btn-group"><a href="delete?id=${item.id}" class="btn btn-danger">删除</a>
            <a href="edit?id=${item.id}" class="btn btn-primary">修改</a></span>
            </td>
        </tr>
    </c:forEach>
</table>
<jsp:include page="/WEB-INF/fragments/inc_bootstrap_post.jsp" />
</body>
</html>
