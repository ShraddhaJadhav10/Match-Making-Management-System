<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="web_Religion.aspx.vb" Inherits="Web_matrimonial._Default" %>

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
	    .style11
	    {
	    
	padding:0;
	border:solid 2px red;
	
}
	    
	    
        .style1
        {
            font-weight: bold;
            font-size: large;
            color: #333333;
            width: 317px;
        }
        .style2
        {
            margin-bottom: 8px;
            font-size: xx-large;
        }
        .style3
        {
            height: 24px;
        }
        .style4
        {
            font-weight: bold;
            font-size: large;
            color: #333333;
            width: 317px;
            height: 24px;
        }
        .style5
        {
            height: 24px;
            width: 436px;
        }
        .style6
        {
            width: 153px;
        }
        .style7
        {
            height: 24px;
            width: 153px;
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
	<script type="text/jscript" >

 
 
	function formValidator(){
	  
      var txt_religion_nm = document.getElementById("txt_religion_nm");
      var txt_religion_id = document.getElementById("txt_religion_id");
       if(notEmpty(txt_religion_id,"enter id") && isNumeric(txt_religion_id,"Enter only Number"))
      if(notEmpty(txt_religion_nm,"enter nm") && isAlphabet(txt_religion_nm,"Enter only Alphabet"))
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
function isNumeric(elem, helperMsg){
	var numericExpression = /^[0-9]+$/;
	if(elem.value.match(numericExpression)){
		return true;
	}else{
		elem.value="";
		alert(helperMsg);
		elem.focus();
		return false;
	}
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
                	<h1><a href="index.html">Match Making<span>.com</span></a></h1>
                    <nav>
                         <ul class="menu">
                             <li><a class="active" href="catering/index.html">Home</a></li>
                            <li><a href="catering/index.html">Log Out</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>








    <form id="form1" runat="server">
    
        <div class="row-bot">
        	<div class="row-bot-bg">
            	<div class="main">
                	<h2>Impressive Selection <span>for life partner</span></h2>
                </div>
            </div>
        </div>
    </header>

 <section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - January 23, 2012!</div>
   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/frm_menu.aspx" 
        ForeColor="#333333">Dash 
    Board</asp:HyperLink>
    
 
        <div class="main">
            <div class="wrapper">
            	
                <article class="col-2">
                	<h3 class="style2" align="center">Religion </h3>








    <div>
   
        <table align=center width=100% >
            <tr align="left">
                <td class="style3" >
       
                    </td>
                <td class="style4" align="right">
                    &nbsp; Religion ID&nbsp;</td>
                <td class="style7" align="left">
                    <asp:TextBox ID="txt_religion_id" runat="server" Enabled="False" Width="144px"></asp:TextBox>
                </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style1" align="right">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style6">
                    <asp:TextBox ID="txt_religion_nm" runat="server" Width="144px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr ><td height="50px"></td></tr>            
            <tr>
                <td align="center" class="style3" colspan="4">
                    <asp:Button ID="btn_insert" runat="server" Text="Insert" 
                
                    BackColor="#E24502"    Font-Bold="True" Font-Size="Large" ForeColor="White" 
                    OnClientClick="return formValidator()"
                    
                    />
                    <asp:Button ID="btn_update" runat="server" Text="Update"   BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Enabled="False"  OnClientClick="return formValidator()"
                     />
                    <asp:Button ID="btn_delete" runat="server" Text="Delete"  BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" Enabled="False" />
                    <asp:Button ID="btn_show" runat="server" Text="Show All"  BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" />
                    <asp:Button ID="btn_search" runat="server" Text="Search"   BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" />
                </td>
            </tr>
          
            <tr>
                <td align="center" class="style5" colspan="4">
                    <br />
                    <asp:GridView ID="GridView1" style="border:solid 2px orangeRed;" runat="server" Width="288px"  ForeColor="black" 
                        AutoGenerateSelectButton="True" Font-Size="Large">
                        <RowStyle BorderColor="OrangeRed"   BorderStyle="Solid" BorderWidth="2px" />
                        <FooterStyle VerticalAlign="Middle" />
                        <SelectedRowStyle BorderStyle="Solid" BorderWidth="2px" />
                        <EditRowStyle BorderColor="OrangeRed"   BorderStyle="Solid" BorderWidth="2px" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    
    
    
    
    
    
    
    </article>
    </div>
    </div>
    </form>
    
    
    
    
    
    
    
    </section>
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

