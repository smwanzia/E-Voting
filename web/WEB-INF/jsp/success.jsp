<%-- 
    Document   : success
    Created on : Mar 23, 2018, 9:27:15 PM
    Author     : xmore mmohz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>success</title>
        
    <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/animate.css">
	<link rel="stylesheet" href="assets/css/overwrite.css">
	<link href="assets/css/animate.min.css" rel="stylesheet"> 
	<link href="assets/css/style.css" rel="stylesheet" />	
        <link href="assets/css/wizard.css" rel="stylesheet" />	
    </head>
    
    <style>
        .success h1{
            color: #3e8f3e;
            text-align: center;
            padding-bottom: : 27px;
            font-size: 24px;
        }
    </style>
    <body>
      <jsp:include page="HeaderNavigation.jsp"/>
      <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">	
            <div class="container-fluid">
                <div class="row">
                    <div clas="col-md-12">
                        <div class="success" style="margin-top: 130px;">
                              <h3 style="text-align: center; font-size: 30px">SUCCESS <i class="fa fa-check-circle-o"></i></h3>
                                <h3 style="text-align: center;color:green; font-size: 26px">Congratulation ! <i class="fa fa-check-circle-o"></i></h3>
                              <h1>${success}</h1>
                        </div>
                        <a href="profile" class="btn btn-success btn-lg">View Results</a>
                    </div>
                </div>
                <footer style="height: 400px"> 
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
        <script src="assets/js/wizard.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>
            </div>
      </div>
    </body>
</html>
