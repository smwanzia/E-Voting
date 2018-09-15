/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.controllerservlet;

import enterprise.business.Voters;
import enterprise.data.VoterDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DE_XMORE
 */
public class login extends HttpServlet {

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                        HttpSession session=request.getSession();
                        String url="";
                        String username=request.getParameter("username");
                        String password=request.getParameter("password");

                        String message="";
                        if(password == null|| password.equals("")){
                              url="/login.jsp";
                              request.setAttribute("Msg","<h5 style='color:darkred'>password can not be null</h5>");
                        } if(username == null || username.equals("")){
                              request.setAttribute("Msg","User name is required");
                              url="/login.jsp";
                        }
                        else {

                          Voters user=VoterDB.selectVoterByUsername(username);

                          if (user.getSecondname() == null) {
                                  url = "/login.jsp";
                                  message = //"<h4>Login Authentication Failure</h4>"
                                          "<p style='color:darkred'>That User Account was not found.</p>";
                                  session.setAttribute("Msg", message);
                          } else {
                                  String storedPassword = user.getNationalId();

                                  if (!storedPassword.matches(password)) {
                                        url = "/login.jsp";
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
                                                url="/profile";
                                                session.setAttribute("voteduser","You already Casted your Vote");
                                              // request.getRequestDispatcher("WEB-INF/jsp/"+url).forward(request, response);
                                          }else{
                                        //select system system and put to application context
                                                session.setAttribute("loggedInUser", user);
                                                url = "/toVote";
                                          }
                                    }

                                }
                             }
                        
                      getServletContext().getRequestDispatcher(url).forward(request, response);
    }

   

}
