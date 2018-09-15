<%-- 
    Document   : Users
    Created on : Mar 19, 2018, 10:56:39 PM
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
    #group-btns{
        margin-top: -15px;
        margin-bottom: 8px;
    }
    .hr{
        margin-top: 0.4rem;
    }
  
</style>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <jsp:include page="admin-includes/sidebar.jsp"/>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
     <!-- <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Home</a>
        </li>
        <li class="breadcrumb-item active">Users</li>
      </ol>-->
      
     <div class="card mb-3" style="margin-top:-14px">
        <div class="card-header">
                 <i class="fa fa-home"> Home / Users</i></div>
             <div class="card-body">
                 <div class=" btn-group-xs" id="group-btns">
                    <button class="btn btn-success pulse btn-xs add-user" title="add user"><i class="fa fa-plus"></i></button>
                   <hr class="hr">
                </div>
               
      <div class="row">
          <h class="message"> ${msg}</h>
      </div>
      <!-- Icon Cards-->
     <div class="row">
          <div class="col-md-12 col-lg-12 col-xs-6 col-sm-6">
           <div class="table-responsive user-table" >
            <table class="table table-bordered table-hover table-condensed" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th> First Name</th>
                  <th>Last Name</th>
                  <th>Position</th>
                  <th>Email Address</th>
                  <th>Phone Number</th>
                </tr>
              </thead>
              <tbody>
                  <c:forEach var="user" items="${user}">
                      <tr>
                          <td><a href="UserById?id=${user.userid}">${user.firstname}</a></td>
                          <td>${user.lastname}</td>
                          <td>${user.roleid}</td>
                          <td>${user.emailaddress}</td>
                          <td>${user.phonenumber}</td>
                      </tr>
                  </c:forEach>
              </tbody>
            </table>
                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>
       
       
         <!--add user-->
         <div id="userform" style="display:none">
             <form action="AddUser" method="post" id="adminform">
                <div class="form-group">
                  <div class="form-row">
                    <div class="col-md-6">
                      <label for="exampleInputName">First name</label>
                      <input class="form-control" name="firstname" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
                    </div>
                    <div class="col-md-6">
                      <label for="exampleInputLastName">Last name</label>
                      <input class="form-control" name="lastname" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="Enter last name">
                    </div>
                  </div>
                </div>
               <div class="form-group">
                  <div class="form-row">
                    <div class="col-md-6">
                      <label for="exampleInputName">Username</label>
                      <input class="form-control" name="username" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
                    </div>
                    <div class="col-md-6">
                      <label for="exampleInputLastName">Role</label>
                      <select class="form-control selected" name="roleid">
                          <option>Administrator</option>
                          <option>Users</option>
                      </select>
                    <!--  <input class="form-control" name="roleid" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="Enter last name">-->
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="form-row">
                    <div class="col-md-6">
                      <label for="exampleInputPassword1">Password</label>
                      <input class="form-control" id="password" name="password" id="exampleInputPassword1" type="password" placeholder="Password">
                    </div>
                    <div class="col-md-6">
                      <label for="exampleConfirmPassword">Confirm password</label>
                      <input class="form-control" id="exampleConfirmPassword" name="confirm" type="password" placeholder="Confirm password">
                    </div>
                  </div>
                </div>
                  <div class="form-group">
                  <div class="form-row">
                    <div class="col-md-6">
                      <label for="exampleInputPassword1">Email Address</label>
                      <input class="form-control" name="emailaddress" id="exampleInputPassword1" type="email" placeholder="">
                    </div>
                   
                  </div>
                </div>
              <div class="form-group">
                  
                     <button class="btn btn-success btn-xs pull-right">Submit</button>
                  
              </div>
                
         </form>
         </div>
        
     
          </div>
       
      </div>
      <!-- Area Chart Example-->
     </div>
             </div>
         </div>
    
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
  
    <!--start footer-->
   <jsp:include page="admin-includes/footer.jsp"/>
  </div>
</body>

</html>
<script>
      //submit form data
   $("#adminform").validate({
        rules: {
           firstname: {
                required: true
            },
             lastname: {
                required: true
            },
             roleid: {
                required: true
            },
           
            password: {
                required: true,
                minlength:5
            },
            confirm: {
                required: true,
                equalTo:"#password"
            },
              username: {
                required: true
                
            },
             emailaddress: {
                required: true
               
            },
             
             
             
        },
        messages: {
           lastname: {
                required: "please your lastname is required",
            },
           firstname: {
                required: "please  your firstname is required",
            },
             password: {
                required: "please password is required",
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
    
    
    $(".add-user").click(function(){
        $(".user-table").hide();
        $("#userform").show();
    });
    </script>