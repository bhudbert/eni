
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/fragments/head.jsp"></jsp:include>

<body class="container-fluid">

	<%@ include file="/WEB-INF/fragments/body_header.jsp"%>
	<br>
	<br>

	<main role="main">

		<div class="container myMainContainer">
		
		
		<%@ include file="/WEB-INF/fragments/alerts.jsp"%>
		
			<div class="card col-8 col-md-6 col-lg-4"
				style="background-color: #f2f2f2; margin: auto;">

				<form method="post" action="Connexion" class="form-signin">

					<br />
					<h1 class="h3 mb-3 font-weight-normal">&nbsp;&nbsp;Entrez vos
						identifiants</h1>

					<label for="inputID" class="sr-only">Identifiant </label> <input
						type="name" id="inputName" class="form-control"
						placeholder="identifiant" name="pseudo" required autofocus> <br />
					<label for="inputPassword" class="sr-only">Mot de passe</label> <input
						type="password" id="inputPassword" class="form-control" name="mdp"
						placeholder="Mot de passe" required> <br /> <input
						id="cb-souvenir-de-moi" type="checkbox" /> <label
						for="cb-souvenir-de-moi">Se souvenir de moi</label> <br /> <a
						href="#" id="my-account">Mot de passe oublié</a><br /> <br />

					<button class="btn btn-lg btn-block btn-secondary" type="submit">Connexion</button>
					<br />

				</form>

			</div>


		</div>
		<br>
	</main>

	<%@ include file="/WEB-INF/fragments/body_footer.jsp"%>
</body>

</html>