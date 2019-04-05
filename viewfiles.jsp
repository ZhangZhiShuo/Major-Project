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
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
      <ul>
          <li><a href="enduserhome.jsp"><span>Home Page</span></a></li>
          <li><a href="fileupload.jsp"><span>File Upload</span></a></li>
          <li class="active"><a href="viewfiles.jsp"><span>View Uploaded Files</span></a></li>         
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
            
         <center>
	 <%
          HttpSession ses=request.getSession(true);
            String uid=ses.getAttribute("username").toString();
            Connection con;
            Statement st;
            ResultSet rs;
            con = Dbconnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("select * from upload where email='"+uid+"'");
                                                      
            %>
     
         <table style="width:70%" border="2" >

               <h2 style="color: black">Uploaded File Details</h2><br><hr>

<tr>
     
     <th><font color="green">File Name</th>
    <th><font color="green"> Description</th>
     <th><font color="green"> Attribute</th>
     <th><font color="green"> Secret Key</th>  
     <th><font color="green"> Rank</th>  
     <th><font color="red"> Download</th>
     
</tr>
    <%
while(rs.next()){
%>
<tr>
    <th style="color: black"><%=rs.getString(1)%></th>
    <th style="color: black"><%=rs.getString(4)%></th>
    <th style="color: black"><%=rs.getString(5)%></th>
    <th style="color: black"><%=rs.getString(6)%></th>
    <th style="color: black"><%=rs.getString(8)%></th>
     <td><a href="download1?email=<%=rs.getString("email")%>&filename=<%=rs.getString("filename")%>">Download</a> </td>          
    
 </tr> 
       <%}%>                 
            
             </table>
                    </center>
    
             <br></br>
             <hr> <div class="clr"></div>
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
