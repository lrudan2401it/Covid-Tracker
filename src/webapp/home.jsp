<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<!--  
<html xmlns:th="http://www.thymeleaf.org">
-->
<html>
<head>
    <title>Covid-19 Cases Tracker Application</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	    <h1>Covid-19 Cases Tracker Application</h1>
	    <p>This application lists the current number of cases reported across the globe</p>
	
	    <div class="jumbotron">
	        <h1 class="display-4">${totalReportedCases}</h1>
	        <p class="lead">Total cases reported as of today</p>
	        <hr class="my-4">
	        <p>
	            <span>New cases reported since previous day:</span>
	            <span>${totalNewCases}></span>
	        </p>
	
	    </div>
	
	    <table class="table">
	        <tr>
	            <th>State</th>
	            <th>Country</th>
	            <th>Total cases reported</th>
	            <th>Changes since last day</th>
	        </tr>
	        <c:forEach items="${locationStat}" var="l">
	       	<tr>
	            <td>${l.state}"</td>
	            <td>${l.country}</td>
	            <td>${l.latestTotalCases}</td>
	            <td>${l.diffFromPrevDay}</td>
	        </tr>
	        </c:forEach>
	    </table>
	</div>
</body>

</html>