/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.business.Candidate;
import enterprise.data.CandidateDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xmore mmohz
 */
public class AddCandidate extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doPost(request,response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        HttpSession session=request.getSession();
        
        String position=request.getParameter("position");
        String nationalid=request.getParameter("nationalid");
        String partyid=request.getParameter("partyid");
        
        Candidate cand=new Candidate();
        cand.setPosition(position);
        cand.setNationalId(nationalid);
        cand.setPartyId(partyid);
       
        Candidate candi=CandidateDB.selectCandidateById(nationalid);
         String existingId=candi.getNationalId();
        if(existingId.contains(nationalid)){
            //session.setAttribute("pmsg","This candidate is already registered");
               session.setAttribute("errormsg","<h2 style='color:darkred;font-size:15px'>This candidate already exist,try different one<h2>");
               request.getRequestDispatcher("WEB-INF/admin/error.jsp").forward(request, response);
         
        }else{
                 CandidateDB.AddCandidate(cand);
                 session.setAttribute("success","<h2 style='color:green;font-size:15px'>candidate was successfully added</h2>");
                request.getRequestDispatcher("WEB-INF/admin/success.jsp").forward(request, response);
                //request.getRequestDispatcher("AllCandidates").forward(request, response);
        }
       
      
        
        
    }

   
   

}
