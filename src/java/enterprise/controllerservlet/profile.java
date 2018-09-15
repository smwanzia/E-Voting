/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.controllerservlet;

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
 * @author xmore mmohz
 */
public class profile extends HttpServlet {

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doPost(request,response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            HttpSession session=request.getSession();
            ArrayList<Candidate> candidate=CandidateDB.selectAllCandidate();
            session.setAttribute("votedcand", candidate);
            ArrayList<VyingPosition> position=CandidateDB.selectPosition();
            session.setAttribute("myposi", position);
               
            ArrayList<CastVote> totalvotes=VoteCountDB.selectTotalVoteCasted();
            session.setAttribute("totalkura",totalvotes);
            request.getRequestDispatcher("WEB-INF/jsp/profile.jsp").forward(request, response);
    }

   
}
