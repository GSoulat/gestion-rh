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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.5.0/css/flag-icon.min.css"
	integrity="sha512-Cv93isQdFwaKBV+Z4X8kaVBYWHST58Xb/jVOcV9aRsGSArZsgAnFIhMpDoMDcFNoUtday1hdjn0nGp3+KZyyFw=="
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">
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
<body>
<jsp:include page="navbar.jsp"></jsp:include>
            
	<section class="container mt-5">
		<div class="row mt-5">
		<a class="btn btn-lg btn-dark" href="accueil">SAUVGARDER</a>
			<div class="col-12 card shadow-lg p-3 mt-5 mb-5 bg-body rounded">
			<h3>Parametre : Liste des employees sans Manager</h3>
				<table
					class="table table-striped"
					data-toggle="table" data-search="true" data-show-columns="true"
					data-pagination="true">
					<thead class="bg-success">
						<tr>
							<th data-sortable="true" data-field="EMP_ID">emp_Id</th>
							<th data-sortable="true" data-field="TITLE">title</th>
							<th data-sortable="true" data-field="FIRST_NAME">first_name</th>
							<th data-sortable="true" data-field="LAST_NAME">last_name</th>
							<th data-sortable="true" data-field="START_DATE">start_date</th>
							<th data-sortable="true" data-field="END_DATE">end_date</th>
							<th data-sortable="true" data-field="Edit">Manager</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach var="listemployer" items="${listemployer}">
								<tr>
									<td><c:out value="${listemployer.empId}" /></td>
									<td><c:out value="${listemployer.title}" /></td>
									<td><c:out value="${listemployer.firstName}" /></td>
									<td><c:out value="${listemployer.lastName}" /></td>
									<td><c:out value="${listemployer.startDate}" /></td>
									<td><c:out value="${listemployer.endDate}" /></td>
									<td class="text-center"><select path="manager" name="employee">
						<option value="0">---- Selectionnez un manager
										----</option>
						<c:forEach var="manager" items="${listmanager}">
							<option value="${manager.empId}">${manager}</option>
						</c:forEach>
					</select></td>
								</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>
<jsp:include page="footer.jsp"></jsp:include>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>
</body>
</html>
