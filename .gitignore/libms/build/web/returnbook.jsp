<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
                    .div02
            {
                border-radius:25px;
                height:600px;
                width: 350px;
                background-color:whitesmoke;
                margin-top:60px;
                margin-right: 150px;
                font-size:20px;
                float:right;
                padding:0px 70px;
            }
            
            .div02 table{
                margin-top:50px;
               
            }
             .div01
            {
                border-radius:25px;
                height:600px;
                width: 400px;
                background-color:whitesmoke;
                margin-top:60px;
                margin-left: 150px;
                font-size:20px;
                float:left;
            }
            .div01 a
            {
                padding: 10px 30px;
                float:left;
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
  <div class="div01" >
                   <h3 style="margin-left:60px">Enter Your  Details Below:</h3><hr>
                    <h4 style="margin-left:60px">University ID</h4>
                    <form method="post" action="returnbook" id="appf">
                    <input type="text"  id="input1" name="univid" style="margin-left: 60px;font-size: 20px;" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'">
                     <h4 style="margin-left:60px">Book ID</h4>
                   <input type="text"  id="input1" name="bid" style="margin-left: 60px;font-size: 20px;" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'">
                    
                    <h4 style="margin-left:60px">Issue Date</h4>
                    <input type="date" id="input2" name="istart" style="margin-left: 60px;font-size: 20px" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'"><br>
                    <h4 style="margin-left:60px">Return Date</h4>
                    <input type="date" id="input2" name="iend" style="margin-left: 60px;font-size: 20px" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'"><br>
                    <br>
                   <input type="submit" value="Return Book" style="background-color:red;color:white;text-decoration:none;font-size:20px;margin-left:50px;padding:16px 100px;border: 1px;border-radius:60px"></a></form>
                   
                   
                </div>

     <div class="div02" >
        <h3>Recent Issued books:</h3>
        <hr>
<table border="2">
<tr>
<td>Sno.</td>
<td>University ID</td>
<td>Book ID</td>
<td>Issue Date</td>
<td>Return Date</td>



</tr>
<% try {

                String str1 = (String) session.getAttribute("username");
                System.out.println(str1);
                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","abhi@2821");

                PreparedStatement st = con.prepareStatement("select * from issuedbooks  join regsiter on issuedbooks.univid = regsiter.pwd2 where regsiter.uname=?");
                st.setString(1,str1);
                ResultSet rs = st.executeQuery();
                
                while (rs.next()) {
                    System.out.println("s");
                    
                    %>
                    
                         
                         <tr> <td><%= rs.getInt(1)%></td>
                    <td> <%= rs.getString(2)%></td>
                    <td><%= rs.getString(3)%></td>
                         <td><%= rs.getString(4)%></td>
                         <td><%= rs.getString(5)%></td>
                         
                    

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