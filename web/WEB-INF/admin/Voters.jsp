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
    #group-btns{
        margin-top:-17px;
        margin-bottom: 10px
    }
    
</style>
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <jsp:include page="admin-includes/sidebar.jsp"/>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
    <!--  <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Home</a>
        </li>
        <li class="breadcrumb-item active">Voter Registration</li>
      </ol>-->
     
      
      <!-- Icon Cards-->
      <div class="card mb-3" style="margin-top: -14px;">
        <div class="card-header">
                <i class="fa fa-table"> Home / Voter Registration</i>
        </div>
             <div class="card-body">
                <div class="row">
                  <div class="col-md-12 col-lg-12 col-xs-6 col-sm-6">
                        <div class=" btn-group-xs" id="group-btns">
                             <a class=" btn-xs add-user btn btn-success btn-xs btn-sm" href="tovoters" title="click to Register Voters"><i class="fa fa-plus"></i></a>
                             <a href="VoterRegisterPdf" target="blank_" class="btn btn-primary btn-sm pull-right"><i class="fa fa-print"> print</i></a>
                             <hr>
                        </div>
                      
                       <div class="row">
                            <h class="message"> ${msg}</h>
                        </div>
                      
                    <div class="table-responsive hidden">
                        <table class="table table-bordered table-hover table-condensed" id="dataTable" width="100%" cellspacing="0">
                          <thead>
                                <tr>
                                    <th>Reg Number</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <!--<th>Department</th>-->
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="voter" items="${voters}">
                                    <tr>
                                          <td><a href="SelectVoterById?voterid=${voter.nationalId}">${voter.nationalId}</a></td>
                                          <td>${voter.firstname}</td>
                                          <td>${voter.lastname}</td>
                                     </tr>
                                  </c:forEach>
                             </tbody>
            </table>
           </div>
            
           
        </div>
            
      </div>
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
