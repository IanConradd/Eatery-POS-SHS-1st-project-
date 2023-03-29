<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HOMEPAGE.aspx.vb" Inherits="HOMEPAGE" %>

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
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('Isabella_Eatery_VA_nonfiction_coffee.0.0.jpg'); background-repeat: no-repeat; height: 799px; width: 1198px;">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblwords0" runat="server" BackColor="White">CONRADS&#39; EATERY</asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblwords" runat="server" BackColor="White">PLEASE SELECT YOUR ACCOUNT TYPE FIRST.</asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table 
            class="style1">
            <tr>
                <td>
        <br />
        <asp:Label ID="lblusername1" runat="server" Text="LASTNAME:" BackColor="White"></asp:Label>
        <br />
        <asp:TextBox ID="tblastname" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
        <br />
        <asp:Label ID="lblpassword1" runat="server" Text="PASSWORD:" BackColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="tbpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
        <asp:Button ID="btnforgot" runat="server" BackColor="#3366FF" 
            BorderStyle="None" Text="Forgot password?" Visible="False" />
        <br />
                </td>
                <td>
        <asp:Label ID="lblaccounttypehome1" runat="server" BackColor="White">ACCOUNT TYPE:</asp:Label>
&nbsp;<asp:DropDownList ID="ddlaccounttypehome" runat="server" AutoPostBack="True" 
                        BackColor="White" ForeColor="Black">
            <asp:ListItem>ADMIN</asp:ListItem>
            <asp:ListItem>EMPLOYEE</asp:ListItem>
        </asp:DropDownList>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblaccounttypehome" runat="server" BackColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="btnregister" runat="server" Text="REGISTER" />
                </td>
                <td>
        <asp:Button ID="btnlogin" runat="server" Text="LOGIN" />
                </td>
                <td>
        <asp:Button ID="btntryagain" runat="server" Text="TRY AGAIN" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="gvlogin" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="PASSWORD" DataSourceID="LOGINSOURCE" Visible="False">
            <Columns>
                <asp:BoundField DataField="FIRSTNAME" HeaderText="FIRSTNAME" 
                    SortExpression="FIRSTNAME" />
                <asp:BoundField DataField="MIDDLENAME" HeaderText="MIDDLENAME" 
                    SortExpression="MIDDLENAME" />
                <asp:BoundField DataField="LASTNAME" HeaderText="LASTNAME" 
                    SortExpression="LASTNAME" />
                <asp:BoundField DataField="AGE" HeaderText="AGE" SortExpression="AGE" />
                <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" ReadOnly="True" 
                    SortExpression="PASSWORD" />
                <asp:BoundField DataField="ACCOUNTTYPE" HeaderText="ACCOUNTTYPE" 
                    SortExpression="ACCOUNTTYPE" />
                <asp:BoundField DataField="SECURITYQUESTION" HeaderText="SECURITYQUESTION" 
                    SortExpression="SECURITYQUESTION" />
                <asp:BoundField DataField="SECURITYANSWER" HeaderText="SECURITYANSWER" 
                    SortExpression="SECURITYANSWER" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="LOGINSOURCE" runat="server" 
            ConnectionString="<%$ ConnectionStrings:STAFF %>" 
            DeleteCommand="DELETE FROM [STAFF] WHERE [PASSWORD] = @PASSWORD" 
            InsertCommand="INSERT INTO [STAFF] ([FIRSTNAME], [MIDDLENAME], [LASTNAME], [AGE], [PASSWORD], [ACCOUNTTYPE], [SECURITYQUESTION], [SECURITYANSWER]) VALUES (@FIRSTNAME, @MIDDLENAME, @LASTNAME, @AGE, @PASSWORD, @ACCOUNTTYPE, @SECURITYQUESTION, @SECURITYANSWER)" 
            SelectCommand="SELECT * FROM [STAFF] WHERE (([LASTNAME] = @LASTNAME) AND ([PASSWORD] = @PASSWORD) AND ([ACCOUNTTYPE] = @ACCOUNTTYPE))" 
            UpdateCommand="UPDATE [STAFF] SET [FIRSTNAME] = @FIRSTNAME, [MIDDLENAME] = @MIDDLENAME, [LASTNAME] = @LASTNAME, [AGE] = @AGE, [ACCOUNTTYPE] = @ACCOUNTTYPE, [SECURITYQUESTION] = @SECURITYQUESTION, [SECURITYANSWER] = @SECURITYANSWER WHERE [PASSWORD] = @PASSWORD">
            <DeleteParameters>
                <asp:Parameter Name="PASSWORD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FIRSTNAME" Type="String" />
                <asp:Parameter Name="MIDDLENAME" Type="String" />
                <asp:Parameter Name="LASTNAME" Type="String" />
                <asp:Parameter Name="AGE" Type="Int32" />
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="ACCOUNTTYPE" Type="String" />
                <asp:Parameter Name="SECURITYQUESTION" Type="String" />
                <asp:Parameter Name="SECURITYANSWER" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="tblastname" Name="LASTNAME" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbpassword" Name="PASSWORD" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblaccounttypehome" Name="ACCOUNTTYPE" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FIRSTNAME" Type="String" />
                <asp:Parameter Name="MIDDLENAME" Type="String" />
                <asp:Parameter Name="LASTNAME" Type="String" />
                <asp:Parameter Name="AGE" Type="Int32" />
                <asp:Parameter Name="ACCOUNTTYPE" Type="String" />
                <asp:Parameter Name="SECURITYQUESTION" Type="String" />
                <asp:Parameter Name="SECURITYANSWER" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
