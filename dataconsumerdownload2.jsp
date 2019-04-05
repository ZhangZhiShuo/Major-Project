 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="robust.Dbconnection"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
     ResultSet rs1 = null;
    String filename = request.getParameter("filename");
   Statement st1 = null;
  //String polatt1 = "D:/keypolicy_attri.txt";
String skey = request.getParameter("skey");
//String owner1 = request.getParameter("owner1");
//String email=session.getAttribute("email").toString();
String email1 = request.getParameter("email");
    try {
            
      
        con = Dbconnection.getConnection();
        st = con.createStatement();
         st1 = con.createStatement();
        rs = st.executeQuery("select * from request where filename='" + filename + "' and email='"+email1+"' and skey = '"+skey+"'");
         
        
      //  rs1 = st1.executeQuery("select * from upload where filename='" + filename + "'"); 
         if (rs.next()) {
             
            //String skey1 = rs.getString("skey");
              response.sendRedirect("download?" + filename + "," + email1+ "," + skey);
         }
       
           
            else 
            {
                response.sendRedirect("dataconsumerdownload.jsp?dmsg=download failed   key not matched");
            }
           
            
      
    } catch (Exception ex) {
        
         
        ex.printStackTrace();
         response.sendRedirect("dataconsumerdownload.jsp?dmsg2=download failed   key not matched");
    }

%>