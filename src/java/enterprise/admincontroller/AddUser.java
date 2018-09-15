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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author xmore mmohz
 */
public class AddUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String userpath=request.getServletPath();
            String url="";
            HttpSession session=request.getSession();
        
            String firstname=request.getParameter("firstname");
            String lastname=request.getParameter("lastname");
            String username=request.getParameter("username");
            String phone= request.getParameter("phonenumber");
            String email=request.getParameter("emailaddress");
            String password=request.getParameter("password");
            String role= request.getParameter("roleid");
            
           String newPass= Encrypt.encryptSHA1(password);
            Users user = new Users();
            user.setFirstname(firstname);
            user.setLastname(lastname);
            user.setSecondname(username);
            user.setPassword(newPass);
            user.setPhonenumber(phone);
            user.setEmailaddress(email);
            user.setRoleid(role);
            
            Users user1=UserDB.selectUserByEmailAddress("simo@gmail.com");
            String existingemail=user1.getEmailaddress();
            if(UserDB.checkEmailExist(email)){
              // session.setAttribute("errormsg","This email already exist,try different one");
                    session.setAttribute("errormsg","<h2 style='color:darkred;font-size:15px'>This email already exist,try different one<h2>");
                    request.getRequestDispatcher("WEB-INF/admin/error.jsp").forward(request, response);
              // url="AllUsers";
            }else{
               
               //check username
               if(UserDB.checkUsernameExist(username)){
                     session.setAttribute("errormsg","<h2 style='color:darkred;font-size:15px'>This username already exist,try different one<h2>");
                    request.getRequestDispatcher("WEB-INF/admin/error.jsp").forward(request, response);
               }else{
                       int c=UserDB.AddUserAccount(user);
                       if(c>0){
                             //url="AllVoters";
                            session.setAttribute("success","<h2 style='color:green;font-size:15px'>User was successfully added</h2>");
                            request.getRequestDispatcher("WEB-INF/admin/success.jsp").forward(request, response);
                        }else{
                             //url="AddVoter.jsp";
                             session.setAttribute("errormsg","<h2 style='color:darkred;font-size:15px'>Errorr Occured try again<h2>");
                             request.getRequestDispatcher("WEB-INF/admin/error.jsp").forward(request, response);
                        }
                   
               }
               
                /*if(c>0){
                    url="AllUsers";
                    session.setAttribute("msg","User was successfully added");

               }else{
                    url="AllUsers.jsp";
                    session.setAttribute("msg","Errorr Occured try again");

               }*/
          }
            //request.getRequestDispatcher(url).forward(request, response); 
    }
}
    

  
   


