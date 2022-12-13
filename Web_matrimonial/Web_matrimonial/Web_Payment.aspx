<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Web_Payment.aspx.vb" Inherits="Web_matrimonial.Web_Payment" %>

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
        }
        .style3
        {
            margin-bottom: 8px;
            font-size: xx-large;
        }
        .style4
        {
            font-weight: normal;
            color: #333333;
        }
        .style5
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
	<script type="text/jscript" >

 
 
	function formValidator(){
	  var txt_pay_id = document.getElementById("txt_pay_id");
 
      var txt_reg_amount = document.getElementById("txt_reg_amount");
       if(notEmpty(txt_pay_id,"enter pay id") && isNumeric(txt_pay_id,"Enter only Number"))
     
        if(notEmpty(txt_reg_amount,"enter amount") && isNumeric(txt_reg_amount,"Enter only Number"))
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
                            <li><a href="Web_Member_DashBoard.aspx">DashBoard</a></li>
                            
                           
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

 <section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - January 23, 2012!</div>
        <div class="main">
            <div class="wrapper">
            	
                <article class="col-2">
                	<h3 class="style3" align="center">Payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h3>
    <form id="form1" runat="server">
    
   
    <div>
    <h1 align="center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</h1>
        <table class="style1">
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td align="right" class="style5">
                    Payment ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style4">
                    <asp:TextBox ID="txt_pay_id" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td align="right" class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td align="right" class="style5">
&nbsp;Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style4">
                    <asp:TextBox ID="txt_reg_date" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td align="right" class="style4">
&nbsp;<span class="style1">Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
                <td class="style4">
                    <asp:TextBox ID="txt_reg_amount" Text=2000 Enabled =false  runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
             <tr ><td height="50px"></td></tr>   
            <tr>
                <td align="center" colspan="7">
                    <asp:Button ID="btn_save" runat="server" Text="Save"   BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White" OnClientClick="return formValidator()" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="7">
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style2">
                    </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
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


