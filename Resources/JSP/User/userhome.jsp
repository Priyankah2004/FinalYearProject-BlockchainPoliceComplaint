<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.DAO.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
window.history.forward();
function noBack() { window.history.forward(); }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>

     <script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/jquery-1.2.1.min.js"></script>
     <script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/menu.js"></script>
     <link href="<%=request.getContextPath() %>/Resources/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/button.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/login.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath() %>/Resources/CSS/style1.css" rel="stylesheet" type="text/css" />
 <style type="text/css">
   li a {display:inline-block;}
   li a {display:block;}
   img{
   width:100%;
   }
   </style>
</head>
<body>

<%!
       HttpSession session = null;
       String username = "";
       int id = 0;
       UserDAO userDAO = null;
       
%>
<%
      session = request.getSession();

       if(session != null)
       {
    	   username = session.getAttribute("username").toString();
       }
       
      userDAO = UserDAO.getInstance();
      
      id = userDAO.getID(username);
       
%>


<h1 class="navbar-brand" style="
    background: linear-gradient(to right, #ff7e5f, #feb47b); 
    -webkit-background-clip: text; 
    -webkit-text-fill-color: transparent; 
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
    font-size: 35px">
    Blockchain-Driven Police Complaint System with Access Control Technique
</h1>
<div style="">
      <table width="100%" height="100%">				
			<tr valign="top" >
				<td align="left" width="20%">
				<ul id="menu">
		<li>
			<a href="#">Profile</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/UserProfile" target="myIframe">View Profile</a></li>
				<li><a href="<%=request.getContextPath() %>/EditUserProfile?username=<%=username %>&no=1" target="myIframe">Edit Profile</a></li>
				<li><a href="<%=request.getContextPath() %>/ChangeUserPassword?username=<%=username %>&no=1&id=<%=id %>" target="myIframe" target="target">Change Password</a></li>
			</ul>
		</li>
		<li>
			<a href="#">File Download</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/DownloadFiles" target="myIframe">Download File</a></li>
			</ul>
		</li>
		
		<li>
			<a href="#">Transactions</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/UserTransactionList?submit=get" target="myIframe">View Transactions</a></li>
			</ul>
		</li>
	<!-- 	<li>
			<a href="#">Send Request</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/AuditRequest?name=<%=id%>" target="myIframe">Send Request</a></li>
			</ul>
		</li>  -->
		<li>
			<a href="#">Logout</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/index.jsp?no=5">Sign Out</a></li>
			</ul>
		</li>
		
	</ul>
				</td>
			</tr>
		</table>
</div>

<div style="position:absolute;top:120px;left:230px;">
	<iframe align="middle" frameborder="0" scrolling="auto" name="myIframe" height="600" width="900"></iframe>
</div>	
</body>
</html>