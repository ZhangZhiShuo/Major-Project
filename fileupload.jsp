<%@page import="java.sql.PreparedStatement"%>
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
            if (request.getParameter("file") != null) {%>
        <script>alert('File uploaded ');</script>
        <%}
            if (request.getParameter("file1") != null) {%>
        <script>alert('Error in File Upload ');</script> 
        
        <%}
        %>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
      <ul>
          <li><a href="enduserhome.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="fileupload.jsp"><span>File Upload</span></a></li>
          <li><a href="viewfiles.jsp"><span>View Uploaded Files</span></a></li>         
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
     String facultyname=null;
            Connection con;
            Statement st;
            ResultSet rs;
            con = Dbconnection.getConnection();
            st = con.createStatement();
            rs = st.executeQuery("select * from attributes ");
                                                      
            %>      
            
            
           
            
            
            
            <br>
    
     <p align="justify">
         <center><p><font color="black" size="5"> File Upload</font></p></center><br>
      <form name="f2" action="encrypt1" method="post" enctype="multipart/form-data">
       <center><table width="421">
               <hr>
                   
       
            
       <tr>
           <td height="43"><font color="black"><b>File Name</b></font> </td>
       <td><input id="pun" name="filename" required="" placeholder="File Name"/></td>
       </tr>

                   
       <tr>
           <td height="43"><font color="black"><b>Description</b></font></td>
       <td><input type="text" name="description"  required="" placeholder="Description"></td></label>
       </td>
       </tr>
       
                   
           <tr>           
           <td height="43"><font color="black"><b>Select Attribute</b></font> </td>         
          <td>  <select id="attribute" name="attribute" required="" onChange="getcomp()" class="text">
               
               <option value="" >--Select--</option>
               <% 
                  while(rs.next())
                   {
                 String attribute1 = rs.getString("attribute");
                       
                 %>
               <option value="<%=attribute1%>" ><%=attribute1%></option>
             <% }%>            
           </td>
         </tr>    
       
           
         <tr>
        <td height="43"><font color="black"><b>Upload File</b></font> </td>   
        <td><input  type="file"  name="file" /></td>
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
        </div>
       
        
      </div>
       
          </div>
     
      <div class="clr"></div>
    </div>
  </div>
    
 
    </center>
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
