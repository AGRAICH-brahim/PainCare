<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">


<title>Community</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/community.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
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
							              
							                <p class=""><a href="Profile"> ${user.name}   </a></p>
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
										<h1 data-animation="fadeInUp" data-delay=".3s">Community space </h1>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>    
			</div>
		</div>
		<!-- Slider Area End -->
<div class="container bootdey"> 
<div class="col-md-12 bootstrap snippets">
<div style="display : flex; width:100%; justify-content: end;">
 <ul class="submenu" >
          <li> <a href="addBlog" class="btn header-btn">Publier !</a></li>
	                                                    
 </ul>
</div>
<c:forEach var="blog" items="${blogs}">
<div class="panel">
	<div class="panel-body">
<!--  Utilisteur 1 -->
			<div class="media-block">
				<a class="media-left" href="#"><img class="img-circle img-sm" alt="Profile Picture" src="assets/img/icon/profile-par-defaut.webp"></a>
				<div class="media-body">
				<div class="mar-btm">
				<a href="#" style="font-size: 14px;" class="btn-link text-semibold media-heading box-inline">${blog.username}</a>
				<p class="text-muted text-sm"><i class="fa fa-mobile fa-lg"></i> - ${ blog.date }</p>
				</div>
					<div style="display : flex; flex-diretion: row; gap:30px;">
						<div>
								<img class="img-responsive thumbnail" style="width: 350px;" src="data:image/png;base64,${Base64.getEncoder().encodeToString(blog.image)}" alt="Image">
						</div>
						<div>
								<h2>${blog.title}</h2>
				        		<p>${blog.description}</p>
		        		</div>
						
					</div>	
					<style>
					 form {
        display: flex;
        flex-direction: row;      
        background-color: #fff;
        gap: 15px;
    }
					    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        padding: 5px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    input[type="hidden"] {
        display: none; /* Masquer le champ "hidden" si nécessaire */
    }</style>
				<div class="pad-ver" >
					 	<form action="AddCommentaire"  method="post">
					    		 <input type="hidden" name="blogid" value="${blog.id }" />
					            <input type="text" name="commentaire_saisie" placeholder="Saisir un comment"  />
					            <input type="submit" value="Comment"> 
					    </form>
				</div>
				<br>
				<h4>Comments : </h4>
				<hr>
				
				 <c:forEach var="commentaire" items="${commentaires}">
				 <c:if test="${commentaire.blog_id == blog.id}">
							<div>
								<div class="media-block">
								<a class="media-left" href="#"><img class="img-circle img-sm" alt="Profile Picture" src="assets/img/icon/profile-par-defaut.webp"></a>
								<div class="media-body">
								<div class="mar-btm">
								<a href="#" style="font-size: 14px;" class="btn-link text-semibold media-heading box-inline">${commentaire.userName}</a>
								<p class="text-muted text-sm"><i class="fa fa-mobile fa-lg"></i>  ${commentaire.date}</p>
								</div>
								<div style="display : flex; flex-diretion: row;  justify-content: space-between;">
								<div>
								<p>${commentaire.content} </p>
								</div>
								<div class="pad-ver">
								<c:if test="${commentaire.user_id == user.getIdUser()}">
												<form action="DeleteCommentaire"  method="post">
											    		 <input type="hidden" name="commentid" value="${commentaire.id }" />
											            <input type="submit" value="Supprimer"> 
											    </form>
									</c:if>
								</div>
								</div>
								<hr>
								</div>
								</div>
							</div>
							</c:if>
				   </c:forEach>
				</div>
			</div>
   </div>
</div>

</c:forEach>

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>


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