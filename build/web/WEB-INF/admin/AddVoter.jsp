<%-- 
    Document   : AddVoter
    Created on : Mar 22, 2018, 12:56:57 AM
    Author     : xmore mmohz
--%>

<%-- 
    Document   : Voters
    Created on : Mar 19, 2018, 11:54:17 PM
    Author     : xmore mmohz
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="admin-includes/include-css.jsp"/>
</head>

<style>
    .breadcrumb{
        margin-top: -15px !important;
    }
  .profile-picture {
    border: 1px solid #CCC;
    background-color: #FFF;
    padding: 4px;
    display: inline-block;
    max-width: 100%;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    box-shadow: 1px 1px 1px rgba(0,0,0,.15);
}  
#news_image_wrap{
   height: 363px;
  width: 257px;
 // margin-left: 116px;
  background-position: top;
  background-image: cover;
  background-image: 400px;
  background-position: center center;
  //border-radius: 16px;
 // background-color: #f5f5f5;
  //background-position-y: inherit;
  background-size: cover;
  background-repeat: no-repeat;
    }
    .input_wraps{
      // background-color: #f5f5f5;
       // border: 1px solid #e3e3e3;
        //height: 214px;
    }
   .product_camera {
    font-size: 34px;
    padding: 3px;
    margin: 70px;
    text-align: center;
    position: relative;
   left: 35px;
    right: 28px;
    top: 46px;
}
</style>


<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <jsp:include page="admin-includes/sidebar.jsp"/>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <!--<ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Home</a>
        </li>
        <li class="breadcrumb-item active">Voter</li>
      </ol>-->
      <!-- Icon Cards-->
       <div class="card mb-3"  style="margin-top:-14px">
        <div class="card-header">
                 <i class="fa fa-home"> Home / Voter Registration</i></div>
             <div class="card-body">
                 ${errmsg}
                <div class="row">
                  <div class="col-md-12 col-lg-12 col-xs-6 col-sm-6">
                   <!--add user-->
                       <form action="AddVoter" method="post" enctype="multipart/form-data" id="voterform">
                          <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-4 center">
                                    <span class="profile-picture">
                                         <div class="input_wraps">
                                              <label for="image">Voter Image</label>
                                          <div class="news_image_wrap" id="news_image_wrap" onclick=" openfile_upload('voterimage')">
                                                  <i class="fa fa-camera product_camera" ></i>
                                               <input type="file" name="image" class=""  id="voterimage" name="voterimage" style="margin-top: 189px" title="click to select image" onchange="preview_file(event,'news_image_wrap')">
                                          </div>
                                       </div>
                                           
                                    </span>

                                </div>
                                <div class="col-md-8">
                                    <div class="row">
                                        
                                        <div class="col-md-6">
                                             <div class="form-group">
                                            <label for="exampleInputName">First name</label>
                                                <input class="form-control" name="firstname" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
                                             </div>
                                             <div class="form-group">
                                                <label for="exampleInputName">Username</label>
                                                 <input class="form-control" name="username" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="">
                                             </div>
                                             <div class="form-group">
                                                 <label for="exampleInputLastName">Student RegNo</label>
                                                 <input class="form-control" name="nationalid" id="exampleInputLastName" type="text" aria-describedby="nameHelp" laceholder="">
                                             </div>
                                             <!--<div class="form-group">
                                                 <label for="exampleInputLastName">Constituency</label>
                                               <input class="form-control" name="constituency" id="exampleInputLastName" type="text" aria-describedby="nameHelp" >
                                             </div>
                                            <div class="form-group">
                                               <label for="exampleInputName">Ward</label>
                                                 <input class="form-control" name="ward" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter ward">
                                             </div>
                                             <div class="form-group">
                                                 <label for="exampleInputLastName">Location</label>
                                               <input class="form-control" name="location" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="">
                                             </div>-->
                                        </div>
                                        
                                        <div class="col-md-6">
                                             <div class="form-group">
                                                <label for="exampleInputLastName">Last name</label>
                                                <input class="form-control" name="lastname" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="Enter last name">
                                             </div>
                                             <div class="form-group">
                                                <label for="exampleInputPassword1">Phone Number</label>
                                                <input class="form-control" name="phonenumber" id="exampleInputPassword1" type="text" placeholder="">
                                             </div>
                                             <div class="form-group">
                                             <label for="exampleInputPassword1">Email Address</label>
                                                <input class="form-control" name="emailaddress" id="exampleInputPassword1" type="email" placeholder="">
                                             </div>
                                           <!-- <div class="form-group">
                                                 <label for="exampleInputName">Department</label>
                                              <!--  <input class="form-control" name="department" id="exampleInputName" type="text" aria-describedby="nameHelp">-->
                                               <!--   <select class="select selected form-control" required="" name="department">
                                                  <option></option>
                                                      <!-- <c:forEach  var="party" items="${partyid}">
                                                      <option value="${party.partyId}">${party.partyname}</option>
                                                   <!--  </c:forEach> 
                                                 </select>
                                            </div>-->
                                            
                                            <input class="form-control hidden" style="display:none" name="type" value="Add" id="exampleInputName" type="text" aria-describedby="nameHelp">
                                             <!--<div class="form-group">
                                                <label for="">Year of Birth</label>
                                                <select class="form-control" name="DOB">
                                                    <option></option>
                                                    <option>1998</option>
                                                </select>
                                               <!-- <input class="form-control" name="DOB" id="exampleConfirmPassword" type="text" placeholder="">-->
                                             <!--</div>-->
                                            <!-- <div class="form-group">
                                                 <label for="exampleInputName">County</label>
                                                <input class="form-control" name="county" id="exampleInputName" type="text" aria-describedby="nameHelp">
                                             </div>
                                             <div class="form-group">
                                                <label for="exampleInputName">Village</label>
                                                <input class="form-control" name="village" id="exampleInputName" type="text" aria-describedby="nameHelp" >
                                             </div>-->
                                            <button class="btn btn-info  pull-right" type="submit">Register Voter</button>
                                        </div>
                                   
                                    </div>
                              
                            </div>
                                  
                             <br/>
                            <br/>
            
                        </div>
                      </div>
                  </form>
                  </div>

            </div>
        </div>
   
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
  
    <!--start footer-->
    <jsp:include page="admin-includes/footer.jsp"/>
  </div>
</body>
<script>
      //submit form data
   $("#voterform").validate({
        rules: {
           firstname: {
                required: true
            },
             lastname: {
                required: true
            },
             county: {
                required: true
            },
           
            nationalid: {
                required: true,
               // minlength:10,
               // number:true
            },
            DOB: {
                required: true,
                //equalTo:"password"
            },
              username: {
                required: true
                
            },
             emailaddress: {
                required: true,
                email:true
               
            },
            location: {
                required: true
               
            },
            village: {
                required: true
               
            },
             constituency: {
                required: true
               
            },
             phonenumber: {
                required: true,
                number:true,
                minlength:10,
                maxlength:10
               
            },
             image: {
                required: true
               
            },
            department: {
                required: true
               
            },
            voterimage:{
                required:true
            },
             
             
             
        },
        messages: {
           lastname: {
                required: "please your lastname is required",
            },
           firstname: {
                required: "please  your firstname is required",
            },
             image: {
                required: "please select voter image",
            },
        },
        highlight: function (element) {
            $(element).closest('.form-group').addClass('has-error');
        },
        unhighlight: function (element) {
            $(element).closest('.form-group').removeClass('has-error');
        },
        errorElement: 'span',
        errorClass: 'help-block',
        errorPlacement: function (error, element) {
            if (element.parent('.input-group').length) {
                error.insertAfter(element.parent());
            } else {
                error.insertAfter(element);
            }
        },submitHandler:function(form){
          processform('productform','AddProduct','LoadProducts');
        }
      
    }); 
    
    
   
     /*preview image upload*/
    var preview_file = function(event,load_to) {
        $("."+load_to+",#"+load_to).css({"background-image":"url('"+URL.createObjectURL(event.target.files[0])+"')"});
    };

    function   openfile_upload(file){
            document.getElementById(file).click();
          //  document.getElementByName(file).click();
    }
    
   
</script>

   
</html>

