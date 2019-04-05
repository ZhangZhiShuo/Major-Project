 <%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
   
    String id = null;
    String name = request.getParameter("name");
     session.setAttribute("name",name);
       String pass = request.getParameter("pass");     
        String dataemail = request.getParameter("dataemail");       
         String dob = request.getParameter("dob");
          String gen = request.getParameter("gen");          
         String attribute = request.getParameter("attribute");
           String address = request.getParameter("address");
         String contactno = request.getParameter("contactno");
         String status = null;
         String skey = null;
              
        
       try{
       
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/bigdata","root","");

    PreparedStatement ps = co.prepareStatement("insert into dataconsumer values(?,?,?,?,?,?,?,?,?,?,?)");

     ps.setString(1,id);
    ps.setString(2,name);    
        ps.setString(3,pass);
        ps.setString(4,dataemail);
        ps.setString(5,dob);
        ps.setString(6,gen);
         ps.setString(7,attribute);
         ps.setString(8,address);
          ps.setString(9,contactno);
       ps.setString(10,skey);
          ps.setString(11,status);
      


    ps.executeUpdate();



response.sendRedirect("dataconsumer.jsp?reg=success");
out.println("Data_Consumer Registered Successfully");
}
catch(Exception e1)
{
    response.sendRedirect("dataconsumerregister.jsp?reg1=Email Id you Entered already in Use");
out.println(e1.getMessage());
}


%>
