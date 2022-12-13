﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Web_SubCast.aspx.vb" Inherits="Web_matrimonial.Web_SubCast" %>

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
        }
        .style2
        {
            font-weight: normal;
            color: #333333;
        }
        .style3
        {
            font-weight: bold;
        }
        .style4
        {
            margin-bottom: 8px;
            font-size: xx-large;
        }
        .style5
        {
            color: #333333;
        }
        .style6
        {
            font-weight: bold;
            font-size: large;
            color: #333333;
        }
    </style>
	<!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
        	&nbsp;</a></div>
	<![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
	<![endif]-->
	<script type="text/jscript" >

 
 
	function formValidator(){
	
	 
	    
      var txt_subcast_nm = document.getElementById("txt_subcast_nm");
      
    
     
      if(notEmpty(txt_subcast_nm,"enter subcast nm") && isAlphabet(txt_subcast_nm,"Enter only Alphabet"))
      {
        return true;
      }
      return false;
	    
	}
	function notEmpty(elem,helperMsg){
        
	if(elem.value.length == 0){
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
	return true;
}



function isAlphabet(elem,helperMsg){
	var alphaExp = /^[a-zA-Z ]+$/;
	if(elem.value.match(alphaExp)){
		return true;
	}else{
		alert(helperMsg);
		elem.value="";
		elem.focus();
		return false;
	}
}

	
	</script>
</head>
<body id="page6">
	<!--==============================header=================================-->
    <header>
    	<div class="row-top">
        	<div class="main">
            	<div class="wrapper">
                	<h1><a href="index.html">Match Making<span>. com</span></a></h1>
                    <nav>
                         <ul class="menu">
                            <li><a class="active" href="index.html">Home</a></li>
                            <li><a href="menu.html">Login</a></li>
                            <li><a href="catalogue.html">Search </a></li>
                           
                            <li><a href="faq.html">Registration </a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="row-bot">
        	<div class="row-bot-bg">
            	<div class="main">
                	<h2>
                	<h2>Impressive Selection <span>for life partner</span></h2>
           </div>
            </div>
        </div>
    </header>

 <section id="content" >
  

    <form id="form1" runat="server" >
    
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/frm_menu.aspx" 
        ForeColor="#333333">Dash 
    Board</asp:HyperLink>
    
    
        <div class="main" >
            <div class="wrapper">
            	
                <article class="col-2" >
                	<h3 class="style4" align="center">SubCast </h3>
 
    <h1 align="center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</h1>
        <table class="style1" >
            <tr>
                <td>
                    &nbsp;</td>
                <td align="right" class="style6">
                    SubCast ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_subcast_id" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr >
                <td>
                    &nbsp;</td>
                <td align="right" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Cast ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        style="text-align: center; margin-left: 7px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="right" class="style2">
                    <span class="style1">SubCast Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_subcast_nm" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr ><td height="50px"></td></tr>   
            <tr>
                <td align="center" colspan="5">
                    <asp:Button ID="btn_insert" runat="server" Text="Insert"   BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White"  OnClientClick="return formValidator()"/>
                    <asp:Button ID="btn_update" runat="server" Text="Update"  BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Enabled="False"  OnClientClick="return formValidator()"/>
                    <asp:Button ID="btn_delete" runat="server" Text="Delete"   BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Enabled="False" />
                    <asp:Button ID="btn_show" runat="server" Text="Show All"   BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" />
                    <asp:Button ID="btn_search" runat="server" Text="Search"   BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Width="146px"  />
                </td>
            </tr>
             <tr>
                <td align="center" class="style3" colspan="5"  >
                    &nbsp;</td>
            </tr>
             <tr>
                <td align="center" class="style3" colspan="5"  >
                    <asp:GridView ID="GridView1" runat="server" Width="400px" Forecolor="black" 
                        AutoGenerateSelectButton="True" Font-Size="Large"  >
                        <SelectedRowStyle HorizontalAlign="Left" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:GridView>
                 </td>
            </tr>
        </table>
    
  
    <script type="text/javascript"> Cufon.now(); </script>
            </div>
        <div class="main">
        	<div class="aligncenter" align="center">
            </div>
        </div>
    </form>
    </body>
</html>
