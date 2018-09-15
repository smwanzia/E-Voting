<%-- 
    Document   : login
    Created on : Mar 18, 2018, 10:45:10 PM
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
  
  <style>
    .main-login {
        margin-top: 146px;
        //margin-top: 65px;
        position: relative;
      }
      @media (max-width: 991px) {
        .main-login {
          margin-top: 65px;
        }
      }
      .main-login .logo {
        padding: 0 10px;
      }
      .main-login .box-login, .main-login .box-forgot, .main-login .box-register {
       // background: #FFFFFF;
        background: #eee;
        border-radius: 5px;
        overflow: hidden;
        padding: 15px;
        margin: 15px 0 65px 0;
      }
      .main-login .form fieldset {
        border: none;
        margin: 0;
        padding: 10px 0 0;
      }
      .main-login a.forgot {
        color: #909090;
        font-size: 12px;
        position: absolute;
        right: 10px;
        text-shadow: 1px 1px 1px #FFFFFF;
        top: 9px;
      }
      .loginform{
           //margin-top: -20px;
           //top: 26px;
          // background: #b3daed;
         background: #eee;
           height: 250px;
          // border-radius: 25px;
      }
      .help-block{
          font-size: 15px !important;
      }
  </style>
  
  <body>	
     		
    
 <div class="container container-fluid " >
   
        <div class="row">
             <div class="col-md-12">
              
                    <div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
                       <div class="box-login text-dark">
                           <h3 style="text-align:center;margin:30px;font-weight: bold;font-size: 30px;">E-VOTING</h3>
                           <div class="loginform">
                            <form class="" method="post" action="login" id="loginform">

                                   <!-- <p style="font-size: 14px !important;">
                                        Please enter your username  and national Id as your password 
                                    </p>-->
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
                                     <div class="form-group">
                                        <div class="col-xs-12">
                                            <span class="input-icon col-xs-12">
                                                <input type="password" class="form-control " autocomplete="off" name="password" id="password" placeholder="Password">

                                             </span>
                                        </div>
                                    </div>
                                   <br/>

                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <button type="submit" class="btn btn-primary pull-right">
                                                Login <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>
                                    </div>

                            </form>
                           </div>
                       </div>
                </div>
                
            </div>
    
      </div>
 </div>
      <div class="row" style="background: #f4f4f4;display: none">
          <div class="col-md-12" id="footer">
                <footer>
                    <div class="social-icon">
                                <div class="container-fluid">
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
          </div>
        </div>
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
        
        
        <script src="assets/js/jquery.validate.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        
    $(document).ready(function () {
        $("#loginform").validate({
            rules: {
                //name: "required",
               username: {
                    required: true,
                    minlength:4
                    //email: true
                },
              
               password: {
                    required: true,
                   // minlength:10,
                   // number:true
                     //email: true
                },
              
                
                
            },
             messages: {
                
                username: {
                   required: "please specify your username",
                },
                 password: {
                   required: "please specify your password",
                },
             
            },
            
            highlight: function (element) {
                $(element).closest('.help-block').removeClass('valid');
                // display OK icon
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error').find('.symbol').removeClass('ok').addClass('required');
                // add the Bootstrap error class to the control group
            },
            unhighlight: function (element) {
                $(element).closest('.form-group').removeClass('has-error');
            },
            success: function (label, element) {
                label.addClass('help-block valid');
                // mark the current input as valid and display OK icon
                $(element).closest('.form-group').removeClass('has-error').addClass('has-success').find('.symbol').removeClass('required').addClass('ok');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function (error, element) {
                if (element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            },
        });
    });

        </script>


  </body>
</html>

