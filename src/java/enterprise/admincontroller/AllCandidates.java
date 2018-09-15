/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.business.Candidate;
import enterprise.business.VyingPosition;
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
 * @author xmore mmohz
 */
public class AllCandidates extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doPost(request,response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession();
        ArrayList<Candidate> candidate=CandidateDB.selectAspirant();
        ArrayList<VyingPosition> position=CandidateDB.selectPosition();
        
        getServletContext().setAttribute("position", position);
        request.setAttribute("candidate",candidate);
        String url="";
        url="candidates.jsp";
        request.getRequestDispatcher("WEB-INF/admin/"+url).forward(request, response);
    }

     

}
