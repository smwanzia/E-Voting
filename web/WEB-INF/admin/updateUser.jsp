<%-- 
    Document   : updateUser
    Created on : Apr 2, 2018, 10:32:51 PM
    Author     : xmore mmohz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>users</title>
         <jsp:include page="admin-includes/include-css.jsp"/>
    </head>
   <body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <jsp:include page="admin-includes/sidebar.jsp"/>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
     <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Home</a>
        </li>
        <li class="breadcrumb-item active">Profile</li>
      </ol>
     <div class="card mb-3">
        
             <div class="card-body">
                <div class="row">
                  <div class="col-md-12 col-lg-12 col-xs-6 col-sm-6">
      <div class="row">
          <h class="message"> ${msg}</h>
      </div>
         <!--add user-->
         <div id="form">
             <form action="UpdateUser" method="post" id="updateadminform">
                <div class="form-group">
                  <div class="form-row">
                    <div class="col-md-6">
                      <label for="exampleInputName">First name</label>
                      <input class="form-control" name="firstname" value="${user.firstname}" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
                    </div>
                    <div class="col-md-6">
                      <label for="exampleInputLastName">Last name</label>
                      <input class="form-control" name="lastname" value="${user.lastname}" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="Enter last name">
                    </div>
                  </div>
                </div>
               <div class="form-group">
                    <div class="form-row">
                      <div class="col-md-6">
                        <label for="exampleInputName">Username</label>
                        <input class="form-control" name="username" value="${user.secondname}" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
                      </div>
                      <div class="col-md-6">
                        <label for="exampleInputLastName">Role</label>
                        <input class="form-control" name="roleid" readonly="" value="${user.roleid}" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
                        
                      <!--  <input class="form-control" name="roleid" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="Enter last name">-->
                      </div>
                    </div>
                </div>
                  <div class="form-group">
                        <div class="form-row">
                          <div class="col-md-6">
                            <label for="exampleInputPassword1">Email Address</label>
                            <input class="form-control" name="emailaddress" readonly="" value="${user.emailaddress}" id="exampleInputPassword1" type="email" placeholder="">
                          </div>

                        </div>
                </div>
              <div class="form-group">
                  
                     <button class="btn btn-success btn-xs pull-right">Update</button>
                  
              </div>
                
         </form>
         </div>
    </div>
       <div class="card mb-3">
         <div class="card-body">
           <div class="row">
                    <div class="col-md-12 col-md-offset-3">
                        <fieldset>
                            <legend>Reset Password</legend>

                        </fieldset>
                        ${reset}
                        <form action="ResetPassword" method="post" id="updateadminform">
                         <div class="form-group">
                                <div class="form-row">
                                    <input class="form-control" name="id" value="${user.userid}"  id="exampleInputPassword1" type="hidden" placeholder="Password">
                                  <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Password</label>
                                            <input class="form-control" name="password" id="exampleInputPassword1" type="password" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleConfirmPassword">Confirm password</label>
                                            <input class="form-control" id="exampleConfirmPassword" name="confirm" type="password" placeholder="Confirm password">
                                        </div>
                                  </div>
                                </div>
                              </div>
                              <button class="btn btn-success btn-xs pull-right">Reset</button>
                        </form>
                    </div>
                </div>
                </div>
             </div>
                </div>
             </div>
     </div>
    </div>
        <!--start footer-->
   <jsp:include page="admin-includes/footer.jsp"/>
  </div>
  
   
    </body>
</html>
