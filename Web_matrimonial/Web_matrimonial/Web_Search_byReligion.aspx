<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Web_Search_byReligion.aspx.vb" Inherits="Web_matrimonial.Web_Search_byReligion" %>

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
            width: 607px;
        }
        .style2
        {
            margin-bottom: 8px;
            font-size: xx-large;
        }
        .style3
        {
            width: 420px;
        }
        .style4
        {
            margin-bottom: 8px;
            font-size: xx-large;
            width: 420px;
        }
        .style5
        {
            width: 420px;
            height: 42px;
        }
        .style6
        {
            height: 42px;
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
<marquee><img src="catering/images/prettyPhoto/facebook/rel1.jpeg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/facebook/rel2.jpeg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/facebook/rel3.jpeg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/facebook/rel4.png" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/facebook/rel7.jpeg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/facebook/rel5.jpg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /></marquee>
 <section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - January 23, 2012!</div>
        <div class="main">
            <div class="wrapper">
            	
                <h3 class="style2" align="center"> <b>Filter</b> <b>By</b> <b>Religion </b> </h3>







   
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5" align="right">
                    Select Religion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style6">
                    &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    <asp:Button ID="btn_search" runat="server" Text="Search" BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                </td>
                <td>
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
