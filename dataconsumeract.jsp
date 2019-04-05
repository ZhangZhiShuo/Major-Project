<%@page import="robust.Mail"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="robust.Dbconnection"%>
<%@ page session="true" %>
<%
      //String username = session.getAttribute("user").toString();
    String email = request.getParameter("username");
    System.out.println(email);
    String password = request.getParameter("password");
    System.out.println(password);
    
    //Random r = new Random();
    //int j = r.nextInt(10000 - 5000) + 5000;
    //String skey = j+"";
    //String msg ="User Name : "+email+"\nSecret Key :"+skey;
    
    try{
       
       // String user=null;
        //String password=null;
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/bigdata","root","");
        Statement st = co.createStatement();
        ResultSet rs = st.executeQuery("select * from dataconsumer where dataemail='"+email+"' and pass='"+password+"' and status='Activated'");
       if(rs.next())
        {
         String  user = rs.getString(4);
          String  attribute = rs.getString(7);
		   session.setAttribute("username",email);
                   session.setAttribute("attribute",attribute);
		   System.out.println("User:"+user);
                    //Mail m= new Mail();
            //m.secretMail(msg, email, email);
            //PreparedStatement ps=co.prepareStatement("update enduser set skey='"+skey+"' where email='" + email + "' ");
	//int i=ps.executeUpdate();
       // if(i>0){
            response.sendRedirect("dataconsumerhome.jsp?msg=Success");
        //}
        }
       else 
        {
            response.sendRedirect("dataconsumer.jsp?msg1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in studentact"+e.getMessage());
    }
%>



