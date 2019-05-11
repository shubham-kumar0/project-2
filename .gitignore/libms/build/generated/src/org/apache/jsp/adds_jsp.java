package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adds_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

 if(!(request.getSession().getAttribute("username") ==null)){
    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<nav style=\"float: right\">\n");
      out.write("        <p style=\"background-color:none; font-family: cursive;margin-top: 0px;color:white;text-decoration:none;font-size:30px;margin-left:40px;border: 1px;border-radius:60px\">\n");
      out.write("                   \n");
      out.write("        ");


            String str = (String) session.getAttribute("username");

            out.print("Welcome " + str);
            

        
      out.write("\n");
      out.write("        </p>\n");
      out.write("        <form action=\"logout\" method=\"post\" ><a ><input type=\"submit\" value=\"Log Out\"  style=\"background-color:red;color:white;text-decoration:none;font-size:20px;margin-left:230px;border: 1px;border-radius:60px\"></a></form>\n");
      out.write("                   ");
 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
      out.write("\n");
      out.write("</nav>\n");
      out.write("        \n");
      out.write("<html>\n");
      out.write("       <style>\n");
      out.write("           /* Navbar container */\n");
      out.write(".navbar {\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: #333;\n");
      out.write("  font-family: Arial;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Links inside the navbar */\n");
      out.write(".navbar a {\n");
      out.write("  float: left;\n");
      out.write("  font-size: 16px;\n");
      out.write("  color: white;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The dropdown container */\n");
      out.write(".dropdown {\n");
      out.write("  float: left;\n");
      out.write("  overflow: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Dropdown button */\n");
      out.write(".dropdown .dropbtn {\n");
      out.write("  font-size: 16px; \n");
      out.write("  border: none;\n");
      out.write("  outline: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  background-color: inherit;\n");
      out.write("  font-family: inherit; /* Important for vertical align on mobile phones */\n");
      out.write("  margin: 0; /* Important for vertical align on mobile phones */\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add a red background color to navbar links on hover */\n");
      out.write(".navbar a:hover, .dropdown:hover .dropbtn {\n");
      out.write("  background-color: red;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Dropdown content (hidden by default) */\n");
      out.write(".dropdown-content {\n");
      out.write("  display: none;\n");
      out.write("  position: absolute;\n");
      out.write("  background-color: #f9f9f9;\n");
      out.write("  min-width: 160px;\n");
      out.write("  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("  z-index: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Links inside the dropdown */\n");
      out.write(".dropdown-content a {\n");
      out.write("  float: none;\n");
      out.write("  color: black;\n");
      out.write("  padding: 12px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: block;\n");
      out.write("  text-align: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add a grey background color to dropdown links on hover */\n");
      out.write(".dropdown-content a:hover {\n");
      out.write("  background-color: #ddd;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Show the dropdown menu on hover */\n");
      out.write(".dropdown:hover .dropdown-content {\n");
      out.write("  display: block;\n");
      out.write("}/* Navbar container */\n");
      out.write(".navbar {\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: #333;\n");
      out.write("  font-family: Arial;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Links inside the navbar */\n");
      out.write(".navbar a {\n");
      out.write("  float: left;\n");
      out.write("  font-size: 16px;\n");
      out.write("  color: white;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The dropdown container */\n");
      out.write(".dropdown {\n");
      out.write("  float: left;\n");
      out.write("  overflow: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Dropdown button */\n");
      out.write(".dropdown .dropbtn {\n");
      out.write("  font-size: 16px; \n");
      out.write("  border: none;\n");
      out.write("  outline: none;\n");
      out.write("  color: black;\n");
      out.write("  padding:17.5px 60px;\n");
      out.write("  background-color:lightcyan ;\n");
      out.write("  font-family: inherit; /* Important for vertical align on mobile phones */\n");
      out.write("  margin: 0; /* Important for vertical align on mobile phones */\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add a red background color to navbar links on hover */\n");
      out.write(".navbar a:hover, .dropdown:hover .dropbtn {\n");
      out.write("  background-color:lightgoldenrodyellow;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Dropdown content (hidden by default) */\n");
      out.write(".dropdown-content {\n");
      out.write("  display: none;\n");
      out.write("  position: absolute;\n");
      out.write("  background-color: #f9f9f9;\n");
      out.write("  min-width: 160px;\n");
      out.write("  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("  z-index: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Links inside the dropdown */\n");
      out.write(".dropdown-content a {\n");
      out.write("  float: none;\n");
      out.write("  color: black;\n");
      out.write("  padding: 20px 25px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: block;\n");
      out.write("  text-align: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add a grey background color to dropdown links on hover */\n");
      out.write(".dropdown-content a:hover {\n");
      out.write("  background-color: #ddd;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Show the dropdown menu on hover */\n");
      out.write(".dropdown:hover .dropdown-content {\n");
      out.write("  display: block;\n");
      out.write("}\n");
      out.write("            body \n");
      out.write("            {\n");
      out.write("                     background-image: url(books-closeup.jpg);\n");
      out.write("            }\n");
      out.write("              .div01\n");
      out.write("            {\n");
      out.write("                border-radius:25px;\n");
      out.write("                height:520px;\n");
      out.write("                width: 400px;\n");
      out.write("                background-color:whitesmoke;\n");
      out.write("                margin-top:60px;\n");
      out.write("                margin-left: 440px;\n");
      out.write("                font-size:20px;\n");
      out.write("                float:left;\n");
      out.write("            }\n");
      out.write("            .div01 a\n");
      out.write("            {\n");
      out.write("                padding: 10px 30px;\n");
      out.write("                float:left;\n");
      out.write("            }\n");
      out.write("  .div1\n");
      out.write("{\n");
      out.write("    width: 1350;\n");
      out.write("    height: 120px;  \n");
      out.write("}\n");
      out.write(".div2\n");
      out.write("{\n");
      out.write("    width: 1350px;\n");
      out.write("    height: 52px;  \n");
      out.write("}\n");
      out.write(".div2 a\n");
      out.write("{\n");
      out.write("    float: left;\n");
      out.write("    text-decoration: none;\n");
      out.write("    color:black;\n");
      out.write("    font-size: 20px;\n");
      out.write("    background-color:lightcyan;\n");
      out.write("    padding: 15px 44.5px;\n");
      out.write("}\n");
      out.write(".div2 a:hover{color:red;background-color:lightgoldenrodyellow ;}\n");
      out.write("       </style>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("           <div class=\"div1\">\n");
      out.write("                <img src=\"images.jpg\" style=\"height: 100px;width: 100px;float:left;margin-left: 20;margin-top: 5;\">\n");
      out.write("                <h1 style=\"font-family: cursive;text-shadow: 3px 3px 3px white;color: red;float:left;margin-left: 300px;\">LIBRARY MANAGEMENGT SYSTEM</h1>\n");
      out.write("</div>\n");
      out.write("   \n");
      out.write("    \n");
      out.write(" \n");
      out.write("     <div class=\"div2\">\n");
      out.write("               <nav>\n");
      out.write("              \n");
      out.write("               \n");
      out.write("               \n");
      out.write("                  <a href=\"adds.jsp\">Add User</a>\n");
      out.write("                   <a href=\"addbook.jsp\">Add Book</a>\n");
      out.write("  \n");
      out.write("    <a href=\"showbook.jsp\">Show Issued Books</a>\n");
      out.write("    \n");
      out.write("    <a href=\"fine.jsp\">Impose Fine</a>\n");
      out.write("               \n");
      out.write("    <a href=\"allbook.jsp\">All books</a>    \n");
      out.write("                   <a href=\"adminp.jsp\">Admin profile</a>\n");
      out.write("                \n");
      out.write("                   <a href=\"up.jsp\">Update Profile</a>\n");
      out.write("                 \n");
      out.write("                       \n");
      out.write("               </nav>\n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"div01\">\n");
      out.write("                  \n");
      out.write("                    <h3 style=\"margin-left:60px;margin-top: 40px;\">Username</h3>\n");
      out.write("                    <form method=\"post\" action=\"register\">\n");
      out.write("                    <input type=\"text\"  id=\"input1\" name=\"uname\" style=\"margin-left: 60px;font-size: 20px;\" required onfocus=\"style.background='firebrick';style.color='white'\" onblur=\"style.background='grey'\">\n");
      out.write("                    <h3 style=\"margin-left:60px\">Password</h3>\n");
      out.write("                    <input type=\"password\" id=\"input2\" name=\"pwd1\" style=\"margin-left: 60px;font-size: 20px\" required onfocus=\"style.background='firebrick';style.color='white'\" onblur=\"style.background='grey'\"><br>\n");
      out.write("                    <h3 style=\"margin-left:60px\">University ID</h3>\n");
      out.write("                    <input type=\"text\" id=\"input3\" name=\"univid\"   style=\"margin-left: 60px;font-size: 20px\" required onfocus=\"style.background='firebrick';style.color='white'\" onblur=\"style.background='grey'\"><br>\n");
      out.write("                   \n");
      out.write("                    <h3 style=\"margin-left:60px;margin-top: 20px;\">User Type :\n");
      out.write("                    <select style=\"margin-left:5px;\" name=\"ut\" id=\"ut\">\n");
      out.write("<option value=\"-1\" selected>select..</option>\n");
      out.write("<option value=\"User\">User  </option>\n");
      out.write("<option value=\"Admin\">Admin</option>\n");
      out.write("\n");
      out.write("</select></h3>\n");
      out.write("                    <br>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                       <input type=\"submit\" value=\"Add User \"  style=\"background-color:red;color:white;text-decoration:none;font-size:20px;margin-left:50px;padding:16px 100px;border: 1px;border-radius:60px\"></form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("</body></html>\n");
}
else
{
response.sendRedirect("login.html");
}
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
