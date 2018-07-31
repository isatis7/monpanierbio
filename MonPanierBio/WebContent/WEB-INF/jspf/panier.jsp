<%@ page language="java" contentType="text/html; charset= UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mon panier</title>
<!-- Bootstrap CSS -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


	<script src="js/script.js"></script>


</head>
<body>
	

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="images/panierbio.png"> <img src="images/panierbio.png" width="150px"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="welcome" Title="Pour revenir sur notre première page">Accueil</a></li>
				<li class="nav-item"><a class="nav-link" href="panier" Title="Pour gérer un panier">Mon panier</a></li>
				
			</ul>
		</div>
	</nav>


	
	<form action="submit" method="post" id="formulaire">
		<label for="code">Code du panier</label>
		<c:if test="${null != errorCode }">${errorCode}</c:if> 
		<input type="text" name="code" placeholder="Saisie d'un code" class="form-control" value="${param.code }"> <br> 
			<label for="categorie">Catégorie de panier</label> 
			<c:if test="${null != errorCategorie }">${errorCategorie}</c:if> 
			<input type="text" name="categorie" placeholder="Saisie de la catégorie" class="form-control"
			value="${param.categorie }"> <br> 
			<label for="nom">Nom</label>
			<c:if test="${null != errorNom }">${errorNom}</c:if> 
		<select name="nom" multiple="multiple">
			<option value="1">Oignon</option>
			<option value="2">Tomate allongée</option>
			<option value="3">Tomate grappe</option>
			<option value="4">Poivron</option>
			<option value="5">Courgette</option>
			<option value="6">Cougette jaune</option>
			<option value="7">Aubergine</option>
			<option value="8">echalotte</option>
		</select> <br> 
		<label for="prix">Prix</label>
		<c:if test="${null != errorPrix }">${errorPrix}</c:if> 
		<input type="text" name="prix" placeholder="Saisie du prix" class="form-control" value="${param.prix }"> <br> 
		<label for="poids">poids</label>
		<c:if test="${null != errorPoids }">${errorPoids}</c:if> 
		<input type="text" name="poids" placeholder="Saisie du poids" class="form-control" value="${param.poids}"> <br> 
		<label for="datepicker">Date de mise en vente</label>
		<c:if test="${null != errorVente }">${errorVente}</c:if>
		 
		<input type="text" name="vente" class="datepicker"  value="${param.vente}"> <br> 
		<label for="description">Déscription</label>
		<c:if test="${null != errorDescription }">${errorDescription}</c:if> 
		<textarea rows="6" cols="35" class="form-control" name="description" placeholder="Saisie de la descrption" class="form-control" value="${param.description}">Saisie de la description</textarea>
		
		<input id="submit" type="submit" value="Submit" class="btn btn-primary" >
					<button type="reset" id="reset" class="btn btn-primary" onclick="this.form.reset();">Reset</button>
	</form>
</body>
</html>