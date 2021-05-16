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

<div class="mt-5"><div class="mt-5">
 <div class="block card mt-5">
    <img src="https://www.justifit.fr/wp-content/uploads/2020/06/Droit-a-limage.jpg" class="w-25 m-5">
    <h1>What is Lorem Ipsum? </h1>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
 </div></div>
</div>
  <footer class="footer mt-auto py-3 bg-dark text-white mt-3">
  <div class="container">
    <span class="text-white">@ Guillaume SOULAT</span>
			      	<a href="?lang=fr">🇫🇷</a>
		<a href="?lang=en">🇬🇧</a>
  </div>
</footer>
</body>
</html>
