<%-- 
    Document   : login
    Created on : Mar 20, 2018, 12:11:43 AM
    Author     : xmore mmohz
--%>

<!DOCTYPE html>
<html lang="en">

<head>
   <jsp:include page="admin-includes/include-css.jsp"/>
</head>

<body class="" style="background-color: #eee !important;">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="msg" style="text-align: center"> ${Msg}</div>
      <div class="card-body">
          <form action="AdminLogin" method="Post" id="admin-formlogin">
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input class="form-control" id="exampleInputEmail1" name="email" type="email" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
             <input class="form-control" id="exampleInputPassword1" name="password" type="password" placeholder="Password">
         <!--   <input class="form-control" id="exampleInputPassword1" name="password" type="password" placeholder="Password">-->
          </div>
          
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
          </div>
              <button  type="submit" class="btn btn-primary btn-block">Login</button>
        </form>
       <!-- <div class="text-center">
          <a class="d-block small mt-3" href="register.html">Register an Account</a>
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>-->
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="assets/admin/vendor/jquery/jquery.min.js"></script>
  <script src="assets/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="assets/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>

