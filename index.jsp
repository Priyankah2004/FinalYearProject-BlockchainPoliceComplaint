<!DOCTYPE html>
<%@page import="com.util.Utility"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="templatemo">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>EHR BlockChain Project</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/templatemo-style.css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700" rel="stylesheet">

<script type="text/javascript">
function checkvariability() {
    document.getElementById("contactadmin").style.display = "none";
    document.getElementById("contacts").style.display = "none";
    document.getElementById("contactsuser").style.display = "none";
    document.getElementById("contactauditor").style.display = "none";
}

function checkvariability1() {
    document.getElementById("contactadmin").style.display = "";
    document.getElementById("contacts").style.display = "none";
    document.getElementById("contactsuser").style.display = "none";
    document.getElementById("contactauditor").style.display = "none";
}

function checkvariability2() {
    document.getElementById("contactadmin").style.display = "none";
    document.getElementById("contacts").style.display = "";
    document.getElementById("contactsuser").style.display = "none";
    document.getElementById("contactauditor").style.display = "none";
}

function checkvariability3() {
    document.getElementById("contactadmin").style.display = "none";
    document.getElementById("contacts").style.display = "none";
    document.getElementById("contactsuser").style.display = "";
    document.getElementById("contactauditor").style.display = "none";
}

function checkvariability4() {
    document.getElementById("contactadmin").style.display = "none";
    document.getElementById("contacts").style.display = "none";
    document.getElementById("contactsuser").style.display = "none";
    document.getElementById("contactauditor").style.display = "";
}
</script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

<div class="navbar navbar-fixed-top custom-navbar" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
                <span class="icon icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">Blockchain-Driven Police Complaint System with
Access Control Technique</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#home" class="smoothScroll" onclick="checkvariability();">Home</a></li>
                <li><a href="#contactadmin" class="smoothScroll" onclick="checkvariability1();">Admin</a></li>
                <li><a href="#contacts" class="smoothScroll" onclick="checkvariability2();">User</a></li>
                <li><a href="#contactsuser" class="smoothScroll" onclick="checkvariability3();">Police</a></li>
            </ul>
        </div>
    </div>
</div>

<section id="home" class="parallax-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <div class="home-img"></div>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="home-thumb">
                    <div class="section-title">
                        <h3><b>Revolutionizing police complaints,</h3>
                        <h3><b>Strengthened by blockchain integrity,</b></h3>
                        <h3>Access control for secure solutions.</b></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="contactadmin" class="parallax-section" style="display: none;">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <div class="contactadmin-form">
                    <h1>Admin Login</h1>
                    <form method="post" action="<%=request.getContextPath()%>/AdminLogin">
                        <input type="text" name="username" class="form-control" placeholder="Your Name">
                        <input type="password" name="password" class="form-control" placeholder="Your Password">
                        <input type="submit" class="form-control" value="Submit">
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="contacts" class="parallax-section" style="display: none;">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <div class="contact-form">
                    <h1>User Login</h1> <b> New User ?</b>  <a href="<%=request.getContextPath()%>/ListDataOwners?submit=Add" target="myIframe"><b>Register Here</b></a>
                    <form method="post" action="<%=request.getContextPath()%>/DataOwnerLogin">
                        <input type="text" name="username" class="form-control" placeholder="Your Name">
                        <input type="password" name="password" class="form-control" placeholder="Your Password">
                        <input type="submit" class="form-control" value="Submit">
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="contactsuser" class="parallax-section" style="display: none;">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <div class="contact-form">
                    <h1>Police Login</h1>
                    <form method="post" action="<%=request.getContextPath()%>/UserLogin">
                        <input type="text" name="username" class="form-control" placeholder="Your Name">
                        <input type="password" name="password" class="form-control" placeholder="Your Password">
                        <input type="submit" class="form-control" value="Submit">
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.parallax.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
