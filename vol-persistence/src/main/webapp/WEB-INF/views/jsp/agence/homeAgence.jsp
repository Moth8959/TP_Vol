<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<title><spring:message code="compagnie.edit.title" /></title>
<title>COUCOUCOUCOU</title>
</head>
<body>

	<h1>BIENVENUE CHEZ NOUS</h1>

	<br />
	<div class="container">
		<div class="row">
			<a href="<c:url value="/agence/aeroport/" />"
				class="btn btn-primary lg btn-block">Aeroport</a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/compagnieAerienne/" />"
				class="btn btn-primary lg btn-block">Compagnie Aerienne</a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/reservation/" />"
				class="btn btn-primary lg btn-block">Reservation</a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/ville/" />"
				class="btn btn-primary lg btn-block">Ville</a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/vol/" />"
				class="btn btn-primary lg btn-block">Vol</a>
		</div>
	</div>
</body>
</html>