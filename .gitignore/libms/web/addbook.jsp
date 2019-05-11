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
           /* Navbar container */
.navbar {
  overflow: hidden;
  background-color: #333;
  font-family: Arial;
}

/* Links inside the navbar */
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* The dropdown container */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Dropdown button */
.dropdown .dropbtn {
  font-size: 16px; 
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

/* Dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Add a grey background color to dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}/* Navbar container */
.navbar {
  overflow: hidden;
  background-color: #333;
  font-family: Arial;
}

/* Links inside the navbar */
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* The dropdown container */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Dropdown button */
.dropdown .dropbtn {
  font-size: 16px; 
  border: none;
  outline: none;
  color: black;
  padding:17.5px 60px;
  background-color:lightcyan ;
  font-family: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color:lightgoldenrodyellow;
}

/* Dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 20px 25px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Add a grey background color to dropdown links on hover */
.dropdown-content a:hover {
  background-color: #ddd;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}
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
    padding: 15px 44.5px;
}
     .div01
            {
                border-radius:25px;
                height:650px;
                width: 400px;
                background-color:whitesmoke;
                margin-top:60px;
                margin-left: 440px;
                font-size:20px;
                float:left;
            }
            .div01 a
            {
                padding: 10px 30px;
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
              
               
               
                  <a href="adds.jsp">Add User</a>
                   <a href="addbook.jsp">Add Book</a>
  
    <a href="showbook.jsp">Show Issued Books</a>
    
    <a href="fine.jsp">Impose Fine</a>
               
    <a href="allbook.jsp">All books</a>    
                   <a href="adminp.jsp">Admin profile</a>
                
                   <a href="up.jsp">Update Profile</a>
                 
                       
               </nav>
     </div>

    
<div class="div01">
                   <h1 style="margin-left:60px;margin-top: 40px;">Add Book : </h1>
                   <hr>
                    <h3 style="margin-left:60px;margin-top: 40px;">Book Id</h3>
                    <form method="post" action="addbook">
                    <input type="text"  id="input1" name="bid" style="margin-left: 60px;font-size: 20px;" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'">
                    <h3 style="margin-left:60px">Book Title</h3>
                    <input type="text" id="input2" name="btitle" style="margin-left: 60px;font-size: 20px" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'"><br>
                    <h3 style="margin-left:60px">Author Name</h3>
                    <input type="text" id="input3" name="author"   style="margin-left: 60px;font-size: 20px" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'"><br>
                   
                   <h3 style="margin-left:60px">No. Of Books</h3>
                    <input type="text" id="input3" name="no"   style="margin-left: 60px;font-size: 20px" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'"><br>
                   
                  <br>
                    
                    
                       <input type="submit" value="Add Book"  style="background-color:red;color:white;text-decoration:none;font-size:20px;margin-left:50px;padding:16px 100px;border: 1px;border-radius:60px"></form>
                       
                       
                </div>
</body></html>
<%}
else
{
response.sendRedirect("login.html");
}%>