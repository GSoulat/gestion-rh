<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login :</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic"
	rel="stylesheet">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="./style/navbar.css">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
	<div class="mt-5 "></div>
	<!-- </header> -->
	<section class="container mt-5 ">
		<div class="row mt-5">
			<div class="card shadow-lg mt-3 mb-5 bg-body rounded col-12 col-lg-9">
				<form:form modelAttribute="employee" action="updatesave"
					method="post">

					<form:input type="hidden" class="form-control  mt-2 mb-3"
						path="empId" placeholder="EMPID" style=""></form:input>


					<label>FIRST_NAME</label>
					<form:input type="text" class="form-control  mt-2 mb-3"
						path="firstName" placeholder="FIRST_NAME"></form:input>

					<label>LAST_NAME</label>
					<form:input type="text" class="form-control  mt-2 mb-3"
						path="lastName" placeholder="LAST_NAME"></form:input>

					<label>TITLE</label>
					<form:input type="text" class="form-control  mt-2 mb-3"
						path="title" placeholder="TITLE"></form:input>

					<label>START_DATE</label>
					<form:input type="date" class="form-control  mt-2 mb-3"
						path="startDate" placeholder="START_DATE"></form:input>

					<label>END_DATE</label>
					<form:input type="date" class="form-control  mt-2 mb-3"
						path="endDate" placeholder="END_DATE"></form:input>

					<div class="form-group">
						<select class="form-select" name="superiorEmpId">
							<option value="0">------------ Selectionnez un manager ------------</option>
							<c:forEach items="${listmanager}" var="manager">
								<c:choose>
									<c:when test="${employee.manager.empId == manager.empId}">
										<option value="${manager.empId}" selected="selected">${manager}</option>
									</c:when>
									<c:when test="${employee.manager.empId != manager.empId}">
										<option value="${manager.empId}">${manager}</option>
									</c:when>
								</c:choose>
							</c:forEach>
						</select>
					</div>

					<input class="btn btn-outline-primary mb-3  mt-2" type="submit"
						value="sauvegarder">
				</form:form>
			</div>
		</div>
	</section>
	<footer class="footer mt-auto py-3 bg-dark text-white mt-3">
		<div class="container">
			<span class="text-white">@ Guillaume SOULAT</span>
			      	<a href="?lang=fr">🇫🇷</a>
		<a href="=?lang=en">🇬🇧</a>
		</div>
	</footer>
</body>
</html>
