<%-- 
    Document   : index
    Created on : Mar 19, 2018, 12:14:09 PM
    Author     : xmore mmohz
--%>

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
</style>
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
        <li class="breadcrumb-item active">My Dashboard</li>
      </ol>
      <!-- Icon Cards-->
        <div class="row">
                    <div clas="col-md-12">
                        <div class=" warning" style="margin-top: 130px;margin-left: 425px;">
                                <h3 style="text-align: center; font-size: 26px;color:green"> SUCCESS <i class="fa fa-check-circle-o"></i></h3>
                                <h3 style="text-align: center; font-size: 25px;color:green">Congratulation!....   <i class="fa fa-ticket"></i></h3>
                                 <h1 style="color:green;text-align: center; padding-bottom:23px;font-size: 25px">${success}</h1>
                        </div>
                    </div>
        </div>
      <!-- Area Chart Example-->
      
      <div class="row">
       
        <div class="col-lg-4">
          <!-- Example Pie Chart Card-->
          
          <!-- Example Notifications Card-->
          
        </div>
      </div>
      <!-- Example DataTables Card-->
     
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
  
    <!--start footer-->
    <jsp:include page="admin-includes/footer.jsp"/>
  </div>
</body>

</html>
