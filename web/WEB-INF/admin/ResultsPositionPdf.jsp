<%-- 
    Document   : ResultsPositionPdf
    Created on : Apr 9, 2018, 3:29:01 PM
    Author     : xmore mmohz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
    <div class="col-md-12 col-sm-12">
                 <object data="${pageContext.request.contextPath}/ResultByPositionPdf?position=${psid}"
                                   type="application/pdf" width="100%" height="400px"></object>
            </div>
</div> 

