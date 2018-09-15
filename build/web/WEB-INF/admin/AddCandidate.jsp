<%-- 
    Document   : AddCandidate
    Created on : Mar 21, 2018, 9:27:26 AM
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
    .modal-header{
        border-bottom: 0px solid #e9ecef !important;
        background: #efefef;
        //height:50px;
        padding: 15px;
    }
    .modal-body {
    position: relative;
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 0rem !important;
}
.form-control-sm{
    margin-top:20px;
    
}
#table-Ids{
    margin-top:20px;
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
        <li class="breadcrumb-item active">Candidates</li>
      </ol>-->
      
      <!-- Icon Cards-->
        <div class="card mb-3" style="margin-top:-14px">
        <div class="card-header">
                 <i class="fa fa-home"> Home / Aspirant</i></div>
             <div class="card-body">
                   <div class=" btn-group-xs" id="group-btns">
                       <a class=" btn-xs add-user btn btn-success btn-sm" href="AllCandidates" title="click to view Candidate"><i class="fa fa-list"></i></a>
                       <hr class="hr" style="margin-top:0.5em">
                   </div>
                  <div class="row">
                        <h class="message" style="margin-top: 1px !important;"> ${pmsg}</h>
                    </div>
      <div class="row">
        <div class="col-md-12 col-lg-12 col-xs-6 col-sm-6">
            <!--add user-->
          <form action="AddCandidate" method="post" id="candidate-form">
                <div class="form-group">
                  <div class="form-row">
                    <div class="col-md-6">
                      <label for="exampleInputName">Aspirant RegNo</label>
                      <input type="text" id="nationalId" name="nationalid" required=""  class="form-control" placeholder="select id">
                     </div>
                    <div class="col-md-6">
                      <label for="exampleInputLastName">Vying Position</label>
                     <select class="select selected form-control" required="" name="position">
                         <c:forEach var="ps" items="${position}">
                             <option value="${ps.positionid}">${ps.positionname}</option>
                         </c:forEach>
                        </select>
                    </div>
                  </div>
                </div>
               <!-- <div class="form-group">
                  <div class="form-row">
                    <div class="col-md-6">
                      <label for="exampleInputPassword1">Political Party</label>
                      <select class="select selected form-control" required="" name="partyid">
                           <option></option>
               
                    <%-- <c:forEach  var="party" items="${partyid}">
                               <option value="${party.partyId}">${party.partyname}</option>
                           </c:forEach> --%>
                          
                                
                      </select>
                    </div>
                    </div>
                </div>-->
              <button class="btn btn-primary " type="submit">Submit</button>
        </form>
        </div>
          <br/>
          <br/>
        
          <div id="modal-table" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                            <div class="modal-content">
                                    <div class="modal-header">
                                             <h class="modal-title">Click to select Aspirant RegNo</h> 
                                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                                                <span class="white">&times;</span>
                                                        </button>
                                         
                                    </div>
                                    <div class="modal-body">
                                        <table id="table-Ids" class="table table-condensed table-bordered table-hover">
                                            <thead style="background:#AFEAAA !important">
                                                <tr>
                                                    <th>RegNo</th>
                                                    <th>Name</th>
                                                 </tr>
                                           </thead>
                                           <tbody>
                                               <c:forEach var="voter" items="${selectedId}">
                                                   <tr id="${voter.nationalId}">
                                                       <td>${voter.nationalId}</td>
                                                       <td>${voter.firstname} ${voter.lastname}</td>
                                                     
                                                   </tr>
                                               </c:forEach>
                                               
                                           </tbody>
                                        
                                        </table>

                                   </div>
                                 <div class="modal-footer no-margin-top">
                                    <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                            <i class="ace-icon fa fa-times"></i>
                                            Close
                                    </button>
                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
</div>
            
      </div>
      
      <div class="row">
            <div class="form-group pull-right" style="margin-left: 315px;">
              <div class="col-md-12">
                 <button class="btn btn-danger btn-block pull-right">Note!! Aspirant must be a Student</button> 
              </div>
           </div>
      </div>
      <!-- Area Chart Example-->
      
      <!-- Example DataTables Card-->
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
    $(function(){
        $("#candidate-form #nationalId").click(function(){
            //alert();
            $("#modal-table").modal("show");
        })
        
        $("#table-Ids tbody tr").click(function(){
           
            var id=$(this).attr("id");
            //insert id to the input
            $("#candidate-form input[name=nationalid]").val(id);
            //close modal popup
            $("#modal-table").modal("hide");
           
            
        })
       
        //$("#example1").DataTable();
    $('#table-Ids').DataTable({
      "paging": true,
      "lengthChange": true,
      "searching":true,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
    
    })
</script>