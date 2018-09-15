<%-- 
    Document   : candidates
    Created on : Mar 19, 2018, 12:14:52 PM
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
        <li class="breadcrumb-item active">Candidates</li>
      </ol>-->
       
     <div class="card mb-3" style="margin-top:-14px">
        <div class="card-header">
                 <i class="fa fa-home"> Home / Election Setting</i></div>
             <div class="card-body">
      <!-- Icon Cards-->
      <div class="row">
        <div class="col-md-12 col-lg-12 col-xs-6 col-sm-6">
              <div class="col-md-12 col-lg-12 col-xs-6 col-sm-6">
                    <div class=" btn-group-xs" id="group-btns">
                             <a class=" btn-xs add-user btn btn-success btn-xs btn-sm" href="toElectionSetup" title="click to add"><i class="fa fa-plus"></i></a>
                          
                             <hr>
                        </div>
           <div class="table-responsive">
                    <table class="table table-bordered table-hover table-condensed" id="dataTable" width="100%" cellspacing="0">
                      <thead>
                        <tr>

                            <th>Department Name</th>
                           
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="cand" items="${party}">
                          <tr>
                             <!-- <td><image src="images/PartyImages/$//{cand.symbol}" style="width:21px"/></td>-->
                              <td>${cand.partyname}</td>
                              
                          </tr>
                      </c:forEach>
                      </tbody>
                    </table>
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
