<%@page import="java.sql.PreparedStatement"%>
<%@page import="robust.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
  <%

                       
    String email=request.getParameter("dataemail");

      try {

          Connection con=Dbconnection.getConnection();

          String query = "update dataconsumer set status='Deactivated' where dataemail=?";
         
          PreparedStatement ps = con.prepareStatement(query);

          ps.setString(1,email);
          int k = ps.executeUpdate();
              if (k == 1) {
              response.sendRedirect("viewdataconsumer.jsp?deac=success");
          } else {
              out.println("registration failed");
          }
                } catch (Exception e) {
                  e.printStackTrace();
              }

      %>