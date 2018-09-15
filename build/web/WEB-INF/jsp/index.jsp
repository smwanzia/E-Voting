<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>E-Vote</title>

    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/animate.css">
	<link rel="stylesheet" href="assets/css/overwrite.css">
	<link href="assets/css/animate.min.css" rel="stylesheet"> 
	<link href="assets/css/style.css" rel="stylesheet" />	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>	
	<header id="header">
        <nav class="navbar navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">E-VOTE</a>
                </div>				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class=""><a href="#header">Home</a></li>
                        <li class=""><a href="login.jsp">Login</a></li>
                       <!-- <li><a href="#gallery">Gallery</a></li>
                        <li><a href="#pricing">Price & Plan</a></li>
                        <li><a href="#our-team">Our Team</a></li> 
                        <li><a href="#contact">Contact</a></li>  -->                      
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->	
	<div class="slider">		
		<div id="about-slider">
			<div id="carousel-slider" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators visible-xs">
					<li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-slider" data-slide-to="1"></li>
					<li data-target="#carousel-slider" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner">
					<div class="item active">						
						<img src="assets/img/7.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2><span>Secure & Cloud based Elections</span></h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
								<p>Your can vote from any location or any device</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="Live Demo" class="btn btn-primary btn-lg" required="required">Login</button>
									</div>
									<!--<div class="form-group">
										<button type="getnow" name="Get Now" class="btn btn-primary btn-lg" required="required">Get Now</button>
									</div>-->
								</form>
							</div>
						</div>
				    </div>
			
				    <div class="item">
						<img src="assets/img/6.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.0s">								
								<h2>Vote from any device </h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.3s">								
								<p>Exercise your voting  right,Elect your future leader </p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.6s">								
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="purchase" class="btn btn-primary btn-lg" required="required">Login</button>
									</div>
									<!--<div class="form-group">
										<button type="getnow" name="subscribe" class="btn btn-primary btn-lg" required="required">Get Now</button>
									</div>-->
								</form>
							</div>
						</div>
				    </div> 
				    <div class="item">
						<img src="assets/img/1.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2>Your vote count</h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
								<p>Enjoy your democratic right</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
								<form class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="purchase" class="btn btn-primary btn-lg" required="required">Login</button>
									</div>
									<!--<div class="form-group">
										<button type="getnow" name="subscribe" class="btn btn-primary btn-lg" required="required">Get Now</button>
									</div>-->
								</form>
							</div>
						</div>
				    </div> 
				</div>
				
				<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
					<i class="fa fa-angle-left"></i> 
				</a>
				
				<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
					<i class="fa fa-angle-right"></i> 
				</a>
			</div> <!--/#carousel-slider-->
		</div><!--/#about-slider-->
	</div><!--/#slider-->
	
	<!--<div id="feature">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>Features</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Lorem ipsum dolor sit<br>amet consectetur adipisicing elit</p>
				</div>
				<div class="col-md-3 wow fadeInRight" data-wow-offset="0" data-wow-delay="0.3s">
					<div class="text-center">
						<div class="hi-icon-wrap hi-icon-effect">
							<i class="fa fa-laptop"></i>						
							<h2>Fully Responsive</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 wow fadeInRight" data-wow-offset="0" data-wow-delay="0.3s">
					<div class="text-center">
						<div class="hi-icon-wrap hi-icon-effect">
							<i class="fa fa-heart-o"></i>
							<h2>Retina Ready</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 wow fadeInLeft" data-wow-offset="0" data-wow-delay="0.3s">
					<div class="text-center">
						<div class="hi-icon-wrap hi-icon-effect">
							<i class="fa fa-cloud"></i>
							<h2>Easily Customize</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 wow fadeInLeft" data-wow-offset="0" data-wow-delay="0.3s">
					<div class="text-center">
						<div class="hi-icon-wrap hi-icon-effect">
							<i class="fa fa-camera"></i>
							<h2>Quality Code</h2>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>-->
	
	<!--<div id="gallery">
		<div class="container">
			<div class="text-center">
				<h3>Gallery</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Lorem ipsum dolor sit<br>amet consectetur adipisicing elit</p>
			</div>
			<div class="row">
				<figure class="effect-chico">						
					<div class="col-md-3 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
						<a href="img/work/1.jpg" class="flipLightBox">
						<img src="img/work/1.jpg" class="img-responsive" alt="">
						</a>						
					</div>
				</figure>
				<figure class="effect-chico">
					<div class="col-md-3 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
						<a href="img/work/2.jpg" class="flipLightBox">
						<img src="img/work/2.jpg" class="img-responsive" alt="">
						</a>
					</div>
				</figure>	
				<figure class="effect-chico">
					<div class="col-md-3 wow fadeInDown" data-wow-offset="0" data-wow-delay="0.3s">
						<a href="img/work/3.jpg" class="flipLightBox">
						<img src="img/work/3.jpg" class="img-responsive" alt="">
						</a>
					</div>
				</figure>
				<figure class="effect-chico">
					<div class="col-md-3 wow fadeInDown" data-wow-offset="0" data-wow-delay="0.3s">
						<a href="img/work/4.jpg" class="flipLightBox">
						<img src="img/work/4.jpg" class="img-responsive" alt="">
						</a>
					</div>	
				</figure>
			</div>
		</div>
		<div class="gallery">
			<div class="container">
				<div class="row">
					<figure class="effect-chico">
						<div class="col-md-3 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
							<a href="img/work/5.jpg" class="flipLightBox">
							<img src="img/work/5.jpg" class="img-responsive" alt="">
							</a>
						</div>
					</figure>	
					<figure class="effect-chico">
						<div class="col-md-3 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
							<a href="img/work/6.jpg" class="flipLightBox">
							<img src="img/work/6.jpg" class="img-responsive" alt="">
							</a>
						</div>
					</figure>	
					<figure class="effect-chico">
						<div class="col-md-3 wow fadeInDown" data-wow-offset="0" data-wow-delay="0.3s">
							<a href="img/work/7.jpg" class="flipLightBox">
							<img src="img/work/7.jpg" class="img-responsive" alt="">
							</a>
						</div>
					</figure>	
					<figure class="effect-chico">
						<div class="col-md-3 wow fadeInDown" data-wow-offset="0" data-wow-delay="0.3s">
							<a href="img/work/8.jpg" class="flipLightBox">
							<img src="img/work/8.jpg" class="img-responsive" alt="">
							</a>
						</div>
					</figure>
				</div>
			</div>
		</div>
	</div>--><!--/#gallery-->
	
	<!--<div class="parallax-window">
		<div class="col-md-6 col-md-offset-3">
			<div class="text-center">
				<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.2s">
					<h2>Parallax Landing Page</h2>
				</div>
				<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.6s">
					<p>In a elit in lorem congue varius Sed nec arcu<br>
					ullamcorp-er tellus ut dignissim nisi risus non tortor.
					</p>
				</div>
			</div>
		</div>
		<div class="sub-parallax">
			<div class="text-center">
				<div class="col-md-12">
					<div class="wow bounceIn" data-wow-offset="0" data-wow-delay="0.9s">
						<form class="form-inline">
							<div class="form-group">
								<button type="purchase" name="purchase" class="btn btn-primary btn-lg" required="required">Purchase</button>
							</div>
							<div class="form-group">
								<button type="subscribe" name="subscribe" class="btn btn-primary btn-lg" required="required">Subscribe Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>--><!--/#parallax-window-->
	
	<!--<div id="pricing">
		<div class="container">
			<div class="text-center">
				<h3>Pricing Table</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br>
				et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			
			<div class="pricing-area text-center">
                <div class="row">
                    <div class="col-sm-4 plan price-one wow fadeInDown" data-wow-offset="0" data-wow-delay="0.2s">
                        <ul>
                            <li class="heading-one">
                                <h2>Start Up</h2>
                                <span>$6/Month</span>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-4 plan price-two wow fadeInDown" data-wow-offset="0" data-wow-delay="0.6s">
                        <ul>
                            <li class="heading-two">
                                <h2>Standard</h2>
                                <span>$12/Month</span>
                            </li>
                            <li>10 Gb Disk Space</li>
                            <li>2GB Dadicated Ram</li>
                            <li>20 Addon Domain</li>
                            <li>20 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-4 plan price-three wow fadeInDown" data-wow-offset="0" data-wow-delay="0.9s">
                        <img src="img/ri.png">
                        <ul>
                            <li class="heading-three">
                                <h2>Premium</h2>
                                <span>$24/Month</span>
                            </li>
                            <li>50 Gb Disk Space</li>
                            <li>8GB Dadicated Ram</li>
                            <li>Unlimited Addon Domain</li>
                            <li>Unlimited Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-3 plan price-four wow fadeInLeft">
                        <ul>
                            <li class="heading-four">
                                <h2>Basic</h2>
                                <span>$3/Month</span>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-3 plan price-five wow fadeInLeft">
                        <ul>
                            <li class="heading-five">
                                <h2>Standard</h2>
                                <span>$6/Month</span>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-3 plan price-six wow fadeInRight">
                         <img src="img/rib.png">
                        <ul>
                            <li class="heading-six">
                                <h2>Premium</h2>
                                <span>$12/Month</span>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-3 plan price-seven wow fadeInRight">
                        <ul>
                            <li class="heading-seven">
                                <h2>Developer</h2>
                                <span>$19/Month</span>
                            </li>
                            <li>5 Gb Disk Space</li>
                            <li>1GB Dadicated Ram</li>
                            <li>10 Addon Domain</li>
                            <li>10 Email Account</li>
                            <li>24/7 Support</li>
                            <li class="plan-action">
                                <a href="" class="btn btn-primary">Sign up</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div><!--/pricing-area-->			
		<!--</div>
	</div>--><!--/#pricing-->
	
	<!--<div id="our-team">
		<div class="container">
			<div class="text-center">
				<h3>Our Team</h3>
				<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Lorem ipsum dolor sit<br>amet consectetur adipisicing elit</p>
			</div>
			<div class="row">
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
					<div class="text-center">
						<img src="img/team/1.png" alt="">
						<h2>John Doe</h2>
						<h4>Founder & CEO</h4>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Fusce fermen tum neque a rutrum varius</p>
					</div>
				</div>
				<div class="col-md-4 wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
					<div class="text-center">
						<img src="img/team/2.png" alt="">
						<h2>John Doe</h2>
						<h4>Creative Director</h4>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Fusce fermen tum neque a rutrum varius</p>
					</div>
				</div>
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
					<div class="text-center">
						<img src="img/team/3.png" alt="">
						<h2>John Smith</h2>
						<h4>Creative Director</h4>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Fusce fermen tum neque a rutrum varius</p>
					</div>
				</div>	
			</div>
		</div>
		<div class="team">
			<div class="container">
				<div class="row">
					<div class="col-md-3 wow fadeInRight" data-wow-offset="0" data-wow-delay="0.3s">
						<div class="text-center">
							<img src="img/team/team1.jpg" class="img-responsive" alt="">
							<h2>John Doe</h2>
							<h4>Founder & CEO</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Fusce fermen tum neque a rutrum varius</p>
						</div>
					</div>
					<div class="col-md-3 wow fadeInRight" data-wow-offset="0" data-wow-delay="0.3s">
						<div class="text-center">
							<img src="img/team/team2.jpg" class="img-responsive" alt="">
							<h2>John Doe</h2>
							<h4>Creative Director</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Fusce fermen tum neque a rutrum varius</p>
						</div>
					</div>
					<div class="col-md-3 wow fadeInLeft" data-wow-offset="0" data-wow-delay="0.3s">
						<div class="text-center">
							<img src="img/team/team3.jpg" class="img-responsive" alt="">
							<h2>John Smith</h2>
							<h4>Creative Director</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Fusce fermen tum neque a rutrum varius</p>
						</div>
					</div>
					<div class="col-md-3 wow fadeInLeft" data-wow-offset="0" data-wow-delay="0.3s">
						<div class="text-center">
							<img src="img/team/team4.jpg" class="img-responsive" alt="">
							<h2>John Smith</h2>
							<h4>Creative Director</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit Fusce fermen tum neque a rutrum varius</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>--><!--/#our-team-->
	
	<footer>
		<!--<div id="contact">
			<div class="container">
				<div class="text-center">
					<h3>Contact Us</h3>
					<p>Fusce fermen tum neque a rutrum varius odio pede</p>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.2s">
						<h2>Contact us any time</h2>
						<p>In a elit in lorem congue varius. Sed nec arcu.
						Etiam sit amet augue.
						Fusce fermen tum neque a rutrum varius odio pede 
						ullamcorp-er tellus ut dignissim nisi risus non tortor.
						Aliquam mollis neque.</p>				
					</div>				
					
					<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.4s">
						<h2>Contact Info</h2>
						<ul>
							<li><i class="fa fa-home fa-2x"></i> Office # 38, Suite 54 Elizebth Street, Victoria State Newyork, USA 33026</li><hr>
							<li><i class="fa fa-phone fa-2x"></i> +38 000 129900</li><hr>
							<li><i class="fa fa-envelope fa-2x"></i> info@domain.net</li>
						</ul>
					</div>
					
					<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">					
						<form class="form-inline">
							<div class="form-group">
								<input type="name" class="form-control" id="exampleInputName" placeholder="name">							
							</div>
							<div class="form-group">							
								<input type="email" class="form-control" id="exampleInputEmail1" placeholder="email">
							</div>
						</form>
						
						<form>	
							<div class="form-group">
								<input type="subject" class="form-control" placeholder="Subject">
							</div>						
							<textarea class="form-control" rows="5"></textarea>							
							<div class="form-group">
								<button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button>
							</div>
						</form>
					</div>	
				</div>
			</div>
		</div>--><!--/#contact-->					
		<!--<div class="container">
			<div class="sub-footer">
				<div class="text-center">
					<div class="col-md-12">
						<form class="form-inline">
							<div class="form-group">
								<button type="purchase" name="purchase" class="btn btn-primary btn-lg" required="required">Enter Your Email</button>
							</div>
							<div class="form-group">
								<button type="subscribe" name="subscribe" class="btn btn-primary btn-lg" required="required">Subscribe Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>	-->		
		<div class="social-icon">
			<div class="container">
				<div class="col-md-6 col-md-offset-3">						
					<ul class="social-network">
						<li><a href="#" class="fb tool-tip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" class="twitter tool-tip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" class="gplus tool-tip" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#" class="linkedin tool-tip" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" class="ytube tool-tip" title="You Tube"><i class="fa fa-youtube-play"></i></a></li>
						<li><a href="#" class="dribbble tool-tip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
						<li><a href="#" class="pinterest tool-tip" title="Pinterest"><i class="fa fa-pinterest-square"></i></a></li>
					</ul>						
				</div>
			</div>
		</div>						
		<div class="text-center">
			<div class="copyright">
				&copy; 2018 <a target="_blank" href="#" title="">IEBC</a>. All Rights Reserved.
			</div>
            <!-- 
                All links in the footer should remain intact. 
                Licenseing information is available at: http://bootstraptaste.com/license/
                You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Bikin
            -->
		</div>									
	</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/js/jquery-2.1.1.min.js"></script>		
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/bootstrap.min.js"></script>	
	<script src="assets/js/parallax.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/jquery.easing.min.js"></script>
	<script type="assets/text/javascript" src="js/fliplightbox.min.js"></script>
	<script src="assets/js/functions.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>	
  </body>
</html>