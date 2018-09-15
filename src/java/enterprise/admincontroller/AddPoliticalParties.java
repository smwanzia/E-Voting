/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.business.PoliticalParty;
import enterprise.data.CandidateDB;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author DE_XMORE
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class AddPoliticalParties extends HttpServlet {
    
     /**
     * Name of the directory where uploaded files will be saved, relative to the
     * web application directory.
     */
    private static final String SAVE_DIR = "images";
    private static final String DestinationPath="PartyImages";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String url="";
            HttpSession session=request.getSession();
            /*
           // gets absolute path of the web application
            String appPath = request.getServletContext().getRealPath("/");
            // constructs path of the directory to save uploaded file
            String savePath = appPath + SAVE_DIR;
            String message = "";
        
        
         // creates the save directory if it does not exists
            File fileSaveDir = new File(savePath);
            if (!fileSaveDir.exists()) {
                fileSaveDir.mkdir();
            }
             File DestinationDir = new File(savePath+"/"+DestinationPath);
             if(!DestinationDir.exists()){
              DestinationDir.mkdir();
            }
            //get part
            Part file = request.getPart("symbol");
            String fileName = extractFileName(file);
           // File uploadFile=new File(DestinationDir,fileName);
            file.write(DestinationDir + File.separator + fileName);
           // file.write(uploadFile);
        */
            String partyname=request.getParameter("partyname");
            String partysymbol=request.getParameter("symbol");
            
            PoliticalParty party=new PoliticalParty();
            party.setPartyname(partyname);
           // party.setSymbol(fileName);
            int i=CandidateDB.AddPolyticalParties(party);
            
            if(i>0){
                //response.getWriter().write("successfully added");
                 url="ViewParties";
                 request.getRequestDispatcher(url).forward(request, response);
                 //session.setAttribute("msg","voter was successfully added");
            }else{
                // response.getWriter().write("successfully added");
                 url="toElectionSetup";
                 request.getRequestDispatcher(url).forward(request, response);
                 //session.setAttribute("msg","<h2 style='color:darkred'>Errorr Occured try again<h2>");
            }
       
    }

   /**
     * Extracts file name from HTTP header content-disposition
     */
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    } 


}
