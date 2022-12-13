<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Web_Member_Login.aspx.vb" Inherits="Web_matrimonial.Web_Customer_Login" %>

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
            margin-bottom: 8px;
            font-size: large;
            font-weight: bold;
            color: #333333;
            width: 235px;
        }
        .style5
        {
            width: 235px;
        }
        .style6
        {
            margin-bottom: 8px;
            font-size: xx-large;
            width: 235px;
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
                	<h3 class="style2" align="center">Member Login</h3>

    <form id="form1" runat="server">
    <div>
    <table align=center width=100% >
      
            <tr>
                <td align="right" class="style4">
                    <asp:Image ID="Image1" runat="server" Height="100px" 
                        ImageUrl="~/catering/images/prettyPhoto/default/memberlogo.png" />
                </td>
                <td align="right" class="style3">
                    Member Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txt_login_email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style4">
                    &nbsp;</td>
                <td align="right" class="style3">
                    Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="txt_mem_login_pass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
             <tr ><td height="50px" class="style5">&nbsp;</td><td height="50px"></td></tr>          
            <tr>
                <td align="center" class="style6">
                    &nbsp;</td>
                <td align="center" class="style2" colspan="2">
                    <asp:Button ID="btn_mem_login" runat="server" 
                        style="font-size: large; color: #FFFFFF" Text="Login"   
                        BackColor="#E24502"    Font-Bold="True" Font-Size="Large" ForeColor="White" 
                        Width="92px"  />
                </td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    &nbsp;</td>
                <td align="center" class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style6">
                    &nbsp;</td>
                <td align="center" class="style2" colspan="2">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#333333" 
                        NavigateUrl="~/Web_Registration.aspx">New Member</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    
    
    <!--==============================footer=================================-->
    <footer>
        <div class="main">
        	<div class="aligncenter">
            </div>
        </div>
    </footer>
    <script type="text/javascript"> Cufon.now(); </script>
</body>
</html>

