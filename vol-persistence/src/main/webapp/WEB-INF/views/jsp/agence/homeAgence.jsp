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
<title><spring:message code="home.title" /></title>
</head>
<body>

	<h1><spring:message code="home.welcomeMessage" /></h1>
	<spring:message code="home.welcomeText" />

	<br />
	<div class="container">
		<div class="row">
			<a href="<c:url value="/agence/aeroport/" />"
				class="btn btn-primary lg btn-block"><spring:message code="home.menuAeroport" /></a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/compagnieAerienne/" />"
				class="btn btn-primary lg btn-block"><spring:message code="home.menuCompAerienne" /></a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/reservation/" />"
				class="btn btn-primary lg btn-block"><spring:message code="home.menuReservation" /></a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/ville/" />"
				class="btn btn-primary lg btn-block"><spring:message code="home.menuVille" /></a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/vol/" />"
				class="btn btn-primary lg btn-block"><spring:message code="home.menuVol" /></a>
		</div>
	</div>
</body>
</html>