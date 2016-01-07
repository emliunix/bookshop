<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 1/7/16
  Time: 7:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <jsp:include page="/WEB-INF/fragments/inc_bootstrap_pre.jsp" />
    <style type="text/css">
        body {
            padding-top: 100px;
        }
    </style>
</head>
<body class="container">
<div class="row">
    <form class="col-xs-4 col-xs-offset-4" action="<c:url value="/pages/sys/login"/>" method="post">
        <div class="control-group">
            <label>用户名</label>
            <input class="form-control" type="text" name="username" />
        </div>
        <div class="control-group">
            <label>密码</label>
            <input class="form-control" type="password" name="password" />
        </div>
        <div>
            <a href="/pages/register">注册账号</a>
            <span class="pull-right btn-group">
                <button class="btn btn-default" type="submit">登录</button>
                <button class="btn btn-danger" type="reset">重置</button>
            </span>
        </div>
    </form>
</div>
<jsp:include page="/WEB-INF/fragments/inc_bootstrap_post.jsp" />
</body>
</html>
