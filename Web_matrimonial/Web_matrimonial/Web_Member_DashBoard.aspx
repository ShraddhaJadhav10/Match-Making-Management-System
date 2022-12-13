<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Web_Member_DashBoard.aspx.vb" Inherits="Web_matrimonial.Web_Member_DashBoard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Contact</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="catering/css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="catering/css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="catering/css/layout.css" type="text/css" media="screen"> 
    <script src="catering/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="catering/js/cufon-yui.js" type="text/javascript"></script>
    <script src="catering/js/cufon-replace.js" type="text/javascript"></script> 
    <script src="catering/js/Dynalight_400.font.js" type="text/javascript"></script>
    <script src="catering/js/FF-cash.js" type="text/javascript"></script>  
	<style type="text/css">
        .style2
        {
            margin-bottom: 8px;
            font-size: xx-large;
        }
        .style3
        {
            margin-bottom: 8px;
            font-size: large;
            font-weight: bold;
            color: #333333;
        }
        .style4
        {
            font-size: large;
        }
        .style5
        {
            font-size: large;
            color: #FFFFFF;
        }
        .style6
        {
            color: #333333;
        }
    </style>
	<!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
        	<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
	<![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
	<![endif]-->
</head>
<body id="page6">
	<!--==============================header=================================-->
    <header>
    	<div class="row-top">
        	<div class="main">
            	<div class="wrapper">
                	<h1><a href="index.html">Match Making<span>.com</span></a></h1>
                    <nav>
                         <ul class="menu">
                            <li><a class="active" href="catering/index.html">Home</a></li>
                            <li><a href="Web_Member_Login.aspx">Member Login</a></li>
                        
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="row-bot">
        	<div class="row-bot-bg">
            	<div class="main">
                	<h2>Impressive Selection <span>for life partner</span></h2>
                </div>
            </div>
        </div>
    </header>

 <section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - January 23, 2012!</div>
        <div class="main">
            <div class="wrapper">
            	
                <article class="col-2">
                	<h3 class="style2" align="center">Member Dash Board</h3>

    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td align="center" class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style5">
&nbsp;&nbsp;<b class="style4">&nbsp;<span class="style6"> Member</span></b><span class="style6">&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style4">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#333333" 
                    NavigateUrl="~/Web_Member_Profile.aspx">Create Your Profile</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#333333" 
                    NavigateUrl="~/MainSearch.aspx">Search</asp:HyperLink>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
