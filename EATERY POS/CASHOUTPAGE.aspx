<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CASHOUTPAGE.aspx.vb" Inherits="FORGOTPASSWORD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    </head>
<body background="Isabella_Eatery_VA_nonfiction_coffee.0.0.jpg">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td align="center">
                <asp:Label ID="lbltotalsum3" runat="server" BackColor="White">CONRADS&#39; EATERY</asp:Label>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="lbltotalsum0" runat="server" BackColor="White">TOTAL SUM:</asp:Label>
                <asp:Label ID="lbltotalsum" runat="server" BackColor="White"></asp:Label>
                <br />
                <asp:Label ID="lbltotalsum1" runat="server" BackColor="White">BILL:</asp:Label>
                <asp:TextBox ID="tbbill" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
        <asp:Button ID="btncompute" runat="server" Text="COMPUTE" />
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lbltotalsum2" runat="server" BackColor="White">CHANGE:</asp:Label>
        <asp:Label ID="lblchange" runat="server" BackColor="White"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnorderagain" runat="server" Text="ORDER AGAIN " />
    </p>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
