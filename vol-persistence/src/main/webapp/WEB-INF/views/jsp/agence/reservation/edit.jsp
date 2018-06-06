<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<body>
	<div class="container">
		<fieldset>
			<legend>
				formulaire
			</legend>
			<form:form modelAttribute="reservation" action="save" method="post">
				<form:hidden class="form-control" path="id" />
				<form:hidden class="form-control" path="version" />
				
				
				<div class="form-group">
				
					<form:label path="date">
						date :</form:label>
					<form:input type="date" class="form-control" path="date" />
				</div>
				
				
				
				<div class="form-group">
					<form:label path="numero">
						numéro :</form:label>
					<form:input type="number" class="form-control" path="numero" />
				</div>
				<button type="submit" class="btn btn-primary">
					<span class="glyphicon glyphicon-ok"></span>
				</button>
				<a href="<c:url value="/agence/reservation/cancel"/>"
					class="btn btn-warning"><span
					class="glyphicon glyphicon-remove"></span></a>
			</form:form>
		</fieldset>
	</div>
</body>
</html>