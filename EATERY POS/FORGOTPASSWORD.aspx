<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FORGOTPASSWORD.aspx.vb" Inherits="FORGOTPASSWORD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Isabella_Eatery_VA_nonfiction_coffee.0.0.jpg">
    <form id="form1" runat="server">
    <div id="gvforgotpass">
    
        <asp:Label ID="Label1" runat="server" BackColor="White" Text="FIRST NAME:"></asp:Label>
        <br />
        <asp:TextBox ID="tbfirstnameforgot" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" BackColor="White" Text="LAST NAME:"></asp:Label>
        <br />
        <asp:TextBox ID="tblastnameforgot" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" BackColor="White" Text="ACCOUNT TYPE:"></asp:Label>
        <asp:TextBox 
            ID="tbaccounttypeforgot" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btncheck" runat="server" Text="CHECK" />
        <br />
        <asp:GridView ID="GVFORGOTPASS" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="FIRSTNAME" DataSourceID="datasourceforgot" Visible="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <asp:GridView ID="GVFORGOTPASS1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="FIRSTNAME" DataSourceID="datasourceforgot1" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" 
                    ShowEditButton="True" />
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
        <asp:SqlDataSource ID="datasourceforgot" runat="server" 
            ConnectionString="<%$ ConnectionStrings:STAFF %>" 
            SelectCommand="SELECT * FROM [FORGOTPASSTABLE]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="datasourceforgot1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:STAFF %>" 
            DeleteCommand="DELETE FROM [FORGOTPASSTABLE] WHERE [FIRSTNAME] = @original_FIRSTNAME" 
            InsertCommand="INSERT INTO [FORGOTPASSTABLE] ([FIRSTNAME], [LASTNAME], [SECURITYQUESTION], [ACCOUNTTYPE]) VALUES (@FIRSTNAME, @LASTNAME, @SECURITYQUESTION, @ACCOUNTTYPE)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [FORGOTPASSTABLE] WHERE (([FIRSTNAME] LIKE '%' + @FIRSTNAME + '%') AND ([LASTNAME] LIKE '%' + @LASTNAME + '%') AND ([ACCOUNTTYPE] LIKE '%' + @ACCOUNTTYPE + '%'))" 
            
            UpdateCommand="UPDATE [FORGOTPASSTABLE] SET [LASTNAME] = @LASTNAME, [SECURITYQUESTION] = @SECURITYQUESTION, [ACCOUNTTYPE] = @ACCOUNTTYPE WHERE [FIRSTNAME] = @original_FIRSTNAME">
            <DeleteParameters>
                <asp:Parameter Name="original_FIRSTNAME" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FIRSTNAME" Type="String" />
                <asp:Parameter Name="LASTNAME" Type="String" />
                <asp:Parameter Name="SECURITYQUESTION" Type="String" />
                <asp:Parameter Name="ACCOUNTTYPE" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="tbfirstnameforgot" Name="FIRSTNAME" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tblastnameforgot" Name="LASTNAME" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbaccounttypeforgot" Name="ACCOUNTTYPE" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="LASTNAME" Type="String" />
                <asp:Parameter Name="SECURITYQUESTION" Type="String" />
                <asp:Parameter Name="ACCOUNTTYPE" Type="String" />
                <asp:Parameter Name="original_FIRSTNAME" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" BackColor="White" 
            Text="SECURITY QUESTION:"></asp:Label>
        <asp:Label ID="lblsecurityquestionforgot" runat="server" BackColor="White"></asp:Label>
        <asp:TextBox ID="tbsecurityquestionanswer" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnretrieve" runat="server" Text="RETRIEVE" />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="SECURITYANSWER" DataSourceID="passworddatasource" 
            Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="SECURITYANSWER" DataSourceID="passworddatasource1" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="passworddatasource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:STAFF %>" 
            SelectCommand="SELECT * FROM [PASSWORDS]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="passworddatasource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:STAFF %>" 
            DeleteCommand="DELETE FROM [PASSWORDS] WHERE [SECURITYANSWER] = @original_SECURITYANSWER AND [PASSWORD] = @original_PASSWORD" 
            InsertCommand="INSERT INTO [PASSWORDS] ([SECURITYANSWER], [PASSWORD]) VALUES (@SECURITYANSWER, @PASSWORD)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [PASSWORDS] WHERE ([SECURITYANSWER] LIKE '%' + @SECURITYANSWER + '%')" 
            UpdateCommand="UPDATE [PASSWORDS] SET [PASSWORD] = @PASSWORD WHERE [SECURITYANSWER] = @original_SECURITYANSWER AND [PASSWORD] = @original_PASSWORD">
            <DeleteParameters>
                <asp:Parameter Name="original_SECURITYANSWER" Type="String" />
                <asp:Parameter Name="original_PASSWORD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SECURITYANSWER" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="tbsecurityquestionanswer" 
                    Name="SECURITYANSWER" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="original_SECURITYANSWER" Type="String" />
                <asp:Parameter Name="original_PASSWORD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="btnhome" runat="server" Text="HOMEPAGE" />
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
