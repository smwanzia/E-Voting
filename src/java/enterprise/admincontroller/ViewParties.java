/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.business.PoliticalParty;
import enterprise.data.CandidateDB;
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
public class ViewParties extends HttpServlet {

   

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doPost(request,response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
           HttpSession session=request.getSession();
           ArrayList<PoliticalParty> party=CandidateDB.selectParties();
           session.setAttribute("party", party);
           request.getRequestDispatcher("/WEB-INF/admin/viewPoliticalParty.jsp").forward(request, response);
    }

   
   

}
