<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MainSearch.aspx.vb" Inherits="Web_matrimonial.MainSearch" %>

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
        }
        .style2
        {
            margin-bottom: 8px;
            font-size: xx-large;
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
    <!--==============================header=================================-->
    <header>
    	<div class="row-top">
        	<div class="main">
            	<div class="wrapper">
                	<h1><a href="index.html">Match Making<span>.com</span></a></h1>
                    <nav>
                         <ul class="menu">
                         <li><a class="active" href="catering/index.html">Home</a></li>
                            
                            
                           
                            <li><a href="catering/index.html">Log Out </a></li>
                          
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
    <marquee><img src="catering/images/prettyPhoto/default/mainsearch1.jpg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/default/mainsearch2.jpg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/default/mainsearch3.jpg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/default/mainsearch4.jpg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/default/mainsearch5.jpg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /><img src="catering/images/prettyPhoto/default/mainsearch6.jpeg" style="border:2px; border-style:solid; border-radius:50px;" height=250px width=250px /></marquee>
    <section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - January 23, 2012!</div>
        <div class="main">
            <div class="wrapper">
            	
                <h3 class="style2" align="center"> <b>Main</b> <b>Search </b>  </h3>

<head>
    <style type="text/css">
        .style1
        {
            width: 1034px;
            height: 86px;
        }
        .style2
        {
            width: 264px;
        }
        .style3
        {
            width: 84px;
        }
        .style6
        {
            width: 78px;
        }
        .style7
        {
            width: 355px;
        }
        .style8
        {
            width: 341px;
        }
    </style>
</head>


<body>
       <form id="form1" runat="server">
       <table class="style1" align="left">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Button ID="btn_search_rel" runat="server" Text="Search By Religion" 
                    Width="285px"   BackColor="#E24502"    Font-Bold="True" Font-Size="Large" 
                    ForeColor="White" Height="42px" style="margin-right: 67px"  />
            </td>
            <td class="style8">
                <asp:Button ID="btn_serachcast" runat="server" Text="Search By Cast"   BackColor="#E24502"    Font-Bold="True" Font-Size="Large" 
                    ForeColor="White" Height="42px" style="margin-right: 67px"  />

            </td>
           
           
            <td class="style2">
               
                <asp:Button ID="btn_search_Edu" runat="server" Text="Search By Education"  
                    BackColor="#E24502"    Font-Bold="True" Font-Size="Large" 
                    ForeColor="White" Height="42px" style="margin-right: 67px" 
                    Width="270px"  />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style6">
                
                &nbsp;</td>
            <td class="style3">
                
                &nbsp;</td>
            <td class="style2">
               
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Button ID="btn_SearchGender" runat="server" Text="Search By Gender"  BackColor="#E24502"    Font-Bold="True" Font-Size="Large" 
                    ForeColor="White" Height="42px" style="margin-right: 67px"    />
            </td>
            <td class="style8">
                <asp:Button ID="btn_searchall" runat="server" Text="Search By All"    
                    BackColor="#E24502"    Font-Bold="True" Font-Size="Large" 
                    ForeColor="White" Height="42px" style="margin-right: 67px"     />
            </td>
            <td class="style6">
                
                &nbsp;</td>
            <td class="style3">
                
                &nbsp;</td>
            <td class="style2">
               
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</form>
</body>
</html>
