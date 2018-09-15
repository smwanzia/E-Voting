<%-- 
    Document   : PollingStation
    Created on : Mar 18, 2018, 11:45:16 PM
    Author     : xmore mmohz
--%>


<%-- 
    Document   : login
    Created on : Mar 18, 2018, 10:45:10 PM
    Author     : xmore mmohz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link href="assets/css/wizard.css" rel="stylesheet" />	
   
  </head>
  
  <style>
      .loginform{
           margin-top: -20px;
           top: 26px;
           background: #b3daed;
           height: 344px;
           border-radius: 25px;
      }
      .help-block{
          font-size: 15px !important;
      }
      .candidates{
        background: #eee;
        height: 1000px;
        top: 99px;
        margin-top: 30px;
      }
      .wizard{
          margin-top: 67px;
      }
      .form-btn{
          margin-top: 34px;
      }
      .tab-pane h3{
          text-align: center;
          font-size: 28px;
          font-weight: bold;
          margin-top: -44px;
      }
      #checkbox{
          font-size: 30px;
          text-align: center;
          list-style: none;
          text-decoration: none;
       }
       .partysymbol{
           margin-top: 92px;
           // float: c;
            text-align: center;
            margin-left: 147px;
       }
       .input-icon{
           margin-top: 72px;
       }
       input[type="checkbox"],  input[type="radio"]{
        //z-index: -100 !important;
        //width: 1px !important;
        //height: 1px !important;
       // width: 100%;
        //height: 2em;
        //clip: rect(1px,1px,1px,1px);
        //position: absolute;
        }
        .candidate-image {
            border: 1px solid #CCC;
            background-color: #FFF;
            padding: 4px;
            display: inline-block;
            max-width: 100%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            box-shadow: 1px 1px 1px rgba(0,0,0,.15);
            margin: 8px;
                margin-left: 8px;
            margin-left: 119px;
}
.partysymbol{
    border:ipx solid #ccc;
    padding :2px;
    display: inline-block
    max-width:50%;
    box-sizing: border-box;
    margin-top: -90px;
}
.partyname{
   margin-top: -40px;
padding: 10px;
margin-left: 242px;
}
#cand-image{
   // min-height: 168px;
   min-height: 185px;
    border: 1px solid #999;
    cursor: pointer;
    font-size: 20px !important;
    background-size: cover;
    background-position: center center;
    //min-width: 249px;
    min-width: 187px;
    border-radius: 4px;
    background-color:#fff;
}
.mytable h3{
 margin-top: 84px;
margin-left: -337px;
font-size: 19px;
padding: 20px;
}
.party-img{
    padding: 2px;
}
.wizard .nav-tabs{
    background: #f8f8f8 !important;
}

  </style>


  <body>	
      <jsp:include page="HeaderNavigation.jsp"/>		
   <!--/header-->
    
    <div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">	
            <div class="container-fluid">
                   <div class="row">
                       <div class="col-md-10 col-md-offset-1 col-xs-12 col-sm-6 col-xs-offset-2">
                       
                               
                                <div class="wizard">
                                    <div class="wizard-inner">
                                        <div class="connecting-line"></div>
                                        <ul class="nav nav-tabs" role="tablist">

                                            <li role="presentation" class="active">
                                                <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
                                                    <span class="round-tab">
                                                        1
                                                      <!--  <i class="glyphicon glyphicon-folder-open President"></i>-->
                                                     
                                                    </span>
                                                </a>
                                            </li>

                                            <li role="presentation" class="disabled">
                                                <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                                                 
                                                    <span class="round-tab">
                                                        2
                                                        <!--<i class="glyphicon glyphicon-pencil"></i>-->
                                                       
                                                    </span>
                                                </a>
                                            </li>
                                            <li role="presentation" class="disabled">
                                                <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
                                                    <span class="round-tab">
                                                        3
                                                     <!--   <i class="glyphicon glyphicon-picture"></i>-->
                                                    </span>
                                                </a>
                                            </li>
                                             <li role="presentation" class="disabled">
                                                <a href="#step4" data-toggle="tab" aria-controls="step3" role="tab" title="Step 4">
                                                    <span class="round-tab">
                                                        4
                                                     <!--   <i class="glyphicon glyphicon-picture"></i>-->
                                                    </span>
                                                </a>
                                            </li>
                                             <li role="presentation" class="disabled">
                                                <a href="#step5" data-toggle="tab" aria-controls="step3" role="tab" title="Step 5">
                                                    <span class="round-tab">
                                                        5
                                                     <!--   <i class="glyphicon glyphicon-picture"></i>-->
                                                    </span>
                                                </a>
                                            </li>
                                            <li role="presentation" class="disabled">
                                                <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
                                                    <span class="round-tab">
                                                        <i class="glyphicon glyphicon-ok"></i>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                    <form role="form" action="PlaceVote" method="post">
                                            <div class="tab-content">
                                                <div class="tab-pane active" role="tabpanel" id="step1">
                                                    <h3> Presidents</h3>
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-6 col-xs-12">
                                                             <c:forEach var="president" items="${president}">
                                                                 <table class=" mytable table1" width="100%">
                                                                     <thead><th>  </th></thead>
                                                                     <tr>
                                                                        <td width="20%">
                                                                            
                                                                                <div class="candidate-image">
                                                                                  <div class="cand-image" id="cand-image"  style="background-image: url('images/voterImages/${president.imageUrl}')">
                                                                                    </div>
                                                                                </div>
                                                                            
                                                                         </td>
                                                                         <td width="20px">
                                                                             <div class="partysymbol">
                                                                                       <h3>${president.firstname} ${president.lastname}</h3>
                                                                                       <!--<div class="party-img">
                                                                                         <img src="images/PartyImages/$//{president.partysymbol}"  class=" img-circle img-responsive img-rounded" width="50px" height="40px">
                                                                                       </div>-->
                                                                                       </div>
                                                                               <div class="partyname">
                                                                                       <h>${president.partyId}</h>
                                                                                </div>
                                                                            
                                                                         </td>
                                                                         <td width="15%">
                                                                             <label style="font-size:15px;">
                                                                                 <input type="checkbox" name="position" value="${president.nationalId}" id="prezo" style="height:1em;width: 1em">
                                                                                 <span><i class="fa fa-check"></i></span>
                                                                             </label>
                                                                          </td>
                                                                  </tr>
                                                                 </table>
                                                            </c:forEach>
                                                            
                                                        </div>
                                                    </div>
                                                    <ul class="list-inline pull-right">
                                                        <li><button type="button" class="btn btn-primary next-step">Next</button></li>
                                                    </ul>
                                                </div>
                                                <div class="tab-pane" role="tabpanel" id="step2">
                                                   <h3>Academic Affairs</h3>
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-6 col-xs-12">
                                                             <c:forEach var="mp" items="${academics}">
                                                                 <table class=" mytable table2" width="100%">
                                                                     <thead><th>  </th></thead>
                                                                     <tr>
                                                                        <td width="20%">
                                                                              <div class="candidate-image">
                                                                                  <div class="cand-image" id="cand-image"  style="background-image: url('images/voterImages/${mp.imageUrl}')">
                                                                                    </div>
                                                                                </div>
                                                                         </td>
                                                                         <td width="20px">
                                                                             <div class="partysymbol">
                                                                                    <h3>${mp.firstname} ${mp.lastname}</h3>
                                                                                   <!-- <div class="party-img">
                                                                                      <img src="images/PartyImages/$//{mp.partysymbol}"  class=" img-circle img-responsive img-rounded" width="72px" height="48px">
                                                                                    </div>-->
                                                                               </div>
                                                                                <div class="partyname">
                                                                                    <h>${mp.partyId}</h>
                                                                                </div>
                                                                            
                                                                         </td>
                                                                         <td width="15%">
                                                                                 <label style="font-size:15px;">
                                                                                       <span class="input-icon col-xs-12">
                                                                                            <input type="checkbox" id="checkbox2" value="${mp.nationalId}" class="form-control ace checkbox checkbox-inline " name="position" style="height:1em;margin-top: -55px;width: 20px">
                                                                                       </span>
                                                                                 </label>
                                                                        </td>
                                                                  </tr>
                                                                 </table>
                                                            </c:forEach>
                                                            
                                                        </div>
                                                    </div>
                                                    <ul class="list-inline pull-right">
                                                        <li><button type="button" class="btn btn-default prev-step form-btn">Previous</button></li>
                                                        <li><button type="button" class="btn btn-primary next-step2 form-btn">Next</button></li>
                                                    </ul>
                                                </div>
                                                <div class="tab-pane" role="tabpanel" id="step3">
                                                    <h3>Finance</h3>
                                                 
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-6 col-xs-12">
                                                             <c:forEach var="senator" items="${finance}">
                                                                 <table class=" mytable finance_group" width="100%">
                                                                     <thead><th>  </th></thead>
                                                                     <tr>
                                                                        <td width="20%">
                                                                              <div class="candidate-image">
                                                                                  <div class="cand-image" id="cand-image"  style="background-image: url('images/voterImages/${senator.imageUrl}')">
                                                                                    </div>
                                                                                </div>
                                                                         </td>
                                                                         <td width="20px">
                                                                            
                                                                                  
                                                                                   <div class="partysymbol">
                                                                                       <h3>${senator.firstname} ${senator.lastname}</h3>
                                                                                       <!--<div class="party-img">
                                                                                         <img src="images/PartyImages/$//{senator.partysymbol}"  class=" img-circle img-responsive img-rounded" width="50px" height="48px">
                                                                                       </div>-->
                                                                                       </div>
                                                                                   <div class="partyname">
                                                                                       <h>${senator.partyId}</h>
                                                                                  </div>
                                                                            
                                                                         </td>
                                                                         <td width="15%">
                                                                                 <div class="form-group">
                                                                                       <span class="input-icon col-xs-12">
                                                                                            <input type="checkbox" id="finance" value="${senator.nationalId}" class="form-control ace checkbox checkbox-inline " name="position" style="height:1em;margin-top: -55px;width: 20px">
                                                                                       </span>
                                                                                 </div>
                                                                        </td>
                                                                  </tr>
                                                                 </table>
                                                            </c:forEach>
                                                            
                                                        </div>
                                                    </div>
                                                     <ul class="list-inline pull-right">
                                                        <li><button type="button" class="btn btn-default prev-step form-btn">Previous</button></li>
                                                        <li><button type="button" class="btn btn-primary next-step3 form-btn">Next</button></li>
                                                    </ul>
                                                </div>
                                                 <div class="tab-pane" role="tabpanel" id="step4">
                                                    <h3>Sports And Entertainment</h3>
                                                   
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-6 col-xs-12">
                                                             <c:forEach var="mca" items="${sports}">
                                                                 <table class=" mytable sports_group" width="100%">
                                                                     <thead><th>  </th></thead>
                                                                     <tr>
                                                                        <td width="20%">
                                                                              <div class="candidate-image">
                                                                                  <div class="cand-image" id="cand-image"  style="background-image: url('images/voterImages/${mca.imageUrl}')">
                                                                                    </div>
                                                                                </div>
                                                                         </td>
                                                                         <td width="20px">
                                                                                 <div class="partysymbol">
                                                                                       <h3>${mca.firstname} ${mca.lastname}</h3>
                                                                                      <!-- <div class="party-img">
                                                                                         <img src="images/PartyImages/$//{mca.partysymbol}"  class=" img-circle img-responsive img-rounded" width="50px" height="48px">
                                                                                       </div>-->
                                                                                    </div>
                                                                                   <div class="partyname">
                                                                                       <h>${mca.partyId}</h>
                                                                                   </div>
                                                                            
                                                                         </td>
                                                                         <td width="15%">
                                                                                 <div class="form-group">
                                                                                       <span class="input-icon col-xs-12">
                                                                                            <input type="checkbox" id="sports" value="${mca.nationalId}" class="form-control ace checkbox checkbox-inline " name="position" style="height:1em;margin-top: -55px;width: 20px">
                                                                                       </span>
                                                                                 </div>
                                                                        </td>
                                                                  </tr>
                                                                 </table>
                                                            </c:forEach>
                                                            
                                                        </div>
                                                    </div>
                                                    <ul class="list-inline pull-right">
                                                        <li><button type="button" class="btn btn-default prev-step form-btn">Previous</button></li>
                                                       <!-- <li><button type="button" class="btn btn-default next-step form-btn">Skip</button></li>-->
                                                        <li><button type="button" class="btn btn-primary btn-info-full next-step4">Save and continue</button></li>
                                                    </ul>
                                                </div>
                                                 <div class="tab-pane" role="tabpanel" id="step5">
                                                    <h3>SG</h3>
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-6 col-xs-12">
                                                             <c:forEach var="womenRep" items="${SG}">
                                                                 <table class=" mytable sg_group" width="100%">
                                                                     <thead><th>  </th></thead>
                                                                     <tr>
                                                                        <td width="20%">
                                                                              <div class="candidate-image">
                                                                                  <div class="cand-image" id="cand-image"  style="background-image: url('images/voterImages/${womenRep.imageUrl}')">
                                                                                    </div>
                                                                                </div>
                                                                         </td>
                                                                         <td width="20px">
                                                                                 <div class="partysymbol">
                                                                                       <h3>${womenRep.firstname} ${womenRep.lastname}</h3>
                                                                                     <!--  <div class="party-img">
                                                                                         <img src="images/PartyImages/$//{womenRep.partysymbol}"  class=" img-circle img-responsive img-rounded" width="72px" height="48px">
                                                                                       </div>-->
                                                                                    </div>
                                                                                   <div class="partyname">
                                                                                       <h>${womenRep.partyId}</h>
                                                                                   </div>
                                                                            
                                                                         </td>
                                                                         <td width="15%">
                                                                                 <div class="form-group">
                                                                                       <span class="input-icon col-xs-12">
                                                                                            <input type="checkbox" id="sg" value="${womenRep.nationalId}" class="form-control ace checkbox checkbox-inline " name="position" style="height:1em;margin-top: -55px;width: 20px">
                                                                                       </span>
                                                                                 </div>
                                                                        </td>
                                                                  </tr>
                                                                 </table>
                                                            </c:forEach>
                                                            
                                                        </div>
                                                    </div>
                                                    <ul class="list-inline pull-right">
                                                        <li><button type="button" class="btn btn-default prev-step form-btn">Previous</button></li>
                                                       <!-- <li><button type="button" class="btn btn-default next-step form-btn">Skip</button></li>-->
                                                        <li><button type="button" class="btn btn-primary btn-info-full next-step5">Save and continue</button></li>
                                                    </ul>
                                                </div>
                                                
                                                <div class="tab-pane" role="tabpanel" id="complete">
                                                    <h3>Complete</h3>
                                                    <p style="font-size: 20px;">You have successfully completed all steps.</p>
                                                    <button type="submit" class="btn btn-primary ">Cast Your Vote <i class="fa fa-check" style="margin-left: 471px;"></i></button>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </form>
                                     </div>

                          

                       </div>
                   </div>
               </div>
       </div>
	
        <footer>
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
        <%--<script src="assets/js/functions.js"></script>--%>
        <script src="assets/js/wizard.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>	
        
        
        <script src="assets/js/jquery.validate.min.js" type="text/javascript"></script>
    <script type="text/javascript">
   
            
            $(".next-step").click(function(e){
                e.preventDefault();
                var isValid=true;
                var id=[];
                   $(':checkbox:checked').each(function(i){
                     id[i]=$(this).val();
                  })
                  //alert(id);
                  if(id.length>1){
                     alert("select  only one candidate");
                      return false;
                     //$(".next-step").addClass('disable');
                  }else if(id.length===0){
                         alert("select one candidate");
                         return false;
                         
                  }else{
                        
                        var $active1 = $('.wizard .nav-tabs li.active');
                        var $active1 = $('.wizard .nav-tabs li.active');
                         $active1.next().removeClass('disabled');
                         //go to next tab
                        $('.wizard .nav-tabs li.active').next().find('a[data-toggle="tab"]').click();
                        isValid=true;
                    
                  }
               
            });
            $(".next-step2").click(function(e){
                e.preventDefault();
                var isValid=true;
                 var id2=[];
                //$("#checkbox2").prop('checked',true).each(function(i)){
                   //  id2[i]=$(this).val();
               // }
                $(".table2 #checkbox2:checked").each(function(i){
                    id2[i]=$(this).val();
                });
                //alert(id2)
                  if(id2.length>1){
                     alert("select  only one candidate");
                      return false;
                     //$(".next-step").addClass('disable');
                  }else if(id2.length===0){
                         alert("select one candidate");
                         return false;
                         
                  }else{
                        
                        var $active1 = $('.wizard .nav-tabs li.active');
                        var $active1 = $('.wizard .nav-tabs li.active');
                         $active1.next().removeClass('disabled');
                         //go to next tab
                        $('.wizard .nav-tabs li.active').next().find('a[data-toggle="tab"]').click();
                        isValid=true;
                    
                  }
               
            });
            $(".next-step3").click(function(e){
                e.preventDefault();
                var isValid=true;
                var id3=[];
                   $(".finance_group #finance:checked").each(function(i){
                    id3[i]=$(this).val();
                });
                  //alert(id);
                  if(id3.length>1){
                     alert("select  only one candidate");
                      return false;
                     //$(".next-step").addClass('disable');
                  }else if(id3.length===0){
                         alert("select one candidate");
                         return false;
                         
                  }else{
                        
                        var $active1 = $('.wizard .nav-tabs li.active');
                        var $active1 = $('.wizard .nav-tabs li.active');
                         $active1.next().removeClass('disabled');
                         //go to next tab
                        $('.wizard .nav-tabs li.active').next().find('a[data-toggle="tab"]').click();
                        isValid=true;
                    
                  }
               
            });
            $(".next-step4").click(function(e){
                e.preventDefault();
                var isValid=true;
                var id4=[];
                   $(".sports_group #sports:checked").each(function(i){
                    id4[i]=$(this).val();
                });
                  //alert(id);
                  if(id4.length>1){
                     alert("select  only one candidate");
                      return false;
                     //$(".next-step").addClass('disable');
                  }else if(id4.length===0){
                         alert("select one candidate");
                         return false;
                         
                  }else{
                        
                        var $active1 = $('.wizard .nav-tabs li.active');
                        var $active1 = $('.wizard .nav-tabs li.active');
                         $active1.next().removeClass('disabled');
                         //go to next tab
                        $('.wizard .nav-tabs li.active').next().find('a[data-toggle="tab"]').click();
                        isValid=true;
                    
                  }
               
            });
            
            $(".next-step5").click(function(e){
                e.preventDefault();
                var isValid=true;
                var id5=[];
                    $(".sg_group #sg:checked").each(function(i){
                    id5[i]=$(this).val();
                });
                  //alert(id);
                  if(id5.length>1){
                     alert("select  only one candidate");
                      return false;
                     //$(".next-step").addClass('disable');
                  }else if(id5.length===0){
                         alert("select one candidate");
                         return false;
                         
                  }else{
                        
                        var $active1 = $('.wizard .nav-tabs li.active');
                        var $active1 = $('.wizard .nav-tabs li.active');
                         $active1.next().removeClass('disabled');
                         //go to next tab
                        $('.wizard .nav-tabs li.active').next().find('a[data-toggle="tab"]').click();
                        isValid=true;
                    
                  }
               
            });
            </script>


  </body>
</html>

