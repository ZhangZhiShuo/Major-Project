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
        <script>alert('Verification Faild ');</script>
        <%}
            if (request.getParameter("reg1") != null) {%>
        <script>alert('Email Id you Entered already in Use');</script> 
        
        <%}
        %>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="enduser.jsp"><span>End-Users</span></a></li>
          <li><a href="dataconsumer.jsp"><span>Data Consumers</span></a></li>
          <li><a href="cloud.jsp"><span>Cloud Server</span></a></li>
          <li><a href="attribute.jsp"><span>Attribute Authority</span></a></li>
          
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
	<h2>End-User Registration Form</h2>
    <br><br>
            <center> <form action="enduserregisteract.jsp" method="post" id="" >
					  <table width="421">
                      
					    <tr>
                          <th width="191" height="43"><font color="black">User Name </th>
                          <td width="218"><input id="name" name="name" class="text" required=""/></td>
                        </tr>
                        <tr>
                          <th height="43"><font color="black">Password </th>
                          <td width="218"><input type="password" id="password" name="pass" class="text" required="" /></td>
                        </tr>
                        
                        
                       
                        
                        <tr>
                            <th height="43"><font color="black"> Email Address</th>
                          <td><input id="email" name="email" class="text"  required=""/></td>
                        </tr>
                                              
                            <tr>
                            <th height="43"><font color="black">Date Of Birth</th>
                            <td><input type="date" name="dob" style="text-align:right" required=""></td></label>
        
                            </td>
                        </tr>                  
                            
                          <tr>
                          <th height="43"><font color="black">Select Gender</th>
                          <td><select id="s1" name="gen" style="width:170px;" class="text" required="">
                            <option>--Select--</option>
                            <option>MALE</option>
                            <option>FEMALE</option>
                          </select></td>
                        </tr>
                                              
                          
                             
                        
                                              
                            <tr>
                          <th height="65"><font color="black">Address</th>
                          <td><textarea id="address" name="address" rows="3" cols="21" required=""></textarea></td>
                        </tr>                  
                                              
                                              
                        <tr>
                          <th height="43"><font color="black">Mobile Number </th>
                          <td><input id="mobile" name="contactno" class="text"  required=""/></td>
                        </tr>
                        
                       
                        
                        
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="REGISTER" />
                            </p>
                            <div align="right">
                            </div></td>
                        </tr>
               </table>
            </form>
                    </center>   <div class="clr"></div>
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
