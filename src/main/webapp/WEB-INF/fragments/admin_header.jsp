<%@ page import="org.j2ee.bookshop.domain.User" %>
<%@ page import="org.j2ee.bookshop.controller.LogInOutController" %><%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 1/6/16
  Time: 11:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<s:url value="/"/>">Book Shop</a>
        </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<s:url value="/pages/book/list" />">图书管理</a></li>
                <li><a href="<s:url value="/pages/category/list" />">类别管理</a></li>
                <li><a href="<s:url value="/pages/order/list" />">订单管理</a></li>
                <li><a href="<s:url value="/pages/user/list" />">用户管理</a></li>
                <%
                    HttpSession sess = request.getSession(false);
                    User user = null;
                    if(null != sess)
                        user = (User)sess.getAttribute(LogInOutController.USER_ATTRIBUTE);
                    request.setAttribute("user", user);
                %>
                <c:choose>
                    <c:when test="${null != user}">
                        <li><a href="<s:url value="/pages/sys/logout"/>">${user.username} 退出</a> </li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="<s:url value="/pages/login"/>">登录</a> </li>
                    </c:otherwise>
                </c:choose>
            </ul>
    </div><!--/.container-fluid -->
</nav>