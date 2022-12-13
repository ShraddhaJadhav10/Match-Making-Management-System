<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frm_paymentwise_date.aspx.vb" Inherits="Web_matrimonial.frm_paymentwise_date" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/frm_menu.aspx">Dash 
    Board</asp:HyperLink>
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                From Date</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style2">
                To Date</td>
            <td>
                <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="btn_show" runat="server" Text="Show" />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                    AutoDataBind="true" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
