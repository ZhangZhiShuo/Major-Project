<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="robust.Dbconnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>An Efficient and Fine-grained Big Data Access Control</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-marketingscript.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
    <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Attribute Added and Key Generated Successfully!');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Attribute Failed ! ');</script> 
        
        <%}
        %>   
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
        <ul>
          <li><a href="attributehome.jsp"><span>Home Page</span></a></li>
          <li><a href="viewenduser.jsp"><span>View End-Users</span></a></li>
          <li><a href="viewdataconsumer.jsp"><span>View Data Consumers</span></a></li>
          <li class="active"><a href="addattributes.jsp"><span>Attribute Assigning</span></a></li>
          <li><a href="graph.jsp"><span>Graph</span></a></li>
          <li><a href="logout.jsp"><span>Logout</span></a></li>          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
          <h1><font color="white">An Efficient and Fine-grained Big Data Access Control Scheme with Privacy-preserving Policy</font></h1>
      </div>
      <div class="clr"></div>
     <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/aa.jpg" width="960" height="360" alt="" /><span><big></big><br />
          </span></a> <a href="#"><img src="images/aaa.jpg" width="960" height="360" alt="" /><span><big></big><br />
          </span></a> <a href="#"><img src="images/aa1.jpg" width="960" height="360" alt="" /><span><big></big><br />
          </span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
     
        <div class="article">
          <p align="justify">
         <center><p><font color="black" size="5"> Add Attributes</font></p></center><br>
       <form name="frm"  action="addattributesact.jsp" method="post" >
       <center><table width="421">
               <hr>
      
       <tr>
           <td height="43"><font color="black"><b>Attribute Name</b></font> </td>
       <td><input id="attribute" name="attribute" required="" placeholder="Attribute Name"/></td>
       </tr>

       
       <tr>
       <td height="43" rowspan="3">
       <p>&nbsp;</p></td>
       <td align="left" valign="middle"> <p>&nbsp;
       </p>
       <p>
       <input name="submit" type="submit" value="Submit" />
       <input  type="reset" value="Cancel" />
       </p>
       <div align="right">
       </div></td>
       </tr>
       </table>
       </form>
       </p>
            <hr>
                
                
                
                 <%
        
        try {
            Connection con;
            Statement st;
            ResultSet rs;
            con = Dbconnection.getConnection();
                st = con.createStatement();
            rs = st.executeQuery("select * from attributes");
           
              

            %>
    
    <div class="clr"></div>
     <div class="content">
    <div class="content_resize">
     
                

  <h2>View Attributes</h2>
 <hr>
<table style="width:60%" border="2">
  <tr>
     
   
 <th><font color="red"> Id</font></th>
     <th><font color="red"> Attributes</font></th>
     <th><font color="red"> Key</font></th>
   
</tr>
<%

 while (rs.next()) {

%>
<tr>
    <th><font color="black"><%=rs.getString(1)%></font></th>              
   <th><font color="black"><%=rs.getString(2)%></font></th>              
   <th><font color="black"><%=rs.getString(3)%></font></th>
  </tr>
     <%}%>                     
   
     
     </table>
 <hr>
<%
           }catch(Exception e)
	{
		System.out.println(e);
	}
	%>

         
                
                
     <div class="clr"></div>
        </div>
        
      
      <div class="clr"></div>
    </div>
  </div>
  
  <div class="footer">
    <div class="footer_resize">
      
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center>Developed by <a href='http://1000projects.org/'>1000projects</a></div></body>
</html>
