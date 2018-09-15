/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.business.Candidate;
import enterprise.business.CastVote;
import enterprise.business.VyingPosition;
import enterprise.data.CandidateDB;
import enterprise.data.VoteCountDB;
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
public class TallyingCenter extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         //select all candidates
          
               String userpath=request.getServletPath();
               HttpSession session=request.getSession();

               String url="";
             ArrayList<Candidate> candidate=CandidateDB.selectAllCandidate();
             session.setAttribute("cand", candidate);
               
             ArrayList<CastVote> totalvotes=VoteCountDB.selectTotalVoteCasted();
             session.setAttribute("totalvotes",totalvotes);
             
            ArrayList<VyingPosition> position=CandidateDB.selectPosition();
        
            getServletContext().setAttribute("myposition", position);
             
            url="tallyingCenter";
            request.getRequestDispatcher("WEB-INF/admin/"+url+".jsp").forward(request, response);
    }

   

}
