<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
	<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<title><spring:message code="compagnie.list.title"/></title>
</head>
<body>
 	<div class="container">
		<h2><spring:message code="compagnie.list.table"/></h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th><spring:message code="compagnie.list.id"/></th>
					<th><spring:message code="compagnie.list.nom"/></th>
					<th><spring:message code="compagnie.list.liste"/></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${compagnieAeriennes}" var="compagnieAerienne">
					<c:url var="editUrl" value="/agence/compagnieAerienne/edit">
						<c:param name="id">${compagnieAerienne.id}</c:param>
					</c:url>
					<c:url var="deleteUrl" value="/agence/compagnieAerienne/delete">
						<c:param name="id">${compagnieAerienne.id}</c:param>
					</c:url>
					<c:url var="listeVolUrl" value="/">
						<c:param name="id">${compagnieAerienne.id}</c:param>
					</c:url>
					<tr>
						<td>${compagnieAerienne.id}</td>
						<td>${compagnieAerienne.nom}</td>
						<td><a class="btn btn-primary btn-xs"  href="${listeVolUrl}"><span class="glyphicon glyphicon-plane"></span></a></td>
						<td><a class="btn btn-primary btn-xs" href="${editUrl}"><span class="glyphicon glyphicon-pencil"></span></a><a class="btn btn-danger btn-xs" href="${deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<a class="btn btn-info btn-md" href="<c:url value="/agence/compagnieAerienne/add"/>"> <span
			class="glyphicon glyphicon-plus"></span>
		</a>
	</div>
</body>
</html>