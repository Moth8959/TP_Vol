<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<title><spring:message code="vol.list.title"/></title>
</head>
<body>

	<div class="container">
		<h2><spring:message code="vol.list.table"/></h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th><spring:message code="vol.list.id"/></th>
					<th><spring:message code="vol.list.dateDeparture"/></th>
					<th><spring:message code="vol.list.dateArrival"/></th>
					<th><spring:message code="vol.list.timeDeparture"/></th>
					<th><spring:message code="vol.list.timeArrival"/></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>id_test</td>
					<td>date_tes</td>
					<td>date_test</td>
					<td>heure_test</td>
					<td>heure_test</td>
				</tr>
				<c:forEach items="${vols}" var="vol">
					<c:url var="editUrl" value="/agence/vol/edit">
						<c:param name="id">${vol.id}</c:param>
						<c:url var="deleteUrl" value="/agence/vol/delete">
							<c:param name="id">${vol.id}</c:param>
						</c:url>
					</c:url>
					<tr>
						<td>${vol.id}</td>
						<td>${vol.dateDepart}</td>
						<td>${vol.dateArrivee}</td>
						<td>${vol.heureDepart}</td>
						<td>${vol.heureArrivee}</td>
						<td><a class="btn btn-primary btn-xs" href="${editUrl}"><span
								class="glyphicon glyphicon-pencil"></span></a> 
							<a class="btn btn-danger btn-xs" href="${deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a> 
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a class="btn btn-info btn-md" href="<c:url value="/agence/vol/add"/>">
			<span class="glyphicon glyphicon-plus"></span>
		</a>

	</div>

</body>
</html>