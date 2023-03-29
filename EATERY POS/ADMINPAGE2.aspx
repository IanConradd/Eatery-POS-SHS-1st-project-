<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ADMINPAGE2.aspx.vb" Inherits="FORGOTPASSWORD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('Isabella_Eatery_VA_nonfiction_coffee.0.0.jpg'); background-repeat: repeat;">
    <p>
        <asp:Label ID="lblwords" runat="server" BackColor="White" Text="FIRSTNAME:"></asp:Label>
        <asp:TextBox ID="tbfirstname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnadminhome" runat="server" Text="BACK TO ADMIN HOMEPAGE" />
    </p>
    <p>
        <asp:Label ID="lblwords0" runat="server" BackColor="White" Text="LASTNAME:"></asp:Label>
        <asp:TextBox ID="tblastname" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblwords1" runat="server" BackColor="White" Text="ACCOUNT TYPE:"></asp:Label>
        <asp:TextBox ID="tbacounttype" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnsearch" runat="server" Text="SEARCH" />
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="gvstaff" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PASSWORD" 
        DataSourceID="sqlstaff" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
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
    <asp:GridView ID="gvstaff1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PASSWORD" 
        DataSourceID="sqlstaff1" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="sqlstaff" runat="server" 
        ConnectionString="<%$ ConnectionStrings:STAFF %>" 
        DeleteCommand="DELETE FROM [STAFF] WHERE [PASSWORD] = @PASSWORD" 
        InsertCommand="INSERT INTO [STAFF] ([FIRSTNAME], [MIDDLENAME], [LASTNAME], [AGE], [PASSWORD], [ACCOUNTTYPE], [SECURITYQUESTION], [SECURITYANSWER]) VALUES (@FIRSTNAME, @MIDDLENAME, @LASTNAME, @AGE, @PASSWORD, @ACCOUNTTYPE, @SECURITYQUESTION, @SECURITYANSWER)" 
        SelectCommand="SELECT * FROM [STAFF]" 
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
    <asp:SqlDataSource ID="sqlstaff1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:STAFF %>" 
        DeleteCommand="DELETE FROM [STAFF] WHERE [PASSWORD] = @original_PASSWORD AND [FIRSTNAME] = @original_FIRSTNAME AND [MIDDLENAME] = @original_MIDDLENAME AND [LASTNAME] = @original_LASTNAME AND [AGE] = @original_AGE AND [ACCOUNTTYPE] = @original_ACCOUNTTYPE AND [SECURITYQUESTION] = @original_SECURITYQUESTION AND [SECURITYANSWER] = @original_SECURITYANSWER" 
        InsertCommand="INSERT INTO [STAFF] ([FIRSTNAME], [MIDDLENAME], [LASTNAME], [AGE], [PASSWORD], [ACCOUNTTYPE], [SECURITYQUESTION], [SECURITYANSWER]) VALUES (@FIRSTNAME, @MIDDLENAME, @LASTNAME, @AGE, @PASSWORD, @ACCOUNTTYPE, @SECURITYQUESTION, @SECURITYANSWER)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [STAFF] WHERE (([FIRSTNAME] LIKE '%' + @FIRSTNAME + '%') AND ([LASTNAME] LIKE '%' + @LASTNAME + '%') AND ([ACCOUNTTYPE] LIKE '%' + @ACCOUNTTYPE + '%'))" 
        UpdateCommand="UPDATE [STAFF] SET [FIRSTNAME] = @FIRSTNAME, [MIDDLENAME] = @MIDDLENAME, [LASTNAME] = @LASTNAME, [AGE] = @AGE, [ACCOUNTTYPE] = @ACCOUNTTYPE, [SECURITYQUESTION] = @SECURITYQUESTION, [SECURITYANSWER] = @SECURITYANSWER WHERE [PASSWORD] = @original_PASSWORD AND [FIRSTNAME] = @original_FIRSTNAME AND [MIDDLENAME] = @original_MIDDLENAME AND [LASTNAME] = @original_LASTNAME AND [AGE] = @original_AGE AND [ACCOUNTTYPE] = @original_ACCOUNTTYPE AND [SECURITYQUESTION] = @original_SECURITYQUESTION AND [SECURITYANSWER] = @original_SECURITYANSWER">
        <DeleteParameters>
            <asp:Parameter Name="original_PASSWORD" Type="String" />
            <asp:Parameter Name="original_FIRSTNAME" Type="String" />
            <asp:Parameter Name="original_MIDDLENAME" Type="String" />
            <asp:Parameter Name="original_LASTNAME" Type="String" />
            <asp:Parameter Name="original_AGE" Type="Int32" />
            <asp:Parameter Name="original_ACCOUNTTYPE" Type="String" />
            <asp:Parameter Name="original_SECURITYQUESTION" Type="String" />
            <asp:Parameter Name="original_SECURITYANSWER" Type="String" />
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
            <asp:ControlParameter ControlID="tbfirstname" Name="FIRSTNAME" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tblastname" Name="LASTNAME" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="tbacounttype" Name="ACCOUNTTYPE" 
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
            <asp:Parameter Name="original_PASSWORD" Type="String" />
            <asp:Parameter Name="original_FIRSTNAME" Type="String" />
            <asp:Parameter Name="original_MIDDLENAME" Type="String" />
            <asp:Parameter Name="original_LASTNAME" Type="String" />
            <asp:Parameter Name="original_AGE" Type="Int32" />
            <asp:Parameter Name="original_ACCOUNTTYPE" Type="String" />
            <asp:Parameter Name="original_SECURITYQUESTION" Type="String" />
            <asp:Parameter Name="original_SECURITYANSWER" Type="String" />
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
    </form>
</body>
</html>
