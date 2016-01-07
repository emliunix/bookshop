<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 1/7/16
  Time: 10:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书修改</title>
    <jsp:include page="/WEB-INF/fragments/inc_bootstrap_pre.jsp" />
</head>
<body class="container">
<jsp:include page="/WEB-INF/fragments/admin_header.jsp" />

<div class="row">
    <form class="col-xs-6 col-xs-offset-3 form-horizontal" action="edit-submit" method="post">
        <input type="hidden" name="id" value="${book.id}" />
        <div class="form-group">
            <label>书名</label>
            <input type="text" name="name" placeholder="书名" value="${book.name}"/>
        </div>
        <div class="form-group">
            <label>作者</label>
            <input name="author" placeholder="作者" value="${book.author}"/>
        </div>
        <div class="form-group">
            <label>出版社</label>
            <input name="publisher" placeholder="出版社" value="${book.publisher}"/>
        </div>
        <div class="form-group">
            <label>描述</label>
        <textarea name="description" placeholder="图书描述">${book.description}</textarea>
        </div>
        <button type="submit">修改</button>
    </form>
</div>

<jsp:include page="/WEB-INF/fragments/inc_bootstrap_post.jsp" />
</body>
</html>
