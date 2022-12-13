<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Websearchby.aspx.vb" Inherits="Web_matrimonial.Websearchby" %>

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
        .style1
        {
            font-weight: bold;
            font-size: large;
            color: #333333;
            width: 909px;
        }
        .style2
        {
            margin-bottom: 8px;
            font-size: xx-large;
        }
        .style7
        {
            font-size: large;
        }
        .style8
        {
            margin-bottom: 8px;
            font-size: xx-large;
            width: 301px;
        }
        .style9
        {
            width: 308px;
        }
        .style10
        {
            margin-bottom: 8px;
            font-size: xx-large;
            width: 301px;
            height: 36px;
        }
        .style12
        {
            width: 308px;
            height: 36px;
        }
        .style13
        {
            width: 263px;
            height: 36px;
        }
        .style14
        {
            width: 263px;
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
                            
                            <li><a href="MainSearch.aspx">Search </a></li>
                           
                           <li><a href="catering/index.html">Log Out </a></li>
                          
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        
        
    <form id="form2" runat="server">
    
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
            	
                <h3 class="style2" align="center"> <b>Filter</b> <b>By</b> <b> Religion,Cast & Education </b> </h3>

    
        <table class="style1">
            <tr>
                <td class="style10">
                    <span class="style7">Select Religion</span>&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="20px" 
                        style="margin-left: 2px" Width="78px">
                    </asp:DropDownList>
                </td>
                <td class="style13">
                    <span class="style7">Select Caste</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="style12">
                    <span class="style7">Select</span> <span class="style7">Education</span>&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="3">
                    <asp:Button ID="btn_show" runat="server" Text="Show" Width="101px"  BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White"/> 
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
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
