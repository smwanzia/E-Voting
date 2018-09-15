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
import java.util.Collections;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xmore mmohz
 */
public class AjaxSelectWinnerByPosition extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession();
        String position=request.getParameter("position");
        String admin=request.getParameter("id");
        
        ArrayList<Candidate> results=VoteCountDB.selectResultsByPosition(position);
        Candidate winner=VoteCountDB.selectWinnerPerPosition(position);
        
        
        ArrayList<Candidate> cand=VoteCountDB.selectResultsByPosition(position);
        Candidate maxV=new Candidate();
        String name="";
        for(Candidate candidates:cand){
            name=candidates.getFirstname();
            int vote=candidates.getTotalvotes();
            List<Candidate> newcand=new ArrayList<Candidate>();
            newcand.add(new Candidate(vote,name));
            maxV=Collections.max(newcand);
        }
        session.setAttribute("results", results);
        session.setAttribute("winner", winner);
        session.setAttribute("MaxVote", maxV);
        
        session.setAttribute("admin", admin);
        
        String url="WEB-INF/admin/VoteResults.jsp";
        request.getRequestDispatcher(url).forward(request, response);
        
            
    }

   

}
