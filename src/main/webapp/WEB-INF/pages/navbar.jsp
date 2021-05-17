<%@ taglib uri="http://java.sun.com/jsp/jstl/core_1_1" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="menu">
	<ol>
		<li class="menu-item"><a href="accueil"><spring:message
					code="nabbar.accueil"></spring:message></a>
		<li class="menu-item"><a href="#0"><spring:message
					code="nabbar.manager"></spring:message></a>
			<ol class="sub-menu">
				<%-- 				<li class="menu-item"><a href="ajouterunepage"><spring:message --%>
				<%-- 							code="nabbar.listmanageur"></spring:message></a></li> --%>
				<li class="menu-item"><a href="listmanager"><spring:message
							code="nabbar.listmanageur"></spring:message></a></li>
				<li class="menu-item"><a href="listmanager2"><spring:message
							code="nabbar.listmanageur2"></spring:message></a></li>
			</ol></li>
		<li class="menu-item"><a href="#0">Employee</a>
			<ol class="sub-menu">
				<li class="menu-item"><a href="listemployer"><spring:message
							code="nabbar.listeemployee"></spring:message></a></li>
				<li class="menu-item"><a href="ajouteremployer"><spring:message
							code="nabbar.ajouteremployee"></spring:message></a></li>
			</ol></li>
		<li class="menu-item"><a href="parametre"><spring:message
					code="nabbar.parametre"></spring:message></a></li>
		<li class="menu-item"><a href="qui"><spring:message
					code="nabbar.qui"></spring:message></a></li>
		<li class="menu-item"><a href="contact"><spring:message
					code="nabbar.contact"></spring:message></a></li>
		<li class="menu-item"><a href="Deconnexion"><spring:message
					code="nabbar.deconnexion"></spring:message></a></li>
	</ol>
</nav>