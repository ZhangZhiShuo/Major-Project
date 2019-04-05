 <%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
    HttpSession ses=request.getSession(true);
            String uid=ses.getAttribute("username").toString();
    String id = null;
    //String uid = request.getParameter("email");
     
       String filename = request.getParameter("filename");     
        String data = request.getParameter("data");
        //session.setAttribute("email",email);
         String data1 = request.getParameter("data1");
          String description = request.getParameter("description");          
          String email = request.getParameter("email");
          //session.setAttribute("depart",depart);
           String attribute = request.getParameter("attribute");
           String skey = null;
         String status = null;
        
              
        
       try{
       
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/bigdata","root","");

    PreparedStatement ps = co.prepareStatement("insert into request values(?,?,?,?,?,?,?,?,?,?)");

     ps.setString(1,id);
    ps.setString(2,uid);    
        ps.setString(3,filename);
        ps.setString(4,data);
        ps.setString(5,data1);
        ps.setString(6,description);        
          ps.setString(7,email);
         ps.setString(8,attribute); 
         ps.setString(9,skey); 
          ps.setString(10,status);
      


    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("dataconsumerfiles.jsp?request=success");
out.println("User Registered Successfully");
}
catch(Exception e1)
{
    response.sendRedirect("dataconsumerfiles.jsp?request1=Email Id you Entered already in Use");
out.println(e1.getMessage());
}


%>
