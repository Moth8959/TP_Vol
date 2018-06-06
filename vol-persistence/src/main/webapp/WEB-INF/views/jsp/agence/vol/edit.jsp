<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>

<!-- Include Bootstrap Datepicker -->
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

<title>Edition de vol</title>
</head>
<body>

	<div class="container">
		<fieldset>
			<legend>Edition de vol</legend>
			<form:form modelAttribute="vol" action="save" method="post">
				<form:hidden class="form-control" path="id" />
				<form:hidden class="form-control" path="version" />
				<div class="form-group">
					<form:label path="id">id:</form:label>
					<form:input type="text" class="form-control" path="id" />
					<%-- 				<form:errors path="nom" /> --%>
				</div>

<!-- 				<div class="form-group"> -->
<%-- 					<form:label path="dateDepart" class=" control-label">date de départ :</form:label> --%>
<!-- 					<div class="input-group input-append date" id="datePicker"> -->
<%-- 						<form:input type="text" class="form-control" path="dateArrivee" --%>
<%--  							name="date" />  --%>
<!-- 						<span class="input-group-addon add-on"><span -->
<!--  							class="glyphicon glyphicon-calendar"></span></span>  -->
<!-- 					</div>  -->
<!-- 			</div>  -->

				<div class="form-group">
					<form:label path="dateDepart">Date de départ :</form:label>
					<form:input type="date" class="form-control" path="dateDepart" />
					<%-- 				<form:errors path="nom" /> --%>
				</div>

				<div class="form-group">
					<form:label path="dateArrivee">Date d'arrivée :</form:label>
					<form:input type="date" class="form-control" path="dateArrivee" />
					<%-- 				<form:errors path="nom" /> --%>
				</div>

				<div class="form-group">
					<form:label path="heureDepart">Heure de départ :</form:label>
					<form:input type="time" class="form-control" path="heureDepart" />
					<%-- 				<form:errors path="nom" /> --%>
				</div>
				<div class="form-group">
					<form:label path="heureArrivee">Heure d'arrivée :</form:label>
					<form:input type="time" class="form-control" path="heureArrivee" />
					<%-- 				<form:errors path="nom" /> --%>
				</div>






				<div class="form-group">
					<div class="col-xs-5 col-xs-offset-3">
						<button type="submit" class="btn btn-default">Valider</button>
					</div>
				</div>

				<script>
					$(document)
							.ready(
									function() {
										$('#datePicker')
												.datepicker({
													format : 'mm/dd/yyyy'
												})
												.on(
														'changeDate',
														function(e) {
															// Revalidate the date field
															$('#eventForm')
																	.formValidation(
																			'revalidateField',
																			'date');
														});

										$('#eventForm')
												.formValidation(
														{
															framework : 'bootstrap',
															icon : {
																valid : 'glyphicon glyphicon-ok',
																invalid : 'glyphicon glyphicon-remove',
																validating : 'glyphicon glyphicon-refresh'
															},
															fields : {
																name : {
																	validators : {
																		notEmpty : {
																			message : 'The name is required'
																		}
																	}
																},
																date : {
																	validators : {
																		notEmpty : {
																			message : 'The date is required'
																		},
																		date : {
																			format : 'MM/DD/YYYY',
																			message : 'The date is not a valid'
																		}
																	}
																}
															}
														});
									});
				</script>



				<button type="submit" class="btn btn-primary">
					<span class="glyphicon glyphicon-ok"></span>
				</button>
				<a href="<c:url value="/agence/vol/cancel"/>" class="btn btn-warning"><span
					class="glyphicon glyphicon-remove"></span></a>
			</form:form>
		</fieldset>
	</div>
</body>
</html>