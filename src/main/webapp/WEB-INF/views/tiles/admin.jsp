<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>


<div class="jumbotron">
    Добрый день <strong>${user}</strong>, добро пожаловать на страницу администратора.
    <br/>
    Хотите <a href="<c:url value='/newUser' />">добавить нового пользователя</a>.
    Или <a href="<c:url value='/products/add' />">добавить новый товар</a>
    <br/>
</div>