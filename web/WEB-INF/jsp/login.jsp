<%-- 
    Document   : login
    Created on : Mar 15, 2018, 9:10:48 AM
    Author     : xmore mmohz
--%>

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
      <jsp:include page="WEB-INF/jsp/HeaderNavigation.jsp"/>		
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
						<img src="assets/img/.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2><span>Secure & Cloud based Elections</span></h2>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
								<p>Your can vote from any location or any device</p>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
								<form class="form-inline">
									 <fieldset>
                                                                        <legend>
                                                                            E-VOTE
                                                                        </legend>
                                                                        <p>
                                                                            Please enter your username Id and national Id as your password 
                                                                        </p>
                                                                         ${Msg}
                                                                        <div class="form-group">
                                                                            <div class="col-xs-12">
                                                                           <span class="input-icon col-xs-12">
                                                                                <input type="text" class="form-control " autocomplete="off" name="username" id ="username" placeholder="Username">

                                                                            </span>
                                                                            </div>
                                                                        </div>
                                                                        <br/>
                                                                        <br/>
                                                                        <br/>
                                                                        <div class="form-group">
                                                                            <div class="col-xs-12">
                                                                                <span class="input-icon col-xs-12">
                                                                                    <input type="password" class="form-control " autocomplete="off" name="password" id="password" placeholder="Password">

                                                                                 </span>
                                                                            </div>
                                                                        </div>

                                                                        <br/>
                                                                        <br/>
                                                                        <br/>
                                                                        <div class="form-group">
                                                                            <div class="col-xs-12">
                                                                                <button type="submit" class="btn btn-primary pull-right">
                                                                                    Login <i class="fa fa-arrow-circle-right"></i>
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </fieldset>
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
