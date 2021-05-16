<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login :</title>
  <link
  href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
  rel="stylesheet"
  integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
  crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'><link rel="stylesheet" href="./style/navbar.css">
<link
  href="//netdna.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css"
  rel="stylesheet" id="bootstrap-css">

<body>
<jsp:include page="navbar.jsp"></jsp:include>
<section class="container mt-5 w-25">
    <div class="row mt-5">
      <div class="card shadow-lg mt-3 mb-5 bg-body rounded d-flex align-items-center">
        <form action="save" method="post">
          <input class="form-control mt-3" type="hidden" name="EMP_ID">

            <label>TITLE</label>
            <input type="text" class="form-control  mt-2 mb-3"
              name="TITLE" placeholder="TITLE">

          <label>FIRST_NAME</label>
            <input type="text" class="form-control  mt-2 mb-3"
              name="FIRST_NAME" placeholder="FIRST_NAME">

           <label>LAST_NAME</label>
            <input type="text" class="form-control  mt-2 mb-3"
              name="LAST_NAME" placeholder="LAST_NAME">

          <label>START_DATE</label>
            <input type="date" class="form-control  mt-2 mb-3"
              name="START_DATE" placeholder="START_DATE">

          <label>END_DATE</label>
            <input type="date" class="form-control  mt-2 mb-3"
              name="END_DATE" placeholder="END_DATE">

          <input class="btn btn-outline-primary mb-3  mt-2" type="submit"
            value="sauvegarder">
        </form>
      </div>
    </div>
  </section>
  <footer class="footer mt-auto py-3 bg-dark text-white mt-3">
  <div class="container">
    <span class="text-white">@ Guillaume SOULAT</span>
			      	<a href="${pageContext.request.contextPath}/?lang=fr">🇫🇷</a>
		<a href="${pageContext.request.contextPath}/?lang=en">🇬🇧</a>
  </div>
</footer>
</body>
</html>
