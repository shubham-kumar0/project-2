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
.middle
            {
                height: 750px;
            }
           
             .div01
            {
                float:left;
                border-radius:15px;
                background-color: white;
                height: 700px;
                width:400px;
                margin-left: 430px;
                margin-top:10px;
                font-size:20px;
            }
            .div01 input
            {
                margin-left:30px;
                margin-top:20px;
                padding:10px 80px;
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


 <div class="middle">
               <div class="div01">
                   <form method="post" action="adminp">
                    
                    <h1 style="float:left;margin-left:30px;margin-top:30px;color:black">Profile Info</h1>
                 
                    <input type="text" id="name" name="name" placeholder="Name" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey   '" onkeyup="up()">
                                  <input type="text" id = "univid" name="univid" placeholder="University ID" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'">
               
                    <input type="text" id="fname" name="fname" placeholder="Father Name" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'" onkeyup="up()">
                    <input type="text" name="mname" placeholder="Mother name" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'">
                    <input type="text" id ="mobileno" name="mobileno" placeholder="Mobile no." required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'">
          <input type="email" name="email"  placeholder="Email" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'">
          <input type="date" name="dob"  placeholder="dOB DD-MM-YYYY" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'" onkeyup="up()"><br>
         
          <input type="text" name="city"  placeholder="Your City" required onfocus="style.background='firebrick';style.color='white'" onblur="style.background='grey'" onkeyup="up()"><br>
                    <input type="submit" value="Upadate Profile"  style="border-radius: 60px;border: 1px; color:white;background:red;padding:16px 100px;font-family:inherit;font-size:20px;">
                    </form>
                </div>

          
        
           
           
        </div>
</body></html>
<%}
else
{
response.sendRedirect("login.html");
}%>