<%-- 
    Document   : VoteResults
    Created on : Apr 8, 2018, 9:21:41 PM
    Author     : xmore mmohz
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-12 col-sm-12">
                <div class="row">
                    <div class="col-md-12">
                     <h3 class="myh1">Results by ${winner.position} </h3>
                        <table class="table table-bordered table-hover table-condensed" id="datTable" width="100%" cellspacing="0">
                             <thead>
                                <tr>
                                     <th>Aspirants</th>
                                     <th>Position</th>
                                     <th>Total Votes</th>

                                 </tr>
                             </thead>
                             <tbody>
                                 <c:forEach var="results" items="${results}">
                                     <tr>
                                           <td>${results.firstname} ${results.lastname}</td>
                                           <td>${results.position}</td>
                                           <td>${results.totalvotes}</td>

                                     </tr>
                                 </c:forEach>
                             </tbody>
                         </table>
                    </div>
                </div>
                <div class="row">
                     <div class="col-md-12 col-lg-12 col-xs-6 col-sm-6">
                         <h3 class="mywinner" style=""> <%-- ${MaxVote.firstname}  ${winner.firstname} ${winner.lastname} With ${winner.totalvotes}--%>  </h3>
                        <a href="javascript:void()" id="" class="btn btn-success btn-sm pull-right pdfbtn">Export to pdf</a>
                    </div>
                </div>
            </div>
</div>
                 
                 <script>
                     $(".pdfbtn").click(function(){
                          $("#tallying-center").load('LoadResultByPosition?position='+${winner.personId});
                     })
                     </script>