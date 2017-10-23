<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="alert alert-success" role="alert">
    <a href="#" class="alert-link">
        Сообщение : ${success}
        <br>
        Would you like to <a href="<c:url value='/newUser' />">Add More Users</a>?
        <br/>
        Go to <a href="<c:url value='/admin' />">Admin Page</a> OR <a href="<c:url value="/logout" />">Logout</a>
    </a>
</div>