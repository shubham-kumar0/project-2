<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<% if(!(request.getSession().getAttribute("username") ==null)){
    %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<nav style="float: right">
        <p style="background-color:none; font-family: cursive;margin-top: 0px;color:white;text-decoration:none;font-size:30px;margin-left:40px;border: 1px;border-radius:60px">
                   
        <%

            String str = (String) session.getAttribute("username");

            out.print("Welcome " + str);
            

        %>
        </p>
        <form action="logout" method="post" ><a ><input type="submit" value="Log Out"  style="background-color:red;color:white;text-decoration:none;font-size:20px;margin-left:230px;border: 1px;border-radius:60px"></a></form>
                   <% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
</nav>
        
<html>
       <style>
      
            body 
            {
                     background-image: url(li.jpg);
            }
  .div1
{
    width: 1350;
    height: 120px;  
}
.div2
{
    width: 1350px;
    height: 52px;  
}
.div2 a
{
    float: left;
    text-decoration: none;
    color:black;
    font-size: 20px;
    background-color:lightcyan;
    padding: 15px 60px;
}
.div01
            {
                border-radius:25px;
                height:200px;
                width: 400px;
                background-color:whitesmoke;
                margin-top:60px;
                margin-left: 450px;
                font-size:20px;
                float:left;
            }
            .div01 a
            {
                padding: 10px 30px;
                float:left;
            }
            .div02
            {
                border-radius:25px;
                height:400px;
                width: 400px;
                background-color:whitesmoke;
                margin-top:60px;
                margin-left: 450px;
                font-size:20px;
                float:left;
            }
.div2 a:hover{color:red;background-color:lightgoldenrodyellow ;}
       </style>
<body>
    
           <div class="div1">
                <img src="images.jpg" style="height: 100px;width: 100px;float:left;margin-left: 20;margin-top: 5;">
                <h1 style="font-family: cursive;text-shadow: 3px 3px 3px white;color: red;float:left;margin-left: 300px;">LIBRARY MANAGEMENGT SYSTEM</h1>
</div>
   
    
     <div class="div2">
               <nav>
               <a href="searchbook.jsp">Search Book</a>
                   <a href="issuebook.jsp">Issue Book</a>
                   
        <a href="returnbook.jsp">Return Book</a>
      
      
      
   
 <a href="checkfine.jsp">Check Fine</a>
                   <a href="userp.jsp">Student profile</a>
                  
                    <a href="gallery.jsp">Update Profile</a>
                       
               </nav>
     </div>
           </div>
           <div class="div01">
<center><form action="searchbook1.jsp">  
        <h2> Search Book Here :</h2>  <input type="text"  id="input1" name="search" style="font-size: 20px;" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'">
             <br>
        <br>
        
<input type="submit" value="Search Book" style="background-color:red;color:white;text-decoration:none;font-size:20px;margin-left:0px;padding:16px 60px;border: 1px;border-radius:60px"></a></form>
                   
                   
</form></center>
           </div>
               <div class="div02" >
         <h1 style="margin-left:60px;margin-top: 40px;">Result: </h1>
         <hr>
<table border="2">
<tr>

<td>Book ID</td>
<td>Book Title</td>
<td>Author</td>
<td>Availability</td>
</tr>
<% try {
                String str1=request.getParameter("search"); 
        
                System.out.println(str1);
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","abhi@2821");
  PreparedStatement st = con.prepareStatement("select * from books where title LIKE ?");
                st.setString(1,"%" + str1 + "%");
                
                ResultSet rs = st.executeQuery();
                
                while (rs.next()) {
                    System.out.println("s");
                    
                    %>
                    
                         
                         <tr> 
                    <td> <%= rs.getString(2)%></td>
                    <td><%= rs.getString(3)%></td>
                    <td><%= rs.getString(4)%></td>
                    <td><%= rs.getString(5)%></td>
                        </tr>
                    

                    <%
                    }
           }
           catch(Exception e){
            System.out.println(e);
           }
        %>
                    </table></div>



</body></html>
<%}
else
{
response.sendRedirect("login.html");
}%>