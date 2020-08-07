<%--
  Created by IntelliJ IDEA.
  User: Filip Żegleń
  Date: 07.08.2020
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Functions JSTL</title>
</head>
<body>
<c:if test="${not empty param.name }">
    <c:out value="${fn:toUpperCase(param.name) }" />
</c:if>
<h3>In header are <c:out value="${fn:length(header) }"/> elements:</h3>
<c:forEach var="headerItem" items="${header }">
    <c:out value="${fn:toUpperCase(headerItem.key) }" /> : <c:out value="${fn:toLowerCase(headerItem.value) }" />
    <br>
</c:forEach>

<br>
<c:set var="strings" value="${fn:split('Ala has a cat change to tab', ' ') }"/>
<c:set var="joined" value="${fn:join(strings, '--') }"/>
<c:out value="${joined }" />
<br>
<c:if test="${fn:startsWith(joined, 'Ala') }">
    Hura!
</c:if>
<c:out value="${fn:replace(joined, 'Ala', 'Karol') }" />
</body>
</html>