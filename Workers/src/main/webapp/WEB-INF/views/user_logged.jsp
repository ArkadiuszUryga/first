<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"
	integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/style.css"/>">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/js/Multiple-Dates-Picker-for-jQuery-UI/jquery-ui.multidatespicker.css" />
<script
	src="<%=request.getContextPath()%>/resources/js/Multiple-Dates-Picker-for-jQuery-UI/jquery-ui.multidatespicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Użytkownik</title>
</head>
<body>
	<div class="top-section">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<p class="no-margin">
						Witaj <strong> <c:out value="${userLogged.firstName}" />
							<c:out value="${userLogged.secondName}" />
						</strong>

					</p>
				</div>
				<%@ include file="/WEB-INF/views/menu.jsp"%>

				<c:set var="userL" scope="session" value="${userLogged}" />


				<c:if test="${userLogged.ranga == 3}">
					<a href="<c:url value = "/user/add/"/>"
						class="btn btn-primary btn-lg btn-block">Dodaj użytkownika </a>
					<button type="button" class="btn btn-primary btn-lg btn-block">Albo
						usuń, jeśli masz taką chęć</button>
				</c:if>

				<c:if test="${userLogged.ranga == 2}">
					<c:set var="umowa" value="${user2Logged.umowa}" />
					<c:set var="badania" value="${user2Logged.badania}" />

				</c:if>
				<c:if test="${userLogged.ranga == 1}">

					<br>Dodatkowe informacje:<br> 
		 &nbsp;&nbsp;Umowa do: <fmt:formatDate pattern="yyyy-MM-dd"
						value="${user2Logged.umowa}" />,
		
		 &nbsp;&nbsp;Następne badania okresowe:  <fmt:formatDate
						pattern="yyyy-MM-dd" value="${user2Logged.badania}" />,
		 &nbsp;&nbsp;Dzienny wymiar pracy: <c:out
						value="${user2Logged.defaultHour}" /> godzin, 
		 &nbsp;&nbsp;pozostały urlop: <c:out value="${userLogged.urlop}" /> dni
		
		<form method="post">
						<div id="dates"></div>
						<input type="text" name='dates' id='altField' /><br> <input
							type="submit" value="Wyślij" />
					</form>

				</c:if>

				<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			var date = new Date();
			$('#dates').multiDatesPicker({
				altField: '#altField',
				beforeShowDay: $.datepicker.noWeekends,
				dateFormat: "yy-m-d",
				<c:if test="${dates.size() > 0}">
					addDates: [
						<c:forEach items="${dates}" var="date1">
							<c:out value = "date.setDate(${date1.date.day}), "/>
								
						</c:forEach>
					]
				</c:if>
			});
		});
	</script>
</body>
</html>