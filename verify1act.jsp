<%@page import="robust.Mail"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>
</head>
<body>

<%
    String username = session.getAttribute("username").toString();
    String akey = request.getParameter("akey");
    
    try{
       
     
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/bigdata","root","");
        
        Statement st = co.createStatement();
        ResultSet rs = st.executeQuery("select * from dataconsumer where skey='"+akey+"' and dataemail='"+username+"'");
      if(rs.next())
        {
        
        response.sendRedirect("dataconsumerdownload.jsp?msg1=success");
        }
 else 
        {
            response.sendRedirect("verify1.jsp?msg=failed");
                }
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>

    </body>
</html>

