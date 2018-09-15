/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.business.Users;
import enterprise.data.UserDB;
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
public class ResetPassword extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doPost(request,response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        HttpSession session=request.getSession();
        String password=request.getParameter("password");
        String id=request.getParameter("id");
        Users user=new Users();
        String url="";
        user.setPassword(password);
        user.setUserid(id);
        int c=UserDB.ResetUserPassword(user);
        if(c>0){
            session.setAttribute("reset","<h>you have successfully reset your password</h>");
           url="WEB-INF/admin/updateUser.jsp";
        }else{
             session.setAttribute("reset","<h style='color:darkred'>Error Occured ,try again later</h>");
            url="WEB-INF/admin/updateUser.jsp";
        }
        request.getRequestDispatcher(url).forward(request, response);
    }

   

}
