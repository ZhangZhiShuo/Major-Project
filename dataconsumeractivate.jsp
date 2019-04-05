<%@page import="robust.Mail"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="robust.Dbconnection"%>
<%
String mail=request.getParameter("dataemail");
String attribute=request.getParameter("attribute");
Connection con=Dbconnection.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
 
  
  ResultSet rs=st.executeQuery("select attributekey from attributes where attribute='"+attribute+"'");
  String attributekey = null;
  if(rs.next()){
      attributekey = rs.getString("attributekey");
  }
  int i=st.executeUpdate("update dataconsumer set status='Activated',skey='"+attributekey+"' where dataemail='"+mail+"'");
  
  if(i!=0){
      Mail m = new Mail();
          String msg ="Data-Consumer Name:"+mail+"\nAttribute key :"+attributekey;
          m.secretMail(msg,attributekey,mail);
  response.sendRedirect("viewdataconsumer.jsp?acti=activated");
  }
    
   else{
      System.out.println("error");
   }
    
%>