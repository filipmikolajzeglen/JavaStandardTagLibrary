<%--
  Created by IntelliJ IDEA.
  User: Filip Żegleń
  Date: 07.08.2020
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="${param.name }" /></title>
</head>
<body>
<!-- Condition -->
<c:if test="${not empty param.name }">
  <!-- Set an attribute based on a parameter -->
  <c:set var="name" value="${param.name }" scope="page" />

  <!-- Display an attribute -->
  <h1>Welcome <c:out value="${pageScope.name }" /></h1>

  <!-- Delete an attribute -->
  <c:remove var="name"/>
</c:if>

<h2>This is what we know about you:</h2>
<h3>Cookies:</h3>
<c:forEach var="cookieItem" items="${cookie }">
  <c:out value="${cookieItem.key }" /> : <c:out value="${cookieItem.value }"></c:out>
  <br>
</c:forEach>

<h3>Information from header:</h3>
<c:forEach var="headerItem" items="${header }">
  <c:out value="${headerItem.key }" /> : <c:out value="${headerItem.value }" />
  <br>
</c:forEach>

<c:if test="${not empty param.name}" >
  <c:choose>
    <c:when test="${param.name eq 'Jan' }">
      Secret information to John
    </c:when>
    <c:when test="${param.name eq 'Bartosz' }">
      Secret information to Filip
    </c:when>
    <c:otherwise>
      No secret information
    </c:otherwise>
  </c:choose>
</c:if>

</body>
</html>