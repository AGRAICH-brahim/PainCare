<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>My profile</title>
 <meta name="description" content="">
       <meta http-equiv="x-ua-compatible" content="ie=edge">
   
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/profile.css">
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

 <!-- ? Preloader Start -->
   
      <!-- Preloader Start -->
      <!-- Preloader Start -->
    <header>
        <!--? Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2 col-md-1">
                            <div class="logo">
                                <a href="Home"><img src="assets/img/logo/logo-paincare.png" alt="" style="border-radius: 50%; width: 100px;"></a>
                            </div>
                        </div>
                        <div class="col-xl-10 col-lg-10 col-md-10 menu-main d-flex align-items-center justify-content-end" style="gap : 10px; font-size: 0;">
                            <div class="menu-main d-flex align-items-center justify-content-center " >
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav> 
                                        <ul id="navigation">
                                            <li><a href="Home">Home</a></li>
                                            <li><a href="#">Endometriosis</a>
	                                             <ul class="submenu" >
	                                                    <li><a href="symptoms.jsp">Symptoms</a></li>
	                                                    <li><a href="causes.jsp">Causes</a></li>
	                                                    <li><a href="diagnosis.jsp">Diagnosis</a></li>
	                                                    <li><a href="Infertility.jsp">Infertility</a></li>
	                                                    <li><a href="adhesions.jsp">Adhesions</a></li>
	                                             </ul>
                                            </li>
                                            <li><a href="ScrappingServlet">News</a></li>                                       
                                            <li><a href="#">Services</a>
	                                              <ul class="submenu">
	                                                    <li><a href="test_endo.jsp">Test</a></li>
	                                                    <li><a href="EvolutionPain">Evolution of pain</a></li>
	                                                    <li><a href="suivi.jsp">Process</a></li>
	                                              </ul>
                                            </li>
						           <li><a href="AllBlogs">Community</a></li>
                                            <li><a href="contact.jsp">Contact</a></li>   
                                             <li>  
												            <a><i class="bi bi-person-lines-fill"></i></a>   
												            <ul class="submenu">
			                                                    <li><a href="Profile"><i class="bi bi-person-circle"></i> edit-Profile</a></li>
			                                                    <li><a href=""><i class="bi bi-bell-fill"></i> Notification</a></li>
			                                                    <li><a href=""><i class="bi bi-calendar-heart"></i> Calendar</a></li>
			                                                    <li><a href=""><i class="bi bi-gear"></i> Setting</a></li>
			                                                    <li><a href="Logout"><i class="bi bi-box-arrow-right"></i> Sign out</a></li>
			                                               </ul>	                  
                                            </li>
                                   </ul>
                                    </nav>
                                </div>
                                 </div>
                                  	<div class="create justify-content-center">
							            <div class="profile-pic">
							                <img src="assets/img/logo/profile-8.jpg" alt="pic 1" />
							            </div>
							            <div class="handle">
							              
							                <p class=""><a href="Profile"> ${user.name}</a></p>
							            </div>
							        </div>
                                
                                <style>
                                .create{
    display: flex;
    flex-direction : column;
    align-items: center;
    justify-content : center ;
    gap: 1rem;
    position : relative;
    top: 10px;
}
                                 .profile-pic{
    position: relative;
    overflow: visible;
}

 .profile-pic img{    
 	width: 50px;
    border-radius: 50%;
}
.handle p a{
	color: black;
}


</style>
                           
                        </div>   
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    
    
    
    
	<!--? Slider Area Start-->
		<div class="slider-area slider-area2">
			<div class="slider-active dot-style">
				<!-- Slider Single -->
				<div class="single-slider  d-flex align-items-center slider-height2">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-xl-7 col-lg-8 col-md-10 ">
								<div class="hero-wrapper">
									<div class="hero__caption">
										<h1 data-animation="fadeInUp" data-delay=".3s">Modifier votre profile </h1>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>    
			</div>
		</div>
		<!-- Slider Area End -->
<div class="container-xl px-4 mt-4">

<nav class="nav nav-borders">
<form action="" method="post">
<button class="btn btn-primary" type="submit" style="background:crimson; border:crimson;" onclick="return confirm('Voulez-vous vraiment supprimer ce compte ?')"> Supprimer le compte </button>
</form>
</nav>
<hr class="mt-0 mb-4">
<div class="row">
<div class="col-xl-4">

	<div class="card mb-4 mb-xl-0">
		<div class="card-header">Profile Picture</div>
		<div class="card-body text-center">
		<form action="EditImage" method="post"  enctype="multipart/form-data">
		
								<c:choose>
								    <c:when test="${not empty user.image}">
								        	<img style="width: 60%;" class="img-account-profile rounded-circle mb-2"  src="data:image/png;base64,${Base64.getEncoder().encodeToString(user.image)}" alt="Image de l'utilisateur">
								    </c:when>
								    <c:otherwise>
								 		<img style="width: 60%;" class="img-account-profile rounded-circle mb-2" src="assets/img/icon/profile-par-defaut.webp" alt="profile par defaut">
								    </c:otherwise>
								</c:choose>
								<div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
								<input type="file" name="image">	
		
								<button class="btn btn-primary" type="submit" style="background:crimson; border:crimson;"> Upload new image</button>
			</form>
		</div>
	</div>
</div>
<div class="col-xl-8">								
	<div class="card mb-4">
		<div class="card-header">Account Details</div>
		 <p class="" style="color:red; font-size:12px; display:flex; justify-content: center; "> ${message}</p>
			<div class="card-body">
			<form action="EditUser" method="post">
					<div class="mb-3">
					<label class="small mb-1" for="inputUsername">Username </label>
					<input class="form-control" name="username" id="inputUsername" type="text" placeholder="Enter your username" value="${ user.name }">
					</div>
						<div class="row gx-3 mb-3">
							<div class="col-md-6">
							<label class="small mb-1" for="inputBirthday">Birthday</label>
							<c:choose>
							            <c:when test="${not empty user.birthday}">
								                <input class="form-control" name="birthday" id="inputBirthday" type="date" name="birthday" placeholder="Enter your birthday" value="${user.birthday}">
							            </c:when>
						            <c:otherwise>
							                <input class="form-control"  name="birthday" id="inputBirthday" type="date" name="birthday" placeholder="Enter your birthday" value="2000-01-01">
						            </c:otherwise>
					        </c:choose>
							</div>
						</div>
					<div class="mb-3">
					<label class="small mb-1" for="inputEmailAddress">Email address</label>
					<input class="form-control" name="email" id="inputEmailAddress" type="email" placeholder="Enter your email address" value="${user.email }">
					</div>
					<button class="btn btn-primary" type="submit"style="background:crimson; border:crimson;">Save changes</button>
			</form>
			</div>
		</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>