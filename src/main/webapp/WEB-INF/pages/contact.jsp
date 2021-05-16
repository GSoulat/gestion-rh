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
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<section class="container mt-5">
		<div class="row mt-5">
			<div class="card shadow-lg mt-3 mb-5 bg-body rounded col-12 col-lg-9 d-flex justify-content-center ">
				<h3>Contact :</h3>
				<form action="save" method="post">
					<div class="container d-flex justify-content ">
						<img alt="" src="img/contact-us-2993000_640.jpg" class="m-3 rounded"
							width="500" height="370">
						<div class="container">
							<label>Votre nom :</label> <input type="text"
								class="form-control  mt-2 mb-3" name="nom" placeholder="nom">

							<label>Votre E-mail :</label> <input type="text"
								class="form-control  mt-2 mb-3" name="E-mail"
								placeholder="E-mail"> <label>Votre Message :</label>
							<TEXTAREA type="text" class="form-control  mt-2 mb-3"
								name="Message" placeholder="Message" row="20"></TEXTAREA>
							<input class="btn btn-outline-primary mb-3  mt-2" type="submit"
								value="sauvegarder">
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>

	<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>
