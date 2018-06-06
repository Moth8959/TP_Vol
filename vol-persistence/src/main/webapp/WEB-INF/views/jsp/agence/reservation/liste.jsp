<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
</head>
<body>
	<div class="container">
		<h2>
			Table des réservations
		</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>id</th>
					<th>date</th>
					<th>numero</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${reservations}" var="reservation">
					<c:url var="editUrl" value="/agence/reservation/edit">
						<c:param name="id">${reservation.id}</c:param>
					</c:url>
					<c:url var="deleteUrl" value="/agence/reservation/delete">
						<c:param name="id">${reservation.id}</c:param>
					</c:url>
					<tr>
						<td>${reservation.id}</td>
						<td>${reservation.date}</td>
						<td>${reservation.numero}</td>
						<td><a class="btn btn-primary btn-xs" href="${editUrl}"><span
								class="glyphicon glyphicon-pencil"></span></a><a
							class="btn btn-danger btn-xs" href="${deleteUrl}"><span
								class="glyphicon glyphicon-trash"></span></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<a class="btn btn-info btn-md" href="<c:url value="/agence/reservation/add"/>">
			<span class="glyphicon glyphicon-plus"></span>
		</a>
	</div>
</body>
</html>