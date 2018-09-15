/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.util.JasperReport;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xmore mmohz
 */
public class ResultSummaryReport extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            HttpSession session=request.getSession();
            String userpath=request.getServletPath();
            String url="";
        
                JasperReport reportObj=new JasperReport();
                ServletContext sc = this.getServletConfig().getServletContext();
                String filepath="/Reports/Resultsummary.jrxml";
                String title="Summary Report";
                reportObj.GeneratePdf(response, filepath,title, sc);
    }

   
}
