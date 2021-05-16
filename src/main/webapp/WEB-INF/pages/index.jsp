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
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="./style/navbar.css">
<link
  href="//netdna.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css"
  rel="stylesheet" id="bootstrap-css">

<body>
<nav class="menu">
  <ol>
    <li class="menu-item"><a href="accueil"><spring:message code="nabbar.accueil"></spring:message></a></li>
        <li class="menu-item"><a href="qui"><spring:message code="nabbar.qui"></spring:message></a></a></li>
    <li class="menu-item"><a href="contact"><spring:message code="nabbar.contact"></spring:message></a></a></li>
  </ol>
</nav>
<section class="container mt-5 w-25 ">
    <div class="row mt-5">
      <div class="col-12 card shadow-lg p-3 mb-5 bg-body rounded  mt-5">
        <main class="form-signin">
          <form>
            <h1 class="h3 mb-3 fw-normal">Connectez-vous</h1>

              <label class="mt-3">Email </label>
              <input type="email" class="form-control mt-1" id="floatingInput"
                placeholder="name@example.com">

              <label class="mt-3">Password </label>
              <input type="password" class="form-control mt-1" id="floatingPassword"
                placeholder="Password">
            <div class="checkbox mt-2 mb-2">
              <label> <input type="checkbox" value="remember-me">
                Remember me
              </label>
            </div>
            <a class="btn btn-lg btn-dark" href="accueil">Sign
              in</a>

            <p class="mt-2 mb-3 text-muted">&copy; 2017â2021</p>
          </form>
        </main>
      </div>
    </div>
  </section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
