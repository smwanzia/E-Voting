<%-- 
    Document   : tallyingCenter
    Created on : Mar 26, 2018, 11:40:47 AM
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
    .myh1{
        font-size: 15px;font-weight: bold;text-align: center;
    }
    .mypanel{
        background: #eee;
        height: auto;
        min-height: 170px;
        padding: 17px;
    }
    .mywinner{
        font-size: 20px;
        font-weight: bold;
        text-align: left;
    }
     .loader_img{
                  // margin: 265px 0px 79px 570px;
                 margin: -621px 39px 79px 348px;
                top: 300px;
                margin-top: -612px;
                font-size: 20px;
                width: 33px;
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
        <li class="breadcrumb-item active">Tallying Center</li>
      </ol>-->
      <!-- Icon Cards-->
       <div class="card mb-3" style="margin-top:-14px">
         <div class="card-header">
                 <i class="fa fa-home"> Home / Tallying Center</i></div>
             <div class="card-body">
               
        <div class="row">       
   
            <div class="col-md-9 col-sm-12" id="tallying-center">
                <div class="row">
                    <div class="col-md-12">
                     <h3 class="myh1">Result Summary</h3>
                        <table class="table table-bordered table-hover table-condensed" id="datTable" width="100%" cellspacing="0">
                             <thead>
                               <tr>
                                    <th>Aspirants</th>
                                   
                                    <th>Position</th>
                                    <th>Total Votes</th>

                                </tr>
                             </thead>
                             <tbody>
                                 <c:forEach var="vote" items="${cand}">
                                     <tr>
                                           <td>${vote.firstname} ${vote.lastname}</td>
                                          <td>${vote.position}</td>
                                           <td>${vote.totalvotes}</td>

                                     </tr>
                                 </c:forEach>
                             </tbody>
                         </table>
                    </div>
                </div>
                <div class="row">
                     <div class="col-md-9 col-lg-12 col-xs-6 col-sm-6">
                        <div class="col-md-6">
                             <table class="table table-bordered table-hover table-condensed" id="datTable" width="100%" cellspacing="0">
                                  <thead>
                                    <tr>
                                         <th>TOTAL VOTE CASTED</th>

                                    </tr>
                                  </thead>
                                  <tbody>
                                      <c:forEach var="vote" items="${totalvotes}">
                                          <tr>
                                                <td>${vote.totalvotes} votes</td>
                                          </tr>
                                      </c:forEach>
                                  </tbody>
                               </table>
                          </div>
                          <a href="javascript:void()" class="btn btn-success btn-sm pull-right resultsummarybtn">Export to pdf</a>
                 </div>
                   
                </div>
            </div>
              
             <div class="col-md-3">
                   <div class="panel panel-info bg-gray-active mypanel">
                        <div class="panel-heading">
                            <h4 class="panel-title myh1">Filter by Position</h4>
                        </div>
                        <div class="panel-body bg-gray-active">
                            <form>
                                <div class="form-group">
                                    <select class="form-control select selected" id="position_input" name="position">
                                        <c:forEach var="post" items="${myposition}">
                                            <option value="${post.positionid}">${post. positionname}</option>
                                        </c:forEach>
                                    </select>
                                 </div>
                                <a class="btn btn-xs btn-success pull-right mybtn" id="submitresultbtn" type="button">Get
                                </a>

                            </form>
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
      <div id="loader" class="loader" style="display:none">
                      <img src="assets/img/loader.gif" class="loader_img">
                </div>
    </div>
       </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
  
    <!--start footer-->
    <jsp:include page="admin-includes/footer.jsp"/>
  </div>
  <script>
   $(function(){
       
       $("#submitresultbtn").click(function(){
           var position=$("#position_input").val();
           var loader=$("#loader").show();
           $("#tallying-center").html(loader);
           $("#tallying-center").load('AjaxSelectWinnerByPosition?id=1&&position='+position);
        })
        
         $(".resultsummarybtn").click(function(){
                          $("#tallying-center").load('LoadResultSummary');
                     })
          
   })

  </script>
</body>

</html>

