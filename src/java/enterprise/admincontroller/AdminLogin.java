/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.business.Users;
import enterprise.data.UserDB;
import enterprise.util.Encrypt;
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
public class AdminLogin extends HttpServlet {

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String password=request.getParameter("password");
        String message = "";
        String url = "";
        
        if(password == null|| password.equals("")){
                url="WEB-INF/admin/login.jsp";
                request.setAttribute("Msg","<h5 style='color:darkred'>password can not be null</h5>");
        }if(email == null || email.equals("") ||!email.contains("@")){
                request.setAttribute("Msg","<p style='color:darkred'>Enter a valid email address</p>");
                 url="WEB-INF/admin/login.jsp";
        }if(password.length()<5){
                 request.setAttribute("Msg","<p style='color:darkred'>Password must greate than 5 characters</p>");
                 url="WEB-INF/admin/login.jsp";
        }
        
        else{
             String hashedpassword = Encrypt.encryptSHA1(password);
             Users user=UserDB.selectUserByEmailAddress(email);
       
             if (user.getEmailaddress() == null) {
                    url = "WEB-INF/admin/login.jsp";
                    message = //"<h4>Login Authentication Failure</h4>"
                            "<p style='color:darkred'>That User Account was not found.</p>";
                    session.setAttribute("Msg", message);
            } else {
                    String storedPassword = user.getPassword();

                    if (!storedPassword.matches(hashedpassword)) {
                        url = "WEB-INF/admin/login.jsp";
                        message = //"<h4 >Login Authentication Failure</h4>"
                                "<p><h5 style='color:darkred'>You entered wrong credentials.</h5></p>";
                        session.setAttribute("Msg", message);

                    }else {
                        //select system system and put to application context
                        message = "welcome" + user.getSecondname() + "";
                        session.setAttribute("adminuser", user);
                        session.setAttribute("welkam", message);

                        url = "WEB-INF/admin/index.jsp";
                      }

                }
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

}
