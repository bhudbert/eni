<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/fragments/head.jsp"></jsp:include>


<body class="container-fluid text-center">

	<%@ include file="./fragments/header.jsp"%>
	<main role="main">

		<div class="container   myMainContainer">


			<c:if test="${noUtilisateur >0 }">
				<nav class="nav nav-pills nav-justified">
					<a class="nav-item nav-link active bg-secondary" href="#">Mon
						profil</a> <a class="nav-item nav-link" href="#" style="color: #333;">Mes
						articles</a> <a class="nav-item nav-link " href="#"
						style="color: #333;">Mes encheres</a>
				</nav>
				<hr>

				<%@ include file="./fragments/alerts.jsp"%>

				<br>


				<div class="row">
					<div
						class="col-md-6 d-flex justify-content-center align-self-center">
						<h2 class="float-left">${Utilisateur.nom }
							${Utilisateur.prenom }</h2>
					</div>

					<div class="col-md-6 d-flex justify-content-center">
						<img
							src="<%=request.getContextPath()%>/images/users/default/profile/profile.png"
							class="rounded float-right" alt="profil">
					</div>


				</div>
			</c:if>

			<form method="post" action="Compte">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="pseudo">Identifiant</label> <input type="text"
							class="form-control" id="pseudo" placeholder="Identifiant"
							name="pseudo"
							<c:if test="${!empty Utilisateur}"> 
								value="${Utilisateur.pseudo }"
							 </c:if>
							required>
					</div>
					<c:if test="${noUtilisateur>0 }">
						<c:if test="${action=='inDeleting'}">
						
									<input type="hidden" name="fonction" value="deleteValidation">
						</c:if>
						<c:if test="${action!='inDeleting'}">
						
									<input type="hidden" name="fonction" value="update">
						</c:if>
					

					</c:if>



					<div class="form-group col-md-6">
						<label for="nom">Nom</label> <input type="text"
							class="form-control" id="nom" placeholder="Nom" name="nom"
							<c:if test="${!empty Utilisateur}"> 
								value="${Utilisateur.nom }"
							 </c:if>
							required>
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="prenom">Prenom</label> <input type="text"
							class="form-control" id="prenom" placeholder="Prenom"
							name="prenom"
							<c:if test="${!empty Utilisateur}"> 
								value="${Utilisateur.prenom }"
							 </c:if>
							required>
					</div>
					<div class="form-group col-md-6">
						<label for="email">Email</label> <input type="email"
							class="form-control" id="inputPassword4" placeholder="***@**"
							name="email"
							<c:if test="${!empty Utilisateur}"> 
								value="${Utilisateur.email }"
							 </c:if>
							required>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="telephone">Telephone</label> <input type="text"
							class="form-control" id="telephone" placeholder="01 02 03 .."
							name="telephone"
							<c:if test="${!empty Utilisateur}"> 
								value="${Utilisateur.telephone }"
							 </c:if>
							required>
					</div>
					<div class="form-group col-md-6">
						<label for="rue">Rue</label> <input type="text"
							class="form-control" id="rue" placeholder="3, rue des encheres"
							name="rue"
							<c:if test="${!empty Utilisateur}"> 
								value="${Utilisateur.rue }"
							 </c:if>
							required>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="codePostal">Code Postal</label> <input type="text"
							class="form-control" id="codePostal" placeholder="CP"
							name="codePostal"
							<c:if test="${!empty Utilisateur}"> 
								value="${Utilisateur.codePostal }"
							 </c:if>
							required>
					</div>
					<div class="form-group col-md-6">
						<label for="ville">Ville</label> <input type="text"
							class="form-control" id="ville" placeholder="NANTES" name="ville"
							<c:if test="${!empty Utilisateur}"> 
								value="${Utilisateur.ville }"
							 </c:if>
							required>
					</div>
				</div>
				<c:if test="${noUtilisateur>0 }">


					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="mdp">Mot de passe actuel</label> <input
								type="password"
								class="form-control
								<c:if test="${action=='inDeleting'}">
							  is-invalid
							  </c:if>
							  
							  "
								id="mdp" placeholder="***" name="mdp" required>
						</div>
						<div class="form-group col-md-6">
							<label for="confirmMdp">Credit</label> <br> <label
								for="confirmMdp" class="d-flex alert alert-info"
								style="height: 40px;">
								<div class="w-100 text-center">${Utilisateur.credit }</div>
							</label>
						</div>
					</div>
				</c:if>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="mdp">Mot de passe</label> <input type="password"
							class="form-control" id="mdp" placeholder="***" name="mdp"
							required>
					</div>
					<div class="form-group col-md-6">
						<label for="confirmMdp">Confirmation mot de passe</label> <input
							type="password" class="form-control" id="confirmMdp"
							placeholder="***" name="confirmMdp" required>
					</div>
				</div>

				<br>


				<c:if test="${action!='inDeleting'}">
					<button type="submit" class="btn btn-secondary text-center">
						<c:if test="${noUtilisateur>0 }">
							Mettre a jour
						</c:if>
						<c:if test="${noUtilisateur == 0 or empty noUtilisateur}">
							S'enregistrer
						</c:if>
					</button>&nbsp;
				<a href="Compte?fonction=delete" class="btn btn-danger">
						Supprimer mon compte </a>
				</c:if>




				<c:if test="${action=='inDeleting'}">
					<button type="submit" class="btn btn-danger text-center">
						/!\ Valider la suppression du compte /!\</button>
				</c:if>


			</form>

			<br>
		</div>
	</main>


	<%@ include file="./fragments/footer.jsp"%>
</body>

</html>
