/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.business.PoliticalParty;
import enterprise.business.Users;
import enterprise.business.Voters;
import enterprise.data.CandidateDB;
import enterprise.data.UserDB;
import enterprise.data.VoterDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "Admin", urlPatterns = {"/Admin","/tocandidate","/tovoters","/logmeout","/UserById","/toElectionSetup"})
public class Admin extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String userpath=request.getServletPath();
        HttpSession session=request.getSession();
        String url="";
     
         if(userpath.equals("/tocandidate")){
             
            ArrayList<Voters> nvoter= VoterDB.selectAllVoters();
            //ArrayList<PoliticalParty> party=CandidateDB.selectParties();
            session.setAttribute("selectedId",nvoter);
            //session.setAttribute("partyid",party);
            url="WEB-INF/admin/AddCandidate.jsp"; 
         }
         
         else if(userpath.equals("/Admin")){
              url="WEB-INF/admin/login.jsp"; 
         }
         else if(userpath.equals("/tovoters")){
              ArrayList<PoliticalParty> party=CandidateDB.selectParties();
              session.setAttribute("partyid",party);
             
              url="WEB-INF/admin/AddVoter.jsp"; 
         }
         else if(userpath.equals("/logmeout")){
             
             Users adminuser=(Users)session.getAttribute("adminuser");
             session.invalidate();
             url="WEB-INF/admin/login.jsp";
         }
         else if(userpath.equals("/UserById")){
             
             String id=request.getParameter("id");
             Users user=UserDB.selectUserById(id);
             session.setAttribute("user", user);
             url="WEB-INF/admin/updateUser.jsp"; 
         }
         else if(userpath.equals("/toElectionSetup")){
             url="WEB-INF/admin/ElectionSetting.jsp"; 
         }
          
           request.getRequestDispatcher(url).forward(request, response); 
       }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       processRequest(request, response);
      }
       //    
    }

     


