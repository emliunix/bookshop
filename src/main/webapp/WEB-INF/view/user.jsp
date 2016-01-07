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
    <title>用户管理</title>
    <jsp:include page="/WEB-INF/fragments/inc_bootstrap_pre.jsp" />
</head>
<body class="container">
<jsp:include page="/WEB-INF/fragments/admin_header.jsp" />
<!-- div class="row">
<form class="form-horizontal" action="<s:url value="/pages/user/add" />" method="post">
    <div class="form-group">
        <label>用户名</label>
        <input type="text" name="username" placeholder="username" />
    </div>
    <div class="form-group">
        <label>密码</label>
        <input type="password" name="password" placeholder="password" />
    </div>
    <div class="form-group">
        <label>确认密码</label>
        <input type="password" name="c_password" placeholder="confirm password" />
    </div>
    <button type="submit">添加</button>
</form>
</div-->
<table class="table">
    <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Operation</th>
    </tr>
    <c:forEach var="item" items="${users}">
        <tr>
            <td><c:out value="${item.username}" default="missing" /></td>
            <td><c:out value="${item.password}" default="nopassword" /></td>
            <!--<td><span class="btn-group">--><a href="delete?id=${item.id}" class="btn btn-danger">删除</a>
            <!--<a href="edit?id=${item.id}" class="btn btn-primary">修改</a></span>
            </td>-->
        </tr>
    </c:forEach>
</table>
<jsp:include page="/WEB-INF/fragments/inc_bootstrap_post.jsp" />
</body>
</html>
