<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Pain Evolution</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->

	<link rel="stylesheet" href="css/boutton_dans_evolution.css">

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

    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.1/dist/chart.umd.min.js"></script>

</head>
<body>
 <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
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
	                                                           <li><a href="Test">Test1</a></li>
	                                                    <li><a href="test_endo.jsp">Test2</a></li>
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
    
   <main style="display: flex; flex-direction: column; width: 100%; justify-content: center; align-items: center; ">
    <div style="display: flex; flex-direction: column; justify-content: center; padding: 55px;">
     
            <div>
                <h2 id="averagePain" style=" padding: 25px;">La Moyenne de la douleur : </h2>
            </div>
            <div style="width: 800px;">
                <canvas id="pain_evolution"></canvas>
            </div>
        </div>
    
</main>

    <script>
    var Ctx = document.getElementById("pain_evolution").getContext("2d")

  // Récupérez les données JSON depuis la session ou la requête
    var jsonData = ${requestScope.jsonData};


    var data = {
        labels: jsonData.map(entry => entry.createdAt).reverse(), // Supposons que votre objet PainData a une propriété "date"
        datasets: [{
            label: '# pain evolution',
            data: jsonData.map(entry => entry.painLevel).reverse(), // Supposons que votre objet PainData a une propriété "painLevel"
            borderColor: '#FD2D00',
            backgroundColor: '#9BD0F5',
            borderWidth: 1
        }]
    };

    var options = {
        scales: {
            x: [{
                type: 'time',
                time: {
                    unit: 'day' // Vous pouvez ajuster l'unité en fonction de vos besoins (jour, mois, année, etc.)
                },
                title: {
                    display: true,
                    text: 'Date'
                }
            }],
            y: {
                title: {
                    display: true,
                    text: 'Pain Evolution'
                }
            },
            maintainAspectRatio: false // Essayez de définir cette option sur true ou false selon vos besoins
        }
    };
    var config = {
        type: 'line' ,
        data: data,
        options: options
    }

    var pain_evolution = new Chart(Ctx , config);


 // Calculer la moyenne
    var averagePainLevel = calculateAverage(jsonData.map(entry => entry.painLevel));

    // Obtenez la référence de la balise <h2>
    var h2Element = document.querySelector('h2');

    // Mettez à jour le contenu de la balise <h2> avec la moyenne calculée
    h2Element.textContent = 'La Moyenne de la douleur : ' + averagePainLevel.toFixed(2);

    // Fonction pour calculer la moyenne
    function calculateAverage(values) {
        if (values.length === 0) {
            return 0;
        }
        var sum = values.reduce((acc, value) => acc + value, 0);
        return sum / values.length;
    }
</script>

<br><br><br><br><br>

		<div class="cards">
		    <div class="card red">
			    <p class="tip">Symptoms</p>
			    <p class="second-text" style="color:black;">
				        <% 
				           String[] symptoms = (String[]) request.getAttribute("prefer");
				           if (symptoms != null) {
				               for (String sym : symptoms) {
				                   out.println(sym);
				                   out.println(" - " );
				               }
				           }
				        %>
                </p>
       </div>
		    
		    
		    
		    <div class="card blue">
		        <p class="tip">What makes the pain worse?</p>
		        <p class="second-text" style="color:black;">
				        <% 
				           String[] factorsWorseningPain = (String[]) request.getAttribute("work");
				           if (symptoms != null) {
				               for (String wo : factorsWorseningPain) {
				                   out.println(wo);
				                   out.println(" - " );
				               }
				           }
				        %>
                </p>
		    </div>
		    <div class="card green">
		        <p class="tip">Feelings</p>
		        <p class="second-text" style="color:black;">
				        <% 
				           String[] feelings = (String[]) request.getAttribute("size");
				           if (feelings != null) {
				               for (String feeling : feelings) {
				                   out.println(feeling);
				                   out.println(" - " );
				               }
				           }
				        %>
                </p>
		    </div>
		</div>


<footer>
    <div class="footer-wrappr section-bg3" data-background="assets/img/gallery/footer-bg.png">
        <div class="footer-area footer-padding ">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-xl-8 col-lg-8 col-md-6 col-sm-12">
                        <div class="single-footer-caption mb-50">
                            <!-- logo -->
                            <div class="footer-logo mb-25">
                                <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                            </div>
                            <div class="header-area">
                                <div class="main-header main-header2">
                                    <div class="menu-main d-flex align-items-center justify-content-start">
                                        <!-- Main-menu -->
                                        <div class="main-menu main-menu2">
                                            <nav> 
                                                <ul>
                                                    <li><a href="index.html">Home</a></li>
                                                    <li><a href="index.html">Endometriosis</a></li>
                                                    <li><a href="about.html">News</a></li>
                                                    <li><a href="services.html">Services</a></li>
                                                    <li><a href="blog.html">Community</a></li>
                                                    <li><a href="contact.html">Contact</a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>  
                                </div>
                            </div>
                            <!-- social -->
                            <div class="footer-social mt-50">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                        <div class="single-footer-caption">
                            <div class="footer-tittle mb-50" style="text-align: center;">
                                <h4>Get in touch</h4>
                            </div>
                            <!-- Form -->
                            <div class="footer-form">
                                <div id="mc_embed_signup">
                                    <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative mail_part" novalidate="true">
                                        <input type="text" name="message"  placeholder=" Message " class="placeholder hide-on-focus" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Message'">
                                        <div class="form-icon">
                                            <button type="submit" name="submit" id="newsletter-submit" class="email_icon newsletter-submit button-contactForm">
                                                Contact us
                                            </button>
                                        </div>
                                        <div class="mt-10 info"></div>
                                    </form>
                                </div>
                            </div>
                            <div class="footer-tittle">
                                <div class="footer-pera">
                                    <p></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer-bottom area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row">
                        <div class="col-xl-10 ">
                            <div class="footer-copy-right">                    
                              Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
</footer>
<!-- Scroll Up -->
<div id="back-top" >
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

<!-- JS here -->

<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="./assets/js/popper.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="./assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="./assets/js/wow.min.js"></script>
<script src="./assets/js/animated.headline.js"></script>
<script src="./assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="./assets/js/gijgo.min.js"></script>
<!-- Nice-select, sticky -->
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.sticky.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="./assets/js/jquery.counterup.min.js"></script>
<script src="./assets/js/waypoints.min.js"></script>
<script src="./assets/js/jquery.countdown.min.js"></script>
<script src="./assets/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="./assets/js/contact.js"></script>
<script src="./assets/js/jquery.form.js"></script>
<script src="./assets/js/jquery.validate.min.js"></script>
<script src="./assets/js/mail-script.js"></script>
<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->	
<script src="./assets/js/plugins.js"></script>
<script src="./assets/js/main.js"></script>


</body>
</html>

