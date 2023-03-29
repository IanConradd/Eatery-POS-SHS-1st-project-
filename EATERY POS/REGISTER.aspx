<%@ Page Language="VB" AutoEventWireup="false" CodeFile="REGISTER.aspx.vb" Inherits="REGISTER" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Isabella_Eatery_VA_nonfiction_coffee.0.0.jpg">
    <form id="form1" runat="server">
    <asp:Label ID="Label4" runat="server" BackColor="White" Text="FIRST NAME:"></asp:Label>
    <asp:TextBox ID="tbfirstname" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" BackColor="White" Text="MIDDLE NAME:"></asp:Label>
    <asp:TextBox ID="tbmiddlename" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" BackColor="White" Text="LAST NAME:"></asp:Label>
    <asp:TextBox ID="tblastname" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" BackColor="White" Text="AGE:"></asp:Label>
    <asp:TextBox ID="tbage" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label8" runat="server" BackColor="White" Text="PASSWORD:"></asp:Label>
    <asp:TextBox ID="tbpassword" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" BackColor="White" 
        Text="ACCOUNT TYPE? (ADMIN OR EMPLOYEE):"></asp:Label>
    <asp:TextBox ID="tbaccounttyperegister" 
        runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label10" runat="server" BackColor="White" 
        Text="SECURITY QUESTION "></asp:Label>
    <asp:DropDownList ID="ddlsecurity" runat="server" AutoPostBack="True" 
        Height="16px">
        <asp:ListItem>WHAT IS THE NAME OF YOUR MOTHER?</asp:ListItem>
        <asp:ListItem>WHAT IS YOUR NICKNAME?</asp:ListItem>
        <asp:ListItem>FAVORITE ARTIST?</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="lblsecurity" runat="server" BackColor="White"></asp:Label>
    <asp:TextBox ID="tbsecuanswer" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnregister1" runat="server" Text="REGISTER" />
    <asp:GridView ID="GVSTAFF" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PASSWORD" 
        DataSourceID="STAFFSOURCE" Visible="False" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="STAFFSOURCE" runat="server" 
        ConnectionString="<%$ ConnectionStrings:STAFF %>" 
        DeleteCommand="DELETE FROM [STAFF] WHERE [PASSWORD] = @PASSWORD" 
        InsertCommand="INSERT INTO [STAFF] ([FIRSTNAME], [MIDDLENAME], [LASTNAME], [AGE], [PASSWORD], [ACCOUNTTYPE], [SECURITYQUESTION], [SECURITYANSWER]) VALUES (@FIRSTNAME, @MIDDLENAME, @LASTNAME, @AGE, @PASSWORD, @ACCOUNTTYPE, @SECURITYQUESTION, @SECURITYANSWER)" 
        SelectCommand="SELECT * FROM [STAFF]" 
        UpdateCommand="UPDATE [STAFF] SET [FIRSTNAME] = @FIRSTNAME, [MIDDLENAME] = @MIDDLENAME, [LASTNAME] = @LASTNAME, [AGE] = @AGE, [ACCOUNTTYPE] = @ACCOUNTTYPE, [SECURITYQUESTION] = @SECURITYQUESTION, [SECURITYANSWER] = @SECURITYANSWER WHERE [PASSWORD] = @PASSWORD">
        <DeleteParameters>
            <asp:Parameter Name="PASSWORD" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="tbfirstname" Name="FIRSTNAME" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tbmiddlename" Name="MIDDLENAME" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tblastname" Name="LASTNAME" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tbage" Name="AGE" PropertyName="Text" 
                Type="Int32" />
            <asp:ControlParameter ControlID="tbpassword" Name="PASSWORD" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tbaccounttyperegister" Name="ACCOUNTTYPE" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lblsecurity" Name="SECURITYQUESTION" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tbsecuanswer" Name="SECURITYANSWER" 
                PropertyName="Text" Type="String" />
        </InsertParameters>
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
    <asp:GridView ID="GVFORGOTPASS" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="FIRSTNAME" DataSourceID="STAFFFORGOTPASSSOURCE" 
        Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="FIRSTNAME" HeaderText="FIRSTNAME" ReadOnly="True" 
                SortExpression="FIRSTNAME" />
            <asp:BoundField DataField="LASTNAME" HeaderText="LASTNAME" 
                SortExpression="LASTNAME" />
            <asp:BoundField DataField="SECURITYQUESTION" HeaderText="SECURITYQUESTION" 
                SortExpression="SECURITYQUESTION" />
            <asp:BoundField DataField="ACCOUNTTYPE" HeaderText="ACCOUNTTYPE" 
                SortExpression="ACCOUNTTYPE" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="STAFFFORGOTPASSSOURCE" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:STAFF %>" 
        DeleteCommand="DELETE FROM [FORGOTPASSTABLE] WHERE [FIRSTNAME] = @original_FIRSTNAME AND [LASTNAME] = @original_LASTNAME AND [SECURITYQUESTION] = @original_SECURITYQUESTION AND (([ACCOUNTTYPE] = @original_ACCOUNTTYPE) OR ([ACCOUNTTYPE] IS NULL AND @original_ACCOUNTTYPE IS NULL))" 
        InsertCommand="INSERT INTO [FORGOTPASSTABLE] ([FIRSTNAME], [LASTNAME], [SECURITYQUESTION], [ACCOUNTTYPE]) VALUES (@FIRSTNAME, @LASTNAME, @SECURITYQUESTION, @ACCOUNTTYPE)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [FORGOTPASSTABLE]" 
        UpdateCommand="UPDATE [FORGOTPASSTABLE] SET [LASTNAME] = @LASTNAME, [SECURITYQUESTION] = @SECURITYQUESTION, [ACCOUNTTYPE] = @ACCOUNTTYPE WHERE [FIRSTNAME] = @original_FIRSTNAME AND [LASTNAME] = @original_LASTNAME AND [SECURITYQUESTION] = @original_SECURITYQUESTION AND (([ACCOUNTTYPE] = @original_ACCOUNTTYPE) OR ([ACCOUNTTYPE] IS NULL AND @original_ACCOUNTTYPE IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_FIRSTNAME" Type="String" />
            <asp:Parameter Name="original_LASTNAME" Type="String" />
            <asp:Parameter Name="original_SECURITYQUESTION" Type="String" />
            <asp:Parameter Name="original_ACCOUNTTYPE" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="tbfirstname" Name="FIRSTNAME" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tblastname" Name="LASTNAME" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="lblsecurity" Name="SECURITYQUESTION" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tbaccounttyperegister" Name="ACCOUNTTYPE" 
                PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LASTNAME" Type="String" />
            <asp:Parameter Name="SECURITYQUESTION" Type="String" />
            <asp:Parameter Name="ACCOUNTTYPE" Type="String" />
            <asp:Parameter Name="original_FIRSTNAME" Type="String" />
            <asp:Parameter Name="original_LASTNAME" Type="String" />
            <asp:Parameter Name="original_SECURITYQUESTION" Type="String" />
            <asp:Parameter Name="original_ACCOUNTTYPE" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="SECURITYANSWER" DataSourceID="PASSWORDSDATASOURCE" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="SECURITYANSWER" HeaderText="SECURITYANSWER" 
                ReadOnly="True" SortExpression="SECURITYANSWER" />
            <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" 
                SortExpression="PASSWORD" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="PASSWORDSDATASOURCE" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:STAFF %>" 
        DeleteCommand="DELETE FROM [PASSWORDS] WHERE [SECURITYANSWER] = @original_SECURITYANSWER AND [PASSWORD] = @original_PASSWORD" 
        InsertCommand="INSERT INTO [PASSWORDS] ([SECURITYANSWER], [PASSWORD]) VALUES (@SECURITYANSWER, @PASSWORD)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [PASSWORDS]" 
        UpdateCommand="UPDATE [PASSWORDS] SET [PASSWORD] = @PASSWORD WHERE [SECURITYANSWER] = @original_SECURITYANSWER AND [PASSWORD] = @original_PASSWORD">
        <DeleteParameters>
            <asp:Parameter Name="original_SECURITYANSWER" Type="String" />
            <asp:Parameter Name="original_PASSWORD" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="tbsecuanswer" Name="SECURITYANSWER" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tbpassword" Name="PASSWORD" 
                PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PASSWORD" Type="String" />
            <asp:Parameter Name="original_SECURITYANSWER" Type="String" />
            <asp:Parameter Name="original_PASSWORD" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    </form>
</body>
</html>
