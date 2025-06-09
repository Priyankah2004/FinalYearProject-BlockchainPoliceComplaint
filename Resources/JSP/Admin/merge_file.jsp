<%@page import="com.util.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAO.AdminDAO"%>
<%@page import="com.util.Utility"%><html>
<head>
<title>Generate Key</title>

	<link href="<%=request.getContextPath() %>/Resources/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/button.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Resources/CSS/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/style.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/pagination.js"></script>
</head>
<style>
        table {
            border-collapse: collapse;
            width: 60%;
            margin: auto;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 18px;
            display-inline; 	
        }

        .button {
            background-color: teal;
            color: white;
            padding: 10px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            margin-left:120px;
        }

        #imagePreview img {
            max-width: 300px;
            max-height: 300px;
            margin-top: 10px;
        }
    </style>
<body onload="startTimer()">
<%
	AdminDAO adminDAO = AdminDAO.getInstance();
    String date = adminDAO.getLastKeyUpdatedDate();
%>

<div id="a3" align="right" style="position:absolute;top:50px;left:50px">
						
		 <p>
		 <form action="<%=request.getContextPath()%>/mergeFiles" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td colspan="7" align="center">
                <font color="#000000" style="font-style: bold; margin-left:120px;" size="5">Upload Files</font>
            </td>
        </tr>
<!-- 
        <tr>
            <td colspan="3" align="center"><hr></td>
        </tr> -->

        <tr align="center">
            <td width="350px">Text File:</td>
            
            <td width="150px">
                <label for="textFile">Choose Text File:</label>
                <input type="file" name="textFile" id="textFile"><br>
            </td>
        </tr>

        <tr align="center">
            <td>Image File:</td>
            
            <td>
                <label for="imageFile">Choose Image File:</label>
                <input type="file" name="imageFile" id="imageFile" onchange="displayImage()"><br>
                <div id="imagePreview"></div>
            </td>
        </tr>

        <tr align="center">
            <td colspan="3" align="center">
                <input class="button" type="submit" value="Merge Files">
            </td>
        </tr>
    </table>
</form>
		 
				<%-- <form action="<%=request.getContextPath()%>/mergeFiles" method="post" enctype="multipart/form-data">
					
					<table id="login" align="center">
					<tr>
							<td colspan="7" align="center">
								<font color="#000000" style="font-style: bold" size="5">Upload File</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="3" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="200px">Subject :</td>
							<td width="75px">:</td>
							<td width="100px">
							<label for="textFile">Text File:</label>
						    <input type="file" name="textFile" id="textFile"><br>
						    </td>
						    
							
							
					</tr>
					
					<tr align="center">
							<td><label for="imageFile">Image File:</label>
						    <input type="file" name="imageFile" id="imageFile" onchange="displayImage()"><br>
						  </td>
					</tr>
					
					<tr align="center">
							<td colspan="7" align="center">
								<input class="button" type="submit" value="Merge Files"></input>
							</td>
					</tr>
					
					</table>
			</form>
			
			<div id="imagePreview"></div> --%>
			
	<%-- <form action="<%=request.getContextPath()%>/mergeFiles" method="post" enctype="multipart/form-data">
        <label for="textFile">Text File:</label>
        <input type="file" name="textFile" id="textFile"><br>

        <label for="imageFile">Image File:</label>
        <input type="file" name="imageFile" id="imageFile"><br>

        <input type="submit" value="Merge Files">
    </form> --%>
			
		</p>
						
</div>


    <script>
        function displayImage() {
            var input = document.getElementById('imageFile');
            var preview = document.getElementById('imagePreview');

            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    preview.innerHTML = '<img src="' + e.target.result + '" alt="Image Preview" style="max-width: 300px; max-height: 300px;">';
                };

                reader.readAsDataURL(input.files[0]);
            } else {
                preview.innerHTML = '';
            }
        }
    </script>

</body>
</html>