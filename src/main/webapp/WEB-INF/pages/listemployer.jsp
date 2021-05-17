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
				<h3><spring:message
							code="title.employee"></spring:message></h3>
				<div class="">
				 <button id="exportpdf" class="btn btn-sm btn-danger clearfix"><span class="fa fa-file-pdf-o"></span> Export en PDF</button>
				<button id="exportxls" class="btn btn-sm btn-success clearfix"><span class="fa fa-file-excel-o"></span> Export en Excel</button>
				<table class="table table-striped "
					data-toggle="table" data-search="true" 
					data-pagination="true" id="exportTable">
					<thead class="bg-warning fw-bold">
						<tr>
							<th data-sortable="true" data-field="TITLE"><spring:message
							code="table.title"></spring:message></th>
							<th data-sortable="true" data-field="FIRST_NAME"><spring:message
							code="table.firstname"></spring:message></th>
							<th data-sortable="true" data-field="LAST_NAME"><spring:message
							code="table.lastname"></spring:message></th>
							<th data-sortable="true" data-field="START_DATE"><spring:message
							code="table.startdate"></spring:message></th>
							<th data-sortable="true" data-field="END_DATE"><spring:message
							code="table.enddate"></spring:message></th>
							<th data-sortable="true" data-field="MANAGER"><spring:message
							code="table.manager"></spring:message></th>
							<th data-sortable="true" data-field="Edit"><spring:message
							code="table.edit"></spring:message></th>
							<th data-sortable="true" data-field="Delete"><spring:message
							code="table.delete"></spring:message></th>
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
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/jszip.min.js"></script>

<script type="text/javascript">
    jQuery(function ($) {
        $("#exportpdf").click(function () {
            // parse the HTML table element having an id=exportTable
            var dataSource = shield.DataSource.create({
                data: "#exportTable",
                schema: {
                    type: "table",
                    fields: {
                    	first_name: { type: String },
                        last_name: { type: String},
                        title: { type: String },
                        manager: { type: String },
                    }
                }
            });

            // when parsing is done, export the data to PDF
            dataSource.read().then(function (data) {
                var pdf = new shield.exp.PDFDocument({
                    author: "Guillaume SOULAT",
                    created: new Date()
                });

                pdf.addPage("a4", "portrait");

                pdf.table(
                    20,
                    20,
                    data,
                    [
                        { field: "first_name", title: "Prenom" },
                        { field: "last_name", title: "Nom" },
                        { field: "title", title: "Poste" },
                        { field: "manager", title: "Responsable" }
                    ],
                    {
                        margins: {
                            top: 50,
                            left: 20
                        }
                    }
                );

                pdf.saveAs({
                    fileName: "GestionRHpdf"
                });
            });
        });
    });
</script>

<style>
    #exportpdf {
        border-radius: 0;
    }
</style> 
<script type="text/javascript">
    jQuery(function ($) {
        $("#exportxls").click(function () {
            // parse the HTML table element having an id=exportTable
            var dataSource = shield.DataSource.create({
                data: "#exportTable",
                schema: {
                    type: "table",
                    fields: {
                    	first_name: { type: String },
                        last_name: { type: String},
                        title: { type: String },
                        manager: { type: String },
                    }
                }
            });

            // when parsing is done, export the data to Excel
            dataSource.read().then(function (data) {
                new shield.exp.OOXMLWorkbook({
                    author: "Guillaume SOULAT",
                    worksheets: [
                        {
                            name: "Gesstion RH Table",
                            rows: [
                                {
                                    cells: [
                                        {
                                            style: {
                                                bold: true
                                            },
                                            type: String,
                                            value: "firstName"
                                        },
                                        {
                                            style: {
                                                bold: true
                                            },
                                            type: String,
                                            value: "lastName"
                                        },
                                        {
                                            style: {
                                                bold: true
                                            },
                                            type: String,
                                            value: "title"
                                        },
                                        {
                                            style: {
                                                bold: true
                                            },
                                            type: String,
                                            value: "manager"
                                        }
                                    ]
                                }
                            ].concat($.map(data, function(item) {
                                return {
                                    cells: [
                                    	 { type: String, value: item.first_name },
                                         { type: String, value: item.last_name },
                                         { type: String, value: item.title },
                                         { type: String, value: item.manager }
                          
                                    ]
                                };
                            }))
                        }
                    ]
                }).saveAs({
                    fileName: "GestionRhExcel"
                });
            });
        });
    });
</script>

<style>
    #exportxls {
        border-radius: 0;
    }
</style>
</body>
</html>
