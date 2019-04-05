<div id="shell">
  <div id="header">
    <h1 id="logo"><a href="#">Feed Back Information System </a></h1>
   
  </div>
  <div id="navigation">
     <ul>
          <li class="active"><a href="attributehome.jsp"><span>Home Page</span></a></li>
          <li><a href="viewenduser.jsp"><span>View End-Users</span></a></li>
          <li><a href="viewdataconsumer.jsp"><span>View Data Consumers</span></a></li>
          <li><a href="addattributes.jsp"><span>Attribute Assigning</span></a></li>
          <li><a href="graph.jsp"><span>Graph</span></a></li>
          <li><a href="logout.jsp"><span>Logout</span></a></li>          
        </ul>
    <div class="search">
      
    </div>
  </div>
  <div id="main">
    <div id="featured">
      <div class="post-image"> <span class="tl round">&nbsp;</span> <span class="tr round">&nbsp;</span> <span class="bl round">&nbsp;</span> <span class="br round">&nbsp;</span> <a href="#"><img src="css/images/mgit1.jpg" alt="" /></a></div>
      <div class="post-info">
        <h2>Mahatma Gandhi Institute of Technology</h2>
        <p>Mahatma Gandhi Institute of Technology  is a technological institution located in Gandipet, Hyderabad, Telangana, India. The annual intake is 900 students in undergraduate level and 108 students in postgraduate level. The institute is ffiliated to Jawaharlal Nehru Technological University, Hyderabad  and offers the four-year Bachelor of Technology, in eight isciplines and two-year Master of Technology, in six disciplines prescribed by JNTU. </p>
        
      </div>
      <div class="cl">&nbsp;</div>
    </div>
   
  </div>
      
<script type="text/javascript" src="graph/jscharts.js"></script>
<b>Graphical View of FeedBack</b>
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
                     
    
    
    
  <div class="footer">
    <div style="clear:both;"></div>
  </div>
</div>