<%@page import="com.util.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAO.AdminDAO"%>
<%@page import="com.DAO.UserDAO"%><html>
<head>
	<link href="<%=request.getContextPath() %>/Resources/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/button.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/style.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/pagination.js"></script>

</head>
<body onload="startTimer()">

<%
    int no=Utility.parse(request.getParameter("no"));
    
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0,cloudId=0,userid;
	String fileName="",fileTypes="",username="",date = "",priority="";
	UserDAO userDAO = UserDAO.getInstance();
	username = session.getAttribute("username").toString();
	if(no==0)
	{
%>	

<div id="a3" align="right" style="position:absolute;top:30px;left:10px;width: 650px;height: 300px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="650px">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#000000" style="font-style: bold" size="5">Available Files To Download</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th>FileId</th>
			<th>File Name</th>
			<th>Upload Date</th>
			<th>Priority</th>
			<th>Download</th>
			
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			fileName=rs.getString(2);
			fileTypes=rs.getString(3);
			date=rs.getString(4);
			cloudId = rs.getInt(6);
			priority =rs.getString(12);
%>
			<tr align="center">
						<td><%=id%></td>
						<td><%=fileName%></td>
						<td><%=date%></td>
						<td><%=priority%></td>
						<td><a href="<%=request.getContextPath() %>/Resources/JSP/User/select_file.jsp?fileId=<%=id%>">Download</a></td>
						
						
			</tr>
<%
		}
    
}
%>
  	 </table>
  	 </p>
   </div>
 </form>
   

<div id="pageNavPosition" style="position:relative;top:450px;left:520px;cursor:hand;"></div>
<script type="text/javascript"><!--
        var pager = new Pager('results',6); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    

<% 	
if(Utility.parse(request.getParameter("no1"))==1)
{
	%>
		<div class="error" id="message" style="position:absolute;top:5px;left:50px">	
			<p>Sorry,Download Authentication Failed.</p>
		</div>
	<%
}
	
}
	if(Utility.parse(request.getParameter("no"))==1)
	{
		
     String file_name = request.getParameter("fname");	
     String downloadedFrom = request.getParameter("dfrom");
%>

	<div id="a2" style="position:absolute;top:40px;left:25" class="c">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="green" style="font-style: bold" size="5">File Download Acknowledgement</font></h1>
	    
		<hr size="10" color="#5E74D8"></hr>
		
		
		<tr  bgcolor="#A9D2FB" align="center">
		
		    <td colspan="3" align="center"><pre><font color="green">Your File has been Downloaded Successfully......</font></pre></td>
		    
	    </tr>
	    
	    <tr  bgcolor="#A9D2FB" align="center">
		
		    <td><pre><font color="white">File Name</font></pre></td>
		    <td>:</td>
		    <td><%= file_name %></td>
		    
	    </tr>
	    <tr  bgcolor="#A9D2FB" align="center">
		
		    <td><pre><font color="white">File Downloaded From </font></pre></td>
		    <td>:</td>
		    <td><%= downloadedFrom %></td>
		    
	    </tr>
	    
	     <tr  bgcolor="#A9D2FB" align="center">
		
		    <td><pre><font color="white">Date </font></pre></td>
		    <td>:</td>
		    <td><%= Utility.getDate()%> &nbsp;&nbsp;<%= Utility.getTime()%></td>
		    
	    </tr>
	    
	</table>
	</div>

<%
} 
  if(Utility.parse(request.getParameter("no"))==3)
	{
    
%>

	<div id="a2" style="position:absolute;top:40px;left:50" class="c">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="green" style="font-style: bold" size="5">File Download Acknowledgement</font></h1>
	    
		<hr size="10" color="#5E74D8"></hr>
		
		
		<tr  bgcolor="#A9D2FB" align="center">
		
		    <td colspan="3" align="center"><pre><font color="red">Sorry Download Process Failed.</font></pre></td>
		    
	    </tr>
	    
	    <tr  bgcolor="#A9D2FB" align="center">
		
		    <td colspan="3" align="center"><pre><font color="red">Something Went Wrong,Try IT Again....</font></pre></td>
		    
	    </tr>
  
	</table>
	</div>

<%
} 
%>

</body>
</html>


