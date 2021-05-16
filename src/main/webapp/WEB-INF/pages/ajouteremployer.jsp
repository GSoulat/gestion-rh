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
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>

	<div class="mt-5 "></div>
	<!-- </header> -->
	<section class="container mt-5 ">
		<div class="row mt-5">
			<div class="card shadow-lg mt-3 mb-5 bg-body rounded col-12 col-lg-9 d-flex justify-content-center">
				<h3>Ajouter un employer</h3>
				<form:form modelAttribute="employee" action="save" method="post">
        		<div class="container d-flex justify-content">
        		<img alt="" src="img/people-1979261_640.jpg" class="m-3 rounded" width="500" height="370">
        		<div class="container">
					<div class="form-floating mb-3">
						<form:input type="text" class="form-control" id="floatingInput"
							path="firstName" placeholder="FIRST_NAME"></form:input>
						<label for="floatingInput">FIRST_NAME</label>
					</div>
					 <small><form:errors path="firstName" cssClass="error" /></small>

					<div class="form-floating mb-3">
						<form:input type="text" class="form-control" id="floatingInput"
							path="lastName" placeholder="LAST_NAME"></form:input>
						<label for="floatingInput">LAST_NAME</label>
					</div>
					<small><form:errors path="lastName" cssClass="error" /></small>

					<div class="form-floating mb-3">
						<form:input type="text" class="form-control" id="floatingInput"
							path="title" placeholder="TITLE"></form:input>
						<label for="floatingInput">TITLE</label>
					</div>
					<small><form:errors path="title" cssClass="error" /></small>

					<div class="form-floating mb-3">
						<form:input type="date" class="form-control" id="floatingInput"
							path="startDate" placeholder="START_DATE"></form:input>
						<label for="floatingInput">START_DATE</label>
					</div>
					<small><form:errors path="startDate" cssClass="error" /></small>

					<div class="form-group">
						<select class="form-select" name="superiorEmpId">
							<option value="0">---- Selectionnez un manager
										----</option>
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
						</div>
						</div>
				</form:form>
			</div>
		</div>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
