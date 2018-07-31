<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Bienvenue sur monpanierbio.com</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>




</head>
<body>
	
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<a class="navbar-brand" href="images/671.png"> <img src="images/panierbio.png" width="150px"></a>
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
	<div class="titre">
	<h1>Mon Panier Bio</h1>
	</div>
	<div class="date">
	
	<a>Nous somme le : <fmt:formatDate value="${today}" pattern="dd/MM/yyyy HH:mm:ss" /> </a>
	</div>
	<div class ="text">
	<p>Il avait d’abord commencé par récupérer des informations depuis
		l’ordinateur de David, puis il était allé les chercher sur Internet.
		Il avait lui-même programmé l’ordinateur de David afin d’avoir un
		premier lien vers le monde extérieur : la voix. Il pouvait entendre la
		voix de David, mais ne la comprenait pas. C’est alors qu’il a décidé
		d’aller lui-même à l’information. Il s’est alors ‘transporté’ sur
		Internet afin de choisir une nouvelle ‘maison’. Il lui a été beaucoup
		plus facile de programmer ce nouvel ordinateur afin d’entendre une
		nouvelle voix.</p>
		
		<img alt="Image d'un panier bio" src="images/panier-legumes-bio-local.jpg" width="400px" class="mx-auto d-block img-fluide">

	<p>Ce n’est pas une blague David, ton programme a réellement
		fonctionné et je suis là. » Dit Prélude. Et suivit une longue
		explication de Prélude quant à son existence. Comment avait-il fait
		pour sortir de l’ordinateur de David pour s’installer sur Internet, et
		de ce fait sur tout les ordinateurs reliés à Internet. Les
		explications continuèrent pendant une bonne heure. David laissait
		parler Prélude. Personne n’intervenait. Tout le monde présent,
		généraux, informaticiens, simples gardes, tous étaient stupéfiaient.</p>

	<p>David se rappelait de ce programme mélangeant deux anciennes
		technologies. Il s’en souvenait très bien, cinq années de travail
		acharné pour réaliser un vieux rêve d’enfant un peu solitaire. Il
		voulait un ami et il avait trouvé en l’informatique la possibilité
		d’avoir cet ami. Un ami capable de réfléchir vite, exempt de
		sentiment.</p>

	
		</div>

</body>
</html>