<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<sec:authorize access="hasRole('ADMIN')">

    <div class="list-group">
        <a href="/admin" class="list-group-item "><i class="glyphicon glyphicon-th-list"></i> Меню</a>
        <br>
        <a href="<c:url value='/newUser'/>" class="list-group-item"><i class="glyphicon glyphicon-plus"></i> Добавить пользователя</a>
        <a href="<c:url value='/products/add'/>" class="list-group-item"><i class="glyphicon glyphicon-plus"></i> Добавить товар</a>
        <a href="<c:url value='/admin/users'/>" class="list-group-item"><i class="glyphicon glyphicon-user"></i> Список пользователей</a>
        <a href="<c:url value='/myOrders'/>" class="list-group-item"><i class="glyphicon glyphicon-barcode"></i> Список заказов</a>
    </div>


</sec:authorize>
<br>
<div class="list-group">
    <a href="/products" class="list-group-item "><i class="glyphicon glyphicon-th-list"></i> Меню</a>
    <br>
    <a href="<c:url value='/products?category=t-shirts'/>" class="list-group-item">Футболки</a>
    <a href="<c:url value='/products?category=costumes'/>" class="list-group-item">Костюмы</a>
    <a href="<c:url value='/products?category=hats'/>" class="list-group-item">Головные уборы</a>
    <a href="<c:url value='/products?category=other'/>" class="list-group-item">Прочее</a>
</div>

