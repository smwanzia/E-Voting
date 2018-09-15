<%-- 
    Document   : profile
    Created on : Apr 2, 2018, 2:37:04 PM
    Author     : xmore mmohz
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/css/animate.css">
	<link rel="stylesheet" href="assets/css/overwrite.css">
	<link href="assets/css/animate.min.css" rel="stylesheet"> 
	<link href="assets/css/style.css" rel="stylesheet" />	
        <link href="assets/css/wizard.css" rel="stylesheet" />	
        
        
        <style>
    .pic
{
     margin-top:50px; 
     width:120px;
     margin-left:50px;
     margin-bottom:-60px;
}
.name
{
    position:absolute;
    padding-left:200px;
    font-size:30px;
}

.dropdown
{
    position:absolute;
}

.change
{
 position:relative; 
 bottom:20px;
 padding:1px;
 //color:white;
 text-decoration:none;
}


.change:hover
{
 text-decoration:none;
 background-color:black;
 //color:white;
}
.panel-green{
     background:#9fcf67 !important;
}
.btn-default:hover{
    background-color:#efefef;
    color:#444;
    border-color: #efefef;
}
</style>
    </head>
    <body style="background-color:#f7f7f7 !important;">
  <jsp:include page="HeaderNavigation.jsp"/>
  <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">	
            <div class="container-fluid">
                <div class="container" style="margin-top: 85px;">
                    <div class="row">
                       
                        <!--<div class="col-md-2">
                            <ul class="nav nav-pills nav-stacked well">
                              <li  class="active"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                              <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                              <li><a href="#"><i class="fa fa-sign-out"></i> Logout</a></li>
                            </ul>
                        </div>-->
                    <div class="col-md-10 col-md-offset-1">
                       <!-- <div class="panel" style="margin-top: -62px;">
                                <img class="pic img-circle" src="assets/img/team/1.png" alt="...">
                                <div class="name"><small>Simon Mumo</small></div>
                                <a href="#" class="btn btn-xs btn-sm btn-default pull-right" style="margin:62px;">
                                    <span class=""></span>$//{voteduser}<i class="fa fa-check-square"></i></a>
                            </div>-->

                <br><br><br>
                <!--<ul class="nav nav-tabs" id="myTab"  style="margin-top:-93px;backgroun-color:#666666">
                    <li class="active"><a href="#results" data-toggle="tab"><i class="fa fa-check-square"></i> View Results</a></li>
                    <li><a href="#sent" data-toggle="tab"><i class="fa fa-user"></i> Profile</a></li>
                   <!-- <li><a href="#assignment" data-toggle="tab"><i class="fa fa-file-text-o"></i>Mp</a></li>
                    <li><a href="#event" data-toggle="tab"><i class="fa fa-clock-o"></i> Senator</a></li>-->
                <!--</ul>-->

                <div class="tab-content">
                  <div class="tab-pane active" id="results">
                        <div class="btn-toolbar  well-sm" role="toolbar"  style="margin:0px;">
                             <div class="row">       

                                    <div class="col-md-12 col-sm-12" id="Result-Center" style="margin-top:-99px;">
                                        <div class="row">
                                            <div class="col-md-12">
                                             <h3 style="font-size: 24px;color: #000;font-weight: bold">Result Summary</h3>
                                                <table class="table table-bordered table-hover table-condensed" id="datTable" width="100%" cellspacing="1">
                                                     <thead>
                                                       <tr>
                                                            <th widh="20%">Aspirants</th>
                                                            <th>Contesting Position</th>
                                                            <th>Total Votes</th>

                                                        </tr>
                                                     </thead>
                                                     <tbody>
                                                         <c:forEach var="vote" items="${votedcand}">
                                                             <tr>
                                                                   <td>${vote.firstname} ${vote.lastname}</td>
                                                                    <td>${vote.position}</td>
                                                                   <td>${vote.totalvotes}</td>

                                                             </tr>
                                                         </c:forEach>
                                                     </tbody>
                                                 </table>
                                            </div>
                                        </div>
                                   
                                <div class="row">
                                    <div class="col-md-12 col-lg-12 col-xs-6 col-sm-6">
                                     <div class="col-md-6">
                                         <table class="table table-bordered table-hover table-condensed" id="datTable" width="100%" cellspacing="0">
                                              <thead>
                                                <tr>
                                                     <th>TOTAL VOTE CASTED</th>

                                                </tr>
                                              </thead>
                                              <tbody>
                                                  <c:forEach var="vote" items="${totalkura}">
                                                      <tr>
                                                            <td>${vote.totalvotes} votes</td>
                                                      </tr>
                                                  </c:forEach>
                                              </tbody>
                                           </table>
                                      </div>
                                     
                             </div>

                            </div>
                        </div>

                        <!-- <div class="col-md-3">
                               <div class="panel panel-green bg-gray-active mypanel" style="margin-top: -50px;">
                                    <div class="panel-heading">
                                        <h4 class="panel-title myh1">Filter by Position</h4>
                                    </div>
                                    <div class="panel-body bg-gray-active">
                                        <form>
                                            <div class="form-group">
                                                <select class="form-control select selected" id="post_input" name="position">
                                                   <%-- <c:forEach var="post" items="{myposi}">
                                                        <option value="$//{post.positionid}">$//{post. positionname}</option>
                                                    </c:forEach>--%>
                                                </select>
                                             </div>
                                            <a class="btn btn-xs btn-default pull-right mybtn" id="GettResultbtn" type="button">Get
                                            </a>

                                        </form>
                                    </div>
                                </div>

                                </div>-->

                           </div>

                       </div>
                   </div>
                   <div class="tab-pane" id="sent">
                       <h1>My Profile</h1>
                   </div>
               </div>

            </div>
           </div>
        </div>
    </div>
  </div>
 <footer style="position: fixed-bottom">
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
				&copy; 2018 <a target="_blank" href="#" title=""></a>. All Rights Reserved.
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


        <script>
            $(function(){
                 $("#GettResultbtn").click(function(){
                    var position=$("#post_input").val();
                    var loader=$("#loader").show();
                    $("#Result-Center").html(loader);
                    $("#Result-Center").load('AjaxSelectWinnerByPosition?position='+position);
                })
                
            })
        </script>
    </body>
</html>
