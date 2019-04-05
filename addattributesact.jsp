 <%@page import="com.sun.org.apache.xerces.internal.impl.dv.util.Base64"%>
<%@page import="javax.crypto.SecretKey"%>
<%@page import="javax.crypto.KeyGenerator"%>
<%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
  
     KeyGenerator keyGen = KeyGenerator.getInstance("AES");
                                keyGen.init(128);
                               SecretKey secretKey = keyGen.generateKey();
                                System.out.println("secret key:" + secretKey);
                              // converting secretkey to String
                                byte[] be = secretKey.getEncoded();//encoding secretkey
                               String attributekey = Base64.encode(be);
                                System.out.println("converted secretkey to string:" + attributekey);
    
    
    String id = null;
    String attribute = request.getParameter("attribute");
    //String attributekey = request.getParameter("attributekey");
   
       try{
      
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/bigdata","root","");

    PreparedStatement ps = co.prepareStatement("insert into attributes values(?,?,?)");

     ps.setString(1,id);
    ps.setString(2,attribute);    
    ps.setString(3,attributekey);
 ps.executeUpdate();


response.sendRedirect("addattributes.jsp?msg=success");

}
catch(Exception e1)
{
    response.sendRedirect("addattributes.jsp?msg1=fail");
out.println(e1.getMessage());
}


%>
