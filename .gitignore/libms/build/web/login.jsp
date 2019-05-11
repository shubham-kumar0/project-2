<%@ page language="java" import="java.sql.*"%><b><center>     

        <%

            String name = request.getParameter("uname");

            String pass = request.getParameter("pwd1");
            System.out.println("name "+name+"pass "+ pass);
            try {

                Class.forName("com.mysql.cj.jdbc.Driver");

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hostelmanagement?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","abhi@2821");

                Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("select * from regsiter");

                int x = 0;
                
                while (rs.next()) {
                    System.out.println("nafdnf");
                    if ((rs.getString("uname").equals(name)) && rs.getString("pwd1").equals(pass)) {

                        String stp = rs.getString("usert");

                        if (stp.equals("Admin")) {

                            x = 1;

                            break;

                        } else {

                            x = 2;

                            break;

                        }

                    }

                }

                if (x == 2) {

                    response.sendRedirect("searchbook.jsp");

                } else if (x == 1) {

                    response.sendRedirect("adds.jsp");

                } else {

                    out.println("<script type=\"text/javascript\">");
       out.println("alert('username or password incorrect');");
       out.println("</script>"); 
        %>

        <jsp:include page="login.html" />

        <%}

 

            } catch (Exception e) {

                out.println(e);

            }

 

            session.setAttribute("username", name);

        %> 