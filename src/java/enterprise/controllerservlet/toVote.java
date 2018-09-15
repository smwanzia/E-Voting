/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.controllerservlet;

import enterprise.business.Candidate;
import enterprise.data.CandidateDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DE_XMORE
 */
public class toVote extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                HttpSession session=request.getSession();
        
                ArrayList<Candidate> president=CandidateDB.selectCandidateByPosition("1");
                ArrayList<Candidate> Academicaffairs=CandidateDB.selectCandidateByPosition("3");
                ArrayList<Candidate> finance=CandidateDB.selectCandidateByPosition("5");
                ArrayList<Candidate> sports=CandidateDB.selectCandidateByPosition("4");
                ArrayList<Candidate> SG=CandidateDB.selectCandidateByPosition("2");
                //ArrayList<Candidate> Governor=CandidateDB.selectCandidateByPosition("6");
                
                session.setAttribute("president", president);
                session.setAttribute("academics",Academicaffairs);
                session.setAttribute("finance", finance);
                session.setAttribute("sports",sports);
                session.setAttribute("SG",SG);
               // session.setAttribute("MCA",Governor);
            
               String url="PollingStation";
               request.getRequestDispatcher("WEB-INF/jsp/"+url+".jsp").forward(request, response);
      
    }

  

}
