/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Abhishek Singh
 */
public class adminp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        PrintWriter out = response.getWriter();  
          
String n=request.getParameter("name");  
String ui=request.getParameter("univid");  
String fn=request.getParameter("fname"); 
String mn=request.getParameter("mname"); 
String m=request.getParameter("mobileno");
String e=request.getParameter("email");
String d=request.getParameter("dob");
String c=request.getParameter("city");

          
try{  
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/hostelmanagement?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","abhi@2821");  
  
PreparedStatement ps=con.prepareStatement(  
"insert into userp values(?,?,?,?,?,?,?,?)");  
  
ps.setString(1,n);  
ps.setString(2,ui);  
ps.setString(3,fn);  
ps.setString(4,mn);
ps.setString(5,m);
ps.setString(6,e);
ps.setString(7,d);
ps.setString(8,c);
          
int i=ps.executeUpdate();  
if(i>0)  
    
     out.println("<script type=\"text/javascript\">");
       out.println("alert('Profile updated successfully');");
       out.println("</script>"); 
request.getRequestDispatcher("/up.jsp").include(request, response);
      
          
}catch (Exception e2) {System.out.println(e2);}  
          
out.close();  
}  
  
  


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
