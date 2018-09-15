/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.controllerservlet;

import enterprise.business.Candidate;
import enterprise.business.CastVote;
import enterprise.business.Users;
import enterprise.business.Voters;
import enterprise.business.VyingPosition;
import enterprise.data.CandidateDB;
import enterprise.data.UserDB;
import enterprise.data.VoteCountDB;
import enterprise.data.VoterDB;
import enterprise.util.Encrypt;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
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
@WebServlet(name = "ControllerServlet", urlPatterns = {"/ControllerServlet",
   "/PlaceVote"
        })
public class ControllerServlet extends HttpServlet {

   

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        doPost(request,response);
    }

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       

                String userpath=request.getServletPath();
                HttpSession session=request.getSession();
                String url="";
                   /* if(userpath.equals("/toVote")){
                        
                       url="PollingStation.jsp";
                        request.getRequestDispatcher("/WEB-INF/jsp/"+url).forward(request, response);
                    } */
                     if(userpath.equals("login")){
                    /*
                        String username=request.getParameter("username");
                        String password=request.getParameter("password");

                        String message="";
                        if(password == null|| password.equals("")){
                              url="login.jsp";
                              request.setAttribute("Msg","<h5 style='color:darkred'>password can not be null</h5>");
                        } if(username == null || username.equals("")){
                              request.setAttribute("Msg","User name is required");
                              url="login.jsp";
                        }
                        else {

                          Voters user=VoterDB.selectVoterByUsername(username);

                          if (user.getSecondname() == null) {
                                  url = "login.jsp";
                                  message = //"<h4>Login Authentication Failure</h4>"
                                          "<p style='color:darkred'>That User Account was not found.</p>";
                                  session.setAttribute("Msg", message);
                          } else {
                                  String storedPassword = user.getNationalId();

                                  if (!storedPassword.matches(password)) {
                                        url = "login.jsp";
                                        message = //"<h4 >Login Authentication Failure</h4>"
                                                "<p><h5 style='color:darkred'>You entered wrong credentials.</h5></p>";
                                        session.setAttribute("Msg", message);
                                        session.setAttribute("loggedInUser", user);
                                    //if username and password is correct 
                                      //redirect 
                                  }else {
                                      //check if user has voted
                                        Voters Castedvote=VoterDB.selectVotedUser(password);
                                          if(Castedvote.getNationalId().contains(password)){
                                                url="profile";
                                                session.setAttribute("voteduser","You already Casted your Vote");
                                              // request.getRequestDispatcher("WEB-INF/jsp/"+url).forward(request, response);
                                          }else{
                                        //select system system and put to application context
                                                session.setAttribute("loggedInUser", user);
                                                url = "toVote";
                                          }
                                    }

                                }
                             }
                      request.getRequestDispatcher(url).forward(request, response);
                      */
                    }
                    
                     else if(userpath.equals("/PlaceVote")){
          
                            Voters user=(Voters)session.getAttribute("loggedInUser");

                            String nationalId=user.getNationalId();
                            //String candidateid=request.getParameter("candidateid");
                            
                             String[] position=request.getParameterValues("position");
  
                             Voters Castedvote=VoterDB.selectVotedUser(nationalId);
                              int c=0;
                             if(Castedvote.getNationalId().contains(nationalId)){
                                url="error.jsp";
                                session.setAttribute("vote","You Have already Voted");
                               request.getRequestDispatcher("WEB-INF/jsp/"+url).forward(request, response);
                            }else{
                                //select all   candidate
                               
                                for(String nationalid:position){
                                  // for(Candidate candi:candidate){
                                    //selecting existing candidates
                                    ArrayList<Candidate> candidate=CandidateDB.selectAspirantByID(nationalid);
                                    for(Candidate existing_candidate:candidate){
                                       int candidatevote=existing_candidate.getTotalvotes();
                                       //get previous votes and add 1
                                           int totalvotes=candidatevote+1;
                                                CastVote newvote=new CastVote();
                                                    newvote.setCandidateId(nationalid);
                                                    newvote.setVotes(totalvotes);
                                                    //c=VoterDB.PlaceVote(nationalid);
                                                    //update new votes
                                                    c=VoterDB.UpdateTotalVote(newvote);
                                                 
                                          //  }
                                     }
                                }
                                        
                            }
                                  if(c>0){
                                        //update user as voted
                                        Voters voted=new Voters();
                                        voted.setNationalId(nationalId);
                                        VoterDB.InsertVotedUser(voted, "Voted");
                                     }
                            url="success.jsp";
                            session.setAttribute("success","You have casted your vote successfully ,click below button to check result");
                            request.getRequestDispatcher("WEB-INF/jsp/"+url).forward(request, response);

                         }
              
                    // }
                    
     
              }
                     
    }


   
    


