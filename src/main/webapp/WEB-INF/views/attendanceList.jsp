<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Attendance record</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">
		<%@include file="authheader.jsp" %>	
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Attendance Record </span></div>
		  	
		 	<div class="well">
		 		<a href="<c:url value='/newattendance' />">Add New Attendance</a>
		 	</div>
		 	
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Status</th>
				        <th>Date</th>
				        <th>Type</th>
				        	<th width="100"></th>
				        	<th width="100"></th>
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${attendance}" var="attendance">
					<tr>
						<td>${attendance.status}</td>
						<td>${attendance.date}</td>
						<td>${attendance.type}</td>
							<td><a href="<c:url value='/edit-attendance-${attendance.id}' />" class="btn btn-success custom-width">edit</a></td>
							<td><a href="<c:url value='/delete-attendance-${attendance.id}' />" class="btn btn-danger custom-width">delete</a></td>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
   	</div>
</body>
</html>