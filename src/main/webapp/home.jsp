<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.nio.charset.StandardCharsets" %>

<!doctype html>

<html class="no-js" lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
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
						           <li ><a  href="AllBlogs">Community</a></li>
                                            <li><a href="contact.jsp">Contact</a></li>   
                                             <li>  
												            <a><i class="bi bi-person-lines-fill"></i></a>   
												            <ul class="submenu">
			                                                    <li><a href="Profile"><i class="bi bi-person-circle"></i> edit-Profile</a></li>
			                                                    <li><a href=""><i class="bi bi-bell-fill"></i> Notification</a></li>
			                                                    <li><a href="calendriers.jsp"><i class="bi bi-calendar-heart"></i> Calendar</a></li>
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
							                <c:choose>
												    <c:when test="${not empty sessionuser.image}">
												        	<img   src="data:image/png;base64,${Base64.getEncoder().encodeToString(sessionuser.image)}" alt="Image de l'utilisateur">
												    </c:when>
												    <c:otherwise>
												 		<img src="assets/img/icon/profile-par-defaut.webp" alt="profile par defaut">
												    </c:otherwise>
												</c:choose>
							            </div>
							            <div class="handle">
							              
							                <p style="width:100%; "><a href="Profile"> ${sessionuser.name} </a></p>
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
    
    <main>
        <!--? Slider Area Start-->
         <div class="slider-area " style="min-height: 100vh; w">
            <div class="slider-active dot-style"  style="min-height: 100vh;">
            
                <div class="single-slider d-flex align-items-center slider-height">
                    <div class="container">
                        <div class="row align-items-center">
                            <div style="display: flex; gap: 70PX; flex-direction: row; align-items: center; justify-content: space-between;" >
                                <div style="gap: -90px; position: relative; top: -230px; width: 60%; " class="hero-wrapper">
                                    <!-- Video icon -->
                                    <div class="video-icon">
                                        <a class="popup-video btn-icon" href="https://www.youtube.com/watch?v=NXQUl9aYcOY" data-animation="bounceIn" data-delay=".4s">
                                            <i class="fas fa-play"></i>
                                        </a>
                                    </div>
                                    <div class="hero__caption" >
                                        <h1 data-animation="fadeInUp" data-delay=".3s" style="font-size: 42px;">Health is wealth  keep it healthy </h1>
                                        <p data-animation="fadeInUp" data-delay=".6s">Learn all about endometriosis </p>
                                        <nav> 
                                        <ul id="navigation">
                                        <li>
                                             <ul class="submenu" >
	                                                    <li > <a style="width: 250px;" href="test_endo.jsp" class="btn header-btn">Start your test now !</a></li> 
	                                                     <li > <a style="width: 250px;" href="EvolutionPain" class="btn header-btn">Evolution of Pain !</a></li>
	                                                       <li > <a style="width: 250px;" href=suivi.jsp class="btn header-btn">Evolution Test  !</a></li>
	                                                    
	                                             </ul>
                                        </li>
                                        </ul>
                                        </nav>
                                    </div>
                                </div>
                                <div style="display: flex; flex-direction: row; gap: 20px; align-items: center;  position: relative; top: -230px; 
                                border: 2px solid #ff0057; border-radius: 8px; padding: 15px; right: 80px;" >
                                    <div>
                                        <div><h2>Dernier score</h2></div>
                                        <div><p>Mettez à jour votre score régulièrement</p></div>
                                    </div>
                                        <!--ring div starts here-->
                                    <div class="ring">
                                        <i style="--clr:#00ff0a;"></i>
                                        <i style="--clr:#ff0057;"></i>
                                        <i style="--clr:#fffd44;"></i>
                                        <h2 style="color: #ff0057;">${resultat.resultatTest}</h2>
                                    </div>
                                         <!--ring div ends here-->
                                         <style>
                                                        .ring {
                                                        position: relative;
                                                        width: 100px;
                                                        height: 100px;
                                                        display: flex;
                                                        justify-content: center;
                                                        align-items: center; 
                                                        }
                                                        .ring i {
                                                        position: absolute;
                                                        inset: 0;
                                                        border: 2px solid #ff0057;
                                                        transition: 0.5s;
                                                        }
                                                        .ring i:nth-child(1) {
                                                        border-radius: 38% 62% 63% 37% / 41% 44% 56% 59%;
                                                        animation: animate 6s linear infinite;
                                                        }
                                                        .ring i:nth-child(2) {
                                                        border-radius: 41% 44% 56% 59%/38% 62% 63% 37%;
                                                        animation: animate 4s linear infinite;
                                                        }
                                                        .ring i:nth-child(3) {
                                                        border-radius: 41% 44% 56% 59%/38% 62% 63% 37%;
                                                        animation: animate2 10s linear infinite;
                                                        }
                                                        .ring:hover i {
                                                        border: 6px solid var(--clr);
                                                        filter: drop-shadow(0 0 20px var(--clr));
                                                        }
                                                        @keyframes animate {
                                                        0% {
                                                            transform: rotate(0deg);
                                                        }
                                                        100% {
                                                            transform: rotate(360deg);
                                                        }
                                                        }
                                                        @keyframes animate2 {
                                                        0% {
                                                            transform: rotate(360deg);
                                                        }
                                                        100% {
                                                            transform: rotate(0deg);
                                                        }
                                                        }
                                         </style>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>        
            </div>
        </div>

<!-- Slider Area End -->
<!--? About-2 Area Start -->
<div class="about-area2 section-padding40">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-7 col-md-12">
                <!-- about-img -->
                <div class="about-img ">
                    <img src="assets/img/gallery/image1.jpg" alt="" style="border-radius: 50%;overflow: hidden;width: 80%;">
                </div>
            </div>
            <div class="col-lg-5 col-md-12">
                <div class="about-caption">
                    <!-- Section Tittle -->
                    <div class="section-tittle mb-35">
                        <h2>Create a healthy 
                        life you love!</h2>
                    </div>
                    <p class="pera-top mb-40">Almost before we knew it, we had left the ground</p>
                    <p class="pera-bottom mb-30">Praesent porttitor, nulla vitae posuere iaculis, arcu nisl
                        dignissim dolor, a pretium mi sem ut ipsum. Fusce
                    fermentum. Pellentesque libero tortor, tincidunt et.</p>
                    <div class="icon-about">
                     
                 </div>
             </div>
         </div>
     </div>
 </div>
</div>
<!-- About-2 Area End -->
<section class="wantToWork-area section-bg3" data-background="assets/img/gallery/section_bg01.png">
    <div class="container">
        <div class="wants-wrapper w-padding2">
            <div class="row align-items-center justify-content-between">
                <div class="col-xl-7 col-lg-9 col-md-8">
                    <div class="wantToWork-caption wantToWork-caption2">
                        <h2>Happy mind <br>healthy life</h2>
                        <p><br></p>
                    </div>
                </div>
                <div class="col-xl-2 col-lg-3 col-md-4">
                    <a href="services.html" class="btn f-right sm-left">Take a Service</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--? Services Area Start -->
<div class="service-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="single-cat text-center mb-50">
                    <div class="cat-icon">
                        <img src="assets/img/icon/services1.svg" alt="">
                    </div>
                    <div class="cat-cap">
                        <h5><a href="services.html">Physical Activity</a></h5>
                        <p>Praesent porttitor, nulla vitae  posuere iaculis, arcu nisl dignissim dolor, a pretium mi  sem ut ipsum.</p>
                        <a href="services.html" class="plus-btn"><i class="ti-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="single-cat text-center mb-50">
                    <div class="cat-icon">
                        <img src="assets/img/icon/services2.svg" alt="">
                    </div>
                    <div class="cat-cap">
                        <h5><a href="services.html">Physical Activity</a></h5>
                        <p>Praesent porttitor, nulla vitae  posuere iaculis, arcu nisl dignissim dolor, a pretium mi  sem ut ipsum.</p>
                        <a href="services.html" class="plus-btn"><i class="ti-plus"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="single-cat text-center mb-50">
                    <div class="cat-icon">
                        <img src="assets/img/icon/services3.svg" alt="">
                    </div>
                    <div class="cat-cap">
                        <h5><a href="services.html">Physical Activity</a></h5>
                        <p>Praesent porttitor, nulla vitae  posuere iaculis, arcu nisl dignissim dolor, a pretium mi  sem ut ipsum.</p>
                        <a href="services.html" class="plus-btn"><i class="ti-plus"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Services Area End -->


 
<!--? Blog Area Start -->
<section class="home-blog-area section-padding30">
    <div class="container">
        <!-- Section Title -->
        <div class="row justify-content-center">
            <div class="col-lg-7 col-md-9 col-sm-10">
                <div class="section-tittle text-center mb-100">
                    <h2>Latest News</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="home-blog-single mb-40">
                    <div class="blog-img-cap">
                        <div class="blog-img">
                            <img src="assets/img/gallery/blog1.png" alt="">
                        </div>
                        <div class="blog-cap">
                            <h3><a href="blog_details.html">Title of news</a></h3>
                            <P>Small description</P>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="home-blog-single mb-40">
                    <div class="blog-img-cap">
                        <div class="blog-img">
                            <img src="assets/img/gallery/blog2.png" alt="">
                        </div>
                        <div class="blog-cap">
                            <h3><a href="blog_details.html">Title of news</a></h3>
                            <P>Small description</P>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="home-blog-single mb-40">
                    <div class="blog-img-cap">
                        <div class="blog-img">
                            <img src="assets/img/gallery/blog3.png" alt="">
                        </div>
                        <div class="blog-cap">
                            <h3><a href="blog_details.html">Title of news</a></h3>
                            <P>Small description</P>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Area End -->
<!--? About Law Start-->
<section class="about-low-area mt-30">
    <div class="container">
        <div class="about-cap-wrapper">
            <div class="row">
                <div class="col-xl-5  col-lg-6 col-md-10 offset-xl-1">
                    <div class="about-caption mb-50">
                        <!-- Section Tittle -->
                        <div class="section-tittle mb-35">
                            <h2>100% satisfaction guaranteed.</h2>
                        </div>
                        <p>Almost before we knew it, we had left the ground</p>
                        <a href="about.html" class="border-btn">Make a test</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <!-- about-img -->
                    <div class="about-img">
                        <div class="about-font-img">
                            <img src="assets/img/gallery/image_footer.jpg" alt="" style="border-bottom-left-radius: 25%;;overflow: hidden;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About Law End-->
</main>



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