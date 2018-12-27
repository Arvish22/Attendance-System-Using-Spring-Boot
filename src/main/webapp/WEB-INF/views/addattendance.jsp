<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Registration Form</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
 	<div class="generic-container">
		<%@include file="authheader.jsp" %>

		<div class="well lead">Add Attendance</div>
	 	<form:form method="POST" modelAttribute="attendance" class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="status">Status</label>
					<div class="col-md-7">
						<form:input type="text" path="status" id="status" class="form-control input-sm"/>
						<div class="has-error">
							<form:errors path="status" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="date">Date</label>
					<div class="col-md-7">
						<form:input type="date" path="date" id="date" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="date" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
						<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="userProfiles">Type</label>
					<div class="col-md-7">
						<form:select path="type" name="days" class="form-control input-sm">
						<option value="working">Working</option>
    					<option value="holiday">Holiday</option>
    					</form:select>
						<div class="has-error">
							<form:errors path="type" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-actions floatRight">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/attendanceList' />">Cancel</a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Add" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/attendanceList' />">Cancel</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>