<%@page import="robust.Mail"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
   
    String email = request.getParameter("username");
    System.out.println(email);
    String password = request.getParameter("password");
    System.out.println(password);
    
    
    try{
       
      
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/bigdata","root","");
        Statement st = co.createStatement();
        ResultSet rs = st.executeQuery("select * from enduser where email='"+email+"' and pass='"+password+"' and status='Activated'");
       if(rs.next())
        {
         String  user = rs.getString(4);
		   session.setAttribute("username",email);
		   System.out.println("User:"+user);
                    Mail m= new Mail();
            
            response.sendRedirect("enduserhome.jsp?msg=success");
        
        }
       else 
        {
            response.sendRedirect("enduser.jsp?msg1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in studentact"+e.getMessage());
    }
%>



