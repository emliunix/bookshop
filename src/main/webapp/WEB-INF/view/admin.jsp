<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 1/6/16
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <jsp:include page="/WEB-INF/fragments/inc_bootstrap_pre.jsp" />
    <style type="text/css">
        .l-header {
            text-transform: capitalize;
            margin-top: 30px;
            margin-left: 20px;
            margin-bottom: 70px;
        }
    </style>
</head>
<body>
<div class="container">
    <jsp:include page="/WEB-INF/fragments/admin_header.jsp" />
    <div class="well ">
        <h1 class="l-header">admin home page</h1>
    </div>
</div>
<jsp:include page="/WEB-INF/fragments/inc_bootstrap_post.jsp" />
</body>
</html>
