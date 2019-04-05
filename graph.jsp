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
            if (request.getParameter("useracti") != null) {%>
        <script>alert('End_User Successfully Activated !');</script>
        <%}
            if (request.getParameter("userdeac") != null) {%>
        <script>alert('End_User Successfully DeActivated ! ');</script> 
        
        <%}
        %>   
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
      <ul>
          <li><a href="attributehome.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="viewenduser.jsp"><span>View End-Users</span></a></li>
          <li><a href="viewdataconsumer.jsp"><span>View Data Consumers</span></a></li>
          <li><a href="addattributes.jsp"><span>Attribute Assigning</span></a></li>
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
       
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
     
        <div class="article">
            
         <center>
	<script type="text/javascript" src="graph/jscharts.js"></script>
<b>Graphical View of File Download Count</b>
<div id="graph">Loading graph...</div>

<script type="text/javascript">
   
   
var myData=new Array();
var colors=[];

<%
    
      int i=0;                       Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                   con = Dbconnection.getConnection();
                                   st = con.createStatement();
                                   rs = st.executeQuery("select *from upload");   
                                   String filename=request.getParameter("filename");
                                      while(rs.next())
                                {
                                        %>myData["<%=i%>"]=["<%=rs.getString("filename") %>",<%=rs.getInt("rank1")%>];<% 
                                    i++;
                                }
	%>
			
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setSize(500,350);
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
        
        
        </script>     
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
