<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Résultat du Test</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="css/menu_profile.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    	
    

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

</head>
<body>
<div style="display:flex; flex-direction : row; justify-content: space-between;">
		  <h2>Résultat du Test</h2>
	<a class="btn header-btn href" href="Home">retour vers la page d'accueil </a>
</div>
  <div style="display:flex; flex-direction: column; width:100%;border:1px solid black; justify-content: center; align-items:center;">

    <p>Merci d'avoir complété le test. Voici le résultat :</p>

    <p>Résultat :<span style="font-size:25px; color:#ff1493"> ${resultat}</span></p>
    <p>Quand est-ce que vous commencez vos règles ? : ${commencezregle1}</p>
    <p>Quelle est la durée moyenne de votre cycle menstruel ? : ${cyclemenstruelDescription}</p>
    <p>Avez-vous des antécédents familiaux d'endométriose ? : ${antecedentsfamiliauxDescription}</p>
    <p>Avez-vous déjà accouché ? : ${accouchementDescription}</p>
    <p>Avez-vous des difficultés à tomber enceinte ? : ${tomberenceinteDescription}</p>
    <p>Indice de masse corporelle (IMC) : Calculer votre IMC : ${poidsDescription}</p>
    <p>Indice de taille corporelle (IMC) : Calculer votre IMC: ${tailleDescription}</p>
    <p>Quelle est l'intensité de vos douleurs abdominales/pelviennes ?: ${intensiterdouleursDescription}</p>
    <p>Quand ressentez-vous des douleurs abdominales ou pelviennes ? : ${douleursabdominales}</p>
    <p>Quelle est la sévérité des douleurs pendant les rapports sexuels ? : ${douleussexuelsDescription}</p>
    <p>Qu'est-ce qui aggrave vos douleurs ? : ${aggravevousdouleurs}</p>
    <p>Durée de la période menstruelle ? : ${periodemenstruelleDescription}</p>
    <p>Nature des périodes menstruelles ? : ${Naturedesperiodes}</p>
    <p>Avez-vous déjà été victime d'abus physique ou sexuel ? : ${victimesexuelsDescription}</p>

  </div>
</body>
</html>
<style>
/* Style de base pour le corps de la page */
body {
    font-family: 'Arial', sans-serif;
   
    color: #333;
    margin: 20px;
}

/* Style pour le conteneur principal */
h2 {
    color: #ff1493;
}

/* Style pour les liens */
a {
    color: #ff1493;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

/* Style pour les paragraphes */
p {
    margin: 10px 0;
}

/* Style pour les sections spécifiques */
.result-section {
    background-color: #fff;
    border: 1px solid #ddd;
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 5px;
}

/* Style pour les sections avec des descriptions */
.result-section p {
    font-weight: bold;
}

/* Ajoutez d'autres styles au besoin */
</style>