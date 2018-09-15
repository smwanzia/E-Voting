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
             <!--display message-->
                <div class="DisplayMsg" style="display:none">
                    <div class='bs-example-modal-sm alert alert-success'><a href='#' class='close'
                         data-dismiss='alert' onclick='closeMsgBox()'>&times;</a>
                         <strong><div class="msg"></div></strong>
                    </div>
                </div>
            <h1 style="font-size:15px">Add Department</h1>
            <form action="AddPoliticalParties" method="post" id="political-form" enctype="multipart/form-data">
                <div class="form-group">
                  <div class="form-row">
                    <div class="col-md-6">
                      <label for="exampleInputName">Department Name</label>
                      <input type="text" id="nationalId" name="partyname"  required="" class="form-control" placeholder="">
                     </div>
                    <!--<div class="col-md-6">
                     <label for="exampleInputLastName">Party Symbol</label>
                             <input type="file" id="" name="symbol" required=""  class="form-control" placeholder="">
                    </div>-->
                  </div>
                </div>
                <button class="btn btn-primary " type="submit">Submit</button>
        </form>
          
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
<script>
    $("#politicall-form").submit(function(e){
        //e.preventDefault();
        var formdata=$(this).serialize();
        alert(formdata);
        var form_url=$(this).attr("action");
        $.ajax({
            method:"POST",
            url:form_url,
            data:new FormData((formdata)[0]),
            contentType:false,
            processData:false,
            success:function(data){
                $(".DisplayMsg").show();
                $(".msg").html(" Invoiced successfully ");
                $("#political-form")[0].reset();
            }
        })
        
    })
    </script>
</html>
