<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Web_Member_Profile.aspx.vb" Inherits="Web_matrimonial.Web_Member" %>

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
            color: #000000;
            font-weight: bold;
            font-size: large;
        }
        .style3
        {
            margin-bottom: 8px;
        }
        .style4
        {
            margin-bottom: 8px;
            font-size: xx-large;
        }
        .style5
        {
            font-weight: bold;
        }
        .style6
        {
            color: #333333;
            font-weight: bold;
            font-size: large;
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
	   
      var txt_first_nm = document.getElementById("txt_first_nm");
      
      var txt_middle_nm = document.getElementById("txt_middle_nm");
      var txt_last_nm= document.getElementById("txt_last_nm");
       var txt_dob= document.getElementById("txt_dob");
       
          
      var txt_gender = document.getElementById("txt_gender");
      
      var txt_maritalstatus = document.getElementById("txt_maritalstatus");
      var txt_prof_add= document.getElementById("txt_prof_add");
      
       var txt_mob_no = document.getElementById("txt_mob_no");
      var txt_tele_no= document.getElementById("txt_tele_no");
       var txt_mangalik= document.getElementById("txt_mangalik");
       
          
      var txt_drink = document.getElementById("txt_drink");
      
      var txt_veg_nonveg = document.getElementById("txt_veg_nonveg");
      var txt_smoke= document.getElementById("txt_smoke");
       var txt_height= document.getElementById("txt_height");
       
          
      var txt_weight = document.getElementById("txt_weight");
      
      var txt_complexion = document.getElementById("txt_complexion");
      var txt_blood_group= document.getElementById("txt_blood_group");
       var txt_hobbies= document.getElementById("txt_hobbies");
        var txt_occupation = document.getElementById("txt_occupation");
        
       
         
     
       var txt_annual_income= document.getElementById("txt_annual_income");
        var txt_expectation = document.getElementById("txt_expectation");
        
          
 if(notEmpty(txt_first_nm,"enter first nm") && isAlphabet(txt_first_nm,"Enter only Alphabet"))
       if(notEmpty(txt_middle_nm,"enter middle nm") && isAlphabet(txt_middle_nm,"Enter only Alphabet"))
       
         if(notEmpty(txt_last_nm,"enter last nm") && isAlphabet(txt_last_nm,"Enter only Alphabet"))
          if(notEmpty(txt_dob,"enter dob"))
       if(notEmpty(txt_gender,"enter gender") && isAlphabet(txt_gender,"Enter only Alphabet"))
       
         if(notEmpty(txt_maritalstatus,"enter maritalstatus") && isAlphabet(txt_maritalstatus,"Enter only Alphabet"))
       if(notEmpty(txt_prof_add,"enter profle address") && isAlphanumeric(txt_prof_add,"Enter only Alphanumeric"))
       
         if(notEmpty(txt_mob_no,"enter mobile number")&& isNumeric(txt_mob_no,"Enter only number"))
       
        if(notEmpty(txt_tele_no,"enter telephone number") && isNumeric(txt_tele_no,"Enter only number"))
       
       if(notEmpty(txt_mangalik,"enter mangalik/Not") && isAlphabet(txt_mangalik,"Enter only Alphabet"))
       if(notEmpty(txt_drink,"enter drink/Not") && isAlphabet(txt_drink,"Enter only Alphabet"))
       
         if(notEmpty(txt_veg_nonveg,"enter veg/nonveg") && isAlphabet(txt_veg_nonveg,"Enter only Alphabet"))
       if(notEmpty(txt_smoke,"enter smoke/Not") && isAlphabet(txt_smoke,"Enter only Alphabet"))
       
         if(notEmpty(txt_height,"enter height"))
       if(notEmpty(txt_weight,"enter weight")&& isNumeric(txt_weight,"Enter only number") )
       
         if(notEmpty(txt_complexion,"enter complexion") && isAlphabet(txt_complexion,"Enter only Alphabet"))
       if(notEmpty(txt_blood_group,"enter blood_group") )
       
         if(notEmpty(txt_hobbies,"enter hobbies") && isAlphabet(txt_hobbies,"Enter only Alphabet"))
       if(notEmpty(txt_occupation,"enter occupation") && isAlphabet(txt_occupation,"Enter only Alphabet"))
       
    
       if(notEmpty(txt_annual_income,"enter annual_income") )
       
        if(notEmpty(txt_expectation,"enter expectation") && isAlphabet(txt_expectation,"Enter only Alphabet"))
       
      
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
function isAlphanumeric(elem, helperMsg){
	var alphaExp = /^[0-9a-zA-Z ,/.]+$/;
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
            	
                <article class="col-8">
                	<h3 class="style4" align="center">Member Profile</h3>

    <form id="form1" runat="server">
    
   
    <div>
    <h1 align="center" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</h1>
        <table width="100%" align=center border=1>
            <tr>
                <td align="right" class="style6">
                    Profile ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_prof_id" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Education &nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:DropDownList ID="DropDownList4" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    &nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    &nbsp;</td>
                <td align="right" class="style6">
                    Mangalik&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_mangalik" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_first_nm" runat="server"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Drink&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_drink" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    Middle Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_middle_nm" runat="server"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Veg/NonVeg&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_veg_nonveg" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_last_nm" runat="server"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Smoke&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_smoke" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    DOB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Height&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_height" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_gender" runat="server"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Weight&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_weight" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    Marital Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_maritalstatus" runat="server"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Complexion&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_complexion" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    Caste &nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </td>
                <td align="right" class="style6">
                    Blood Group&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_blood_group" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    Religion &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
                <td align="right" class="style6">
                    Hobbies&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_hobbies" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    Profile Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_prof_add" runat="server"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Occupation&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_occupation" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    Mobile No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_mob_no" runat="server"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Annual Income&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_annual_income" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style6">
                    Telephone No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:TextBox ID="txt_tele_no" runat="server"></asp:TextBox>
                </td>
                <td align="right" class="style6">
                    Expectation&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txt_expectation" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td align="right" class="style6">
                    Member Photo&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" />
                    <asp:Button ID="btn_upload" runat="server" Text="Upload" />
                </td>
            </tr>
             <tr ><td height="50px"></td></tr>  
            <tr>
                <td align="center" class="style5" colspan="4">
                    <asp:Button ID="btn_save" runat="server" Text="Save"    BackColor="#E24502" 
                        Font-Bold="True" Font-Size="Large" ForeColor="White"  OnClientClick="return formValidator()"/>
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
