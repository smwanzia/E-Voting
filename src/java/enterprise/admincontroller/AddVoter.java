/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.admincontroller;

import enterprise.business.Voters;
import enterprise.data.VoterDB;
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
 * @author xmore mmohz
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)   // 50MB
public class AddVoter extends HttpServlet {
    
 /**
     * Name of the directory where uploaded files will be saved, relative to the
     * web application directory.
     */
    private static final String SAVE_DIR = "images";
    private static final String DestinationPath="voterImages";

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
            Part file = request.getPart("image");
            String fileName = extractFileName(file);
           
           // File uploadFile=new File(DestinationDir,fileName);
            file.write(DestinationDir + File.separator + fileName);
           // file.write(uploadFile);
            Voters user = new Voters();
            
            String firstname= request.getParameter("firstname");
            String lastname= request.getParameter("lastname");
            String nationalid= request.getParameter("nationalid");
            String county= request.getParameter("department");
            String constituency=request.getParameter("constituency");
           // String age=request.getParameter("age");
           // String ward=request.getParameter("ward");
            //String location=request.getParameter("location");
            String image=request.getParameter("image");
            String phonenumber=request.getParameter("phonenumber");
            //String village= request.getParameter("village");
            //String DOB=request.getParameter("DOB");
            String email=request.getParameter("emailaddress");
            String username=request.getParameter("username");
             
            user.setFirstname(firstname);
            user.setLastname(lastname);
            user.setNationalId(nationalid);
            user.setCounty(county);
            user.setConstituency(constituency);
            //user.setWard(ward);
            //user.setAge(age);
           // user.setLocation(location);
            user.setImageUrl(image);
            user.setPhonenumber(phonenumber);
            //user.setResident(location);
           // user.setDOB(DOB);
            user.setEmailaddress(email);
            user.setImageUrl(fileName);
            user.setSecondname(username);
            
            String type=request.getParameter("type");
            if(type.equals("Add")){
            if(VoterDB.checkNationalIdExist(nationalid)){
                //if return true
                  session.setAttribute("errormsg","<h2 style='color:darkred;font-size:15px'>RegNo Already used<h2>");
                 request.getRequestDispatcher("WEB-INF/admin/error.jsp").forward(request, response);
                
            }else{
                //check username
                if(VoterDB.checkUsernameExist(username)){
                     session.setAttribute("errormsg","<h2 style='color:darkred;font-size:15px'>Username Already used<h2>");
                    request.getRequestDispatcher("WEB-INF/admin/error.jsp").forward(request, response);
                }else{
                    //add voter
                       int i=VoterDB.CreateVoters(user);
                        if(i>0){
                             //url="AllVoters";
                             session.setAttribute("success","<h2 style='color:green;font-size:15px'>voter was successfully added</h2>");
                            request.getRequestDispatcher("WEB-INF/admin/success.jsp").forward(request, response);
                        }else{
                             //url="AddVoter.jsp";
                             session.setAttribute("errormsg","<h2 style='color:darkred;font-size:15px'>Errorr Occured try again<h2>");
                             request.getRequestDispatcher("WEB-INF/admin/error.jsp").forward(request, response);
                        }
                    
                }
            }
            }else{
                //update
                 int c=VoterDB.UpdateVoterDetails(user);
                 session.setAttribute("success","<h2 style='color:green;font-size:15px'>voter was successfully updated</h2>");
                 request.getRequestDispatcher("WEB-INF/admin/success.jsp").forward(request, response);
                
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
