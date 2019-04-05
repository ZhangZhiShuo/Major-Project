
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
        <script>alert('Attribute Key Verified ');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Attribute Key Verified');</script> 
        
        <%}
        %> 
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
        <ul>
          <li><a href="dataconsumerhome.jsp"><span>Home Page</span></a></li>
          <li><a href="verify.jsp"><span>View  Files</span></a></li>
          <li class="active"><a href="verify1.jsp"><span>Download Files</span></a></li>         
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
         
                       <%
                         Connection con = null;
    Statement st = null;
    //String filename = request.getQueryString();
                       String filename = request.getParameter("filename");
                       String email = request.getParameter("email");
                                             
                          String skey = request.getParameter("skey");
                         session.setAttribute("filename", filename);
                        session.setAttribute("skey", skey);
                        session.setAttribute("email", email);
                    %>
                 <br>   <center> 
    <h2>Key Verification</h2>
       <br/><br/><br/>
        <form action="dataconsumerdownload2.jsp" method="post">
           <th> <label>File Name  :</label></th><input type="text" name="filename" value="<%=filename%>"  style="margin-left: 40px" class="textbox"/><br /><br />
            <label>End_User Name  :</label><input type="text" name="email" value="<%=email%>"  style="margin-left: 40px" class="textbox"/><br /><br />
             <label>Decryption Key :</label><input type="text" name="skey" required="" style="margin-left: 40px" class="textbox"/><br /><br />
            <input type="submit" value="Download" class="button" /><br /><br />
        </form>
         </center><br />

    </table>
          </div>
          <div class="clr"></div>
        </div>
       
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

