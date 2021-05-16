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
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.css">
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
	<div class="tableemploye">
	<!-- </header> -->
	<section class="container mt-5 ">
		<div class="row mt-5 " >
			<div
				class="col-12 card shadow-lg p-3  mb-5 bg-body rounded mt-5">
				<h3>Liste des Employees</h3>
				<div class="">
				<table class="table table-striped "
					data-toggle="table" data-search="true" 
					data-pagination="true">
					<thead class="bg-success">
						<tr>
							
							<th data-sortable="true" data-field="TITLE">title</th>
							<th data-sortable="true" data-field="FIRST_NAME">first_name</th>
							<th data-sortable="true" data-field="LAST_NAME">last_name</th>
							<th data-sortable="true" data-field="START_DATE">start_date</th>
							<th data-sortable="true" data-field="END_DATE">end_date</th>
							<th data-sortable="true" data-field="MANAGER">manager</th>
							<th data-sortable="true" data-field="Edit">Edit</th>
							<th data-sortable="true" data-field="Delete">Delete</th>
						</tr>
					</thead>
						<tbody>
					<c:forEach var="listemployer" items="${listemployer}">
							<tr>
								<td class="text-center" data-value="${listemployer.title}"><c:out
										value="${listemployer.title}" /></td>
								<td class="text-center" data-value="${listemployer.firstName}"><c:out
										value="${listemployer.firstName}" /></td>
								<td class="text-center" data-value="${listemployer.lastName}"><c:out
										value="${listemployer.lastName}" /></td>
								<td class="text-center" data-value="${listemployer.startDate}"><c:out
										value="${listemployer.startDate}" /></td>
								<td class="text-center" data-value="${listemployer.endDate}"><c:out
										value="${listemployer.endDate}" /></td>
										<td class="text-center" data-value="${listemployer.manager}"><c:out
										value="${listemployer.manager}" /></td>
								<td class="text-center" data-value=""><a
									href="update?empId=${listemployer.empId}"
									class="btn btn-small btn btn-outline-success m-n2">
										<i class="fas fa-marker"></i>
								</a> <input id="empId" name="empId" type="hidden"
									value="${listemployer.empId}" /></td>
								<td class="text-center"><a
									href="delete?empId=${listemployer.empId}"
									class="btn btn-small btn btn-outline-danger m-n2">
										<i class="far fa-trash-alt"></i>
								</a> <input id="empId" name="empId" type="hidden"
									value="${listemployer.empId}" /></td>
							</tr>
						
					</c:forEach>
					</tbody>
				</table></div>
			</div>
		</div>
	</section>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>
		 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.16.0/dist/bootstrap-table.min.js"></script>
</body>
</html>
