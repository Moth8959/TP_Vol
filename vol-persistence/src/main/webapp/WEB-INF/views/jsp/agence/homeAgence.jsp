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
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<title><spring:message code="home.title" /></title>
</head>
<body>

	<div class="container entete" style="background-image:url(<c:url value="/images/airplane2.jpg"></c:url>);background-size: cover;background-repeat:no-repeat;background-position:top left;">
<%-- 	<img src='<c:url value="/images/airplane2.jpg"></c:url>' width=100% />    --%>
		<h1 class="white">
			<spring:message code="home.welcomeMessage" />
		</h1>
	</div>
	<div class="container">
		<p>
			<spring:message code="home.welcomeText" />
		</p>
	</div>

	<div class="container">
		<div class="col-md-10"></div>
		<div class="col-md-1">
			<FORM>
				<SELECT name="langue" size="1">
					<OPTION>French
					<OPTION>English
				</SELECT>
			</FORM>
		</div>
		<div class="col-md-1">
		</div>

	</div>


	<br />
	<div class="container">
		<div class="row">
			<a href="<c:url value="/agence/aeroport/" />"
				class="btn btn-primary lg btn-block"><spring:message
					code="home.menuAeroport" /></a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/compagnieAerienne/" />"
				class="btn btn-primary lg btn-block"><spring:message
					code="home.menuCompAerienne" /></a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/reservation/" />"
				class="btn btn-primary lg btn-block"><spring:message
					code="home.menuReservation" /></a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/ville/" />"
				class="btn btn-primary lg btn-block"><spring:message
					code="home.menuVille" /></a>
		</div>
		<br />
		<div class="row">
			<a href="<c:url value="/agence/vol/" />"
				class="btn btn-primary lg btn-block"><spring:message
					code="home.menuVol" /></a>
		</div>
	</div>

</body>
</html>