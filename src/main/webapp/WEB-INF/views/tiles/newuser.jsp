<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="form-container">

    <legend class="col-lg-offset-3 col-lg-9">Добавление нового пользователя</legend>

    <form:form method="POST" modelAttribute="user" class="form-horizontal"
               action="${pageContext.request.contextPath}/createaccount">
        <form:errors path="*" cssClass="alert alert-danger col-lg-offset-3 col-lg-9" element="div"/>
        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-label" for="firstName">
                    Имя

                </label>
                <div class="col-md-7">
                    <form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="firstName" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-label" for="lastName">
                   Фамилия
                </label>
                <div class="col-md-7">
                    <form:input type="text" path="lastName" id="lastName" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="lastName" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-label" for="ssoId">
                    Логин
                </label>
                <div class="col-md-7">
                    <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="ssoId" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-label" for="password">
                    Пароль
                </label>
                <div class="col-md-7">
                    <form:input type="password" path="password" id="password" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="password" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group col-md-12">
                <label class="col-md-3 control-label" for="email">
                    Электронная почта
                </label>
                <div class="col-md-7">
                    <form:input type="text" path="email" id="email" class="form-control input-sm"/>
                    <div class="has-error">
                        <form:errors path="email" class="help-inline"/>
                    </div>
                </div>
            </div>
        </div>

        <sec:authorize access="hasRole('ADMIN')">
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-label" for="userProfiles">
                        Права пользователя
                    </label>
                    <div class="col-md-7">
                        <form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id"
                                     itemLabel="type"
                                     class="form-control input-sm"/>
                        <div class="has-error">
                            <form:errors path="userProfiles" class="help-inline"/>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-lg-offset-3 col-lg-9">
                    <input type="submit" value="Register" class="btn btn-primary btn-sm"> or <a
                        href="<c:url value='/admin' />">Cancel</a>
                </div>
            </div>
        </sec:authorize>

        <sec:authorize access="!isAuthenticated()">
            <div class="row">
                <div class="col-lg-offset-3 col-lg-9"><input type="submit" value="Register"
                                                      class="btn btn-primary btn-sm" tabindex="7">
                    <a href="<c:url value='/login' />"
                       class="btn btn-success btn-sm">Sign In</a></div>
            </div>
        </sec:authorize>
    </form:form>
</div>