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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xmore mmohz
 */
@WebServlet(name = "ReportServlet", urlPatterns = {"/ReportServlet","/VoterRegisterPdf","/ResultByPositionPdf",
                    "/LoadResultByPosition","/LoadResultSummary","/Candidatelist","/votedUser"})
public class ReportServlet extends HttpServlet {

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
       
       if(userpath.equals("/VoterRegisterPdf")){
           
                JasperReport reportObj=new JasperReport();
                ServletContext sc = this.getServletConfig().getServletContext();
                String filepath="/Reports/VoterRegister.jrxml";
                String title="Summary Report";
                reportObj.GeneratePdf(response, filepath,title, sc);
       }
       
       else if(userpath.equals("/ResultByPositionPdf")){
                
                JasperReport reportObj=new JasperReport();
                ServletContext sc = this.getServletConfig().getServletContext();
                String filepath="/Reports/ResultsByPosition.jrxml";
                String title="Summary Report";
                String position=request.getParameter("position");
                reportObj.ExportToPdf(response, filepath, title, sc, position);
       }
       else if(userpath.equals("/LoadResultByPosition")){
           
            String position=request.getParameter("position");
            session.setAttribute("psid",position);
           String url="WEB-INF/admin/ResultsPositionPdf.jsp";
           request.getRequestDispatcher(url).forward(request, response);
       
    }
          else if(userpath.equals("/LoadResultSummary")){
            String url="WEB-INF/admin/LoadResultSummary.jsp";
           request.getRequestDispatcher(url).forward(request, response);
       
    }
       
          else if(userpath.equals("/Candidatelist")){
               JasperReport reportObj=new JasperReport();
                ServletContext sc = this.getServletConfig().getServletContext();
                String filepath="/Reports/CandidateList.jrxml";
                String title="Summary Report";
                reportObj.GeneratePdf(response, filepath, title, sc);
       
    }
        else if(userpath.equals("/votedUser")){
               JasperReport reportObj=new JasperReport();
                ServletContext sc = this.getServletConfig().getServletContext();
                String filepath="/Reports/VotedUsers.jrxml";
                String title="Summary Report";
                reportObj.GeneratePdf(response, filepath, title, sc);
       
    }
          

  
    }
}
