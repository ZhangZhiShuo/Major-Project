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
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Data_Consumer Registration Failed ');</script> 
        
        <%}
        %> 
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="dataconsumerhome.jsp"><span>Home Page</span></a></li>
          <li><a href="verify.jsp"><span>View  Files</span></a></li>
          <li><a href="verify1.jsp"><span>Download Files</span></a></li>         
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
	<h2>Attribute Verification</h2>
    <br><br>
            <center>  <form action="verify1act.jsp" method="post" id="otpact" >
			<table width="421">
                      
			 <tr>
                        <th height="43"><font color="black">Attribute Key:</th>
                           <td width="218"><input type="text" id="akey" name="akey" required="" /></td>
                           </tr>
                      
                        
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="Verify" />
                            </p>
                            <div align="right">
                            </div></td>
                        </tr>
               </table>
            </form>
                    </center>
 
        
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