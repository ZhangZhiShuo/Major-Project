<%@page import="robust.Mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>

<%   
String filename = request.getParameter("filename");
String dataemail = request.getParameter("dataemail");
String email = request.getParameter("email");
String skey = null;

try{
    int j =0;
     Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = null;
                            ResultSet rs1 = null;
      
        rs1 = st.executeQuery("select skey from upload where email='"+email+"' and filename='"+filename+"'");
        if(rs1.next() )
        {
         skey =rs1.getString("skey");
         System.out.println("key is   "  + skey  );
         }
          j = st.executeUpdate("update request set status= 'Yes', skey='"+skey+"' where filename='"+filename+"'and dataemail='"+dataemail+"'");
          if (j !=0){
          Mail m = new Mail();
          String msg ="File Name:"+filename+"\ndecryption key :"+skey;
          m.secretMail(msg,filename,dataemail);
          response.sendRedirect("userrequests.jsp?msg=success");
          
        }
          else{
          response.sendRedirect("userreq.jsp?msg1=Failed");
      }
           
      
       }
       
       
       
    
      
     
    
 catch (Exception ex) {
                                        ex.printStackTrace();
                                    }

                                %>
