<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ADMINPAGE4.aspx.vb" Inherits="FORGOTPASSWORD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 541px;
        }
        .style3
        {
            width: 439px;
        }
    </style>
    </head>
<body background="Isabella_Eatery_VA_nonfiction_coffee.0.0.jpg">
    <form id="form1" runat="server">
    <p>
        <asp:Label ID="LBLWORDS0" runat="server" BackColor="White" 
            Text="CONRADS' EATERY"></asp:Label>
    </p>
    <p>
        <asp:Label ID="LBLWORDS" runat="server" BackColor="White" 
            Text="EMPLOYEE'S LAST NAME:"></asp:Label>
        <asp:TextBox ID="tblastname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnadminhome" runat="server" Text="BACK TO ADMIN HOMEPAGE" />
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" BackColor="White" Text="ORDER NUMBER:"></asp:Label>
        <asp:TextBox ID="tbordernumber" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" BackColor="White" Text="ORDER DATE:"></asp:Label>
        <asp:TextBox ID="tborderdate" runat="server"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EMPLOYEENAME" 
                    DataSourceID="sqlorder" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="EMPLOYEENAME" HeaderText="EMPLOYEENAME" 
                            ReadOnly="True" SortExpression="EMPLOYEENAME" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                        <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" 
                            SortExpression="QUANTITY" />
                        <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" 
                            SortExpression="SUBTOTAL" />
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
                <asp:SqlDataSource ID="sqlorder" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [LASTORDER] WHERE [EMPLOYEENAME] = @original_EMPLOYEENAME AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [QUANTITY] = @original_QUANTITY AND [SUBTOTAL] = @original_SUBTOTAL" 
                    InsertCommand="INSERT INTO [LASTORDER] ([EMPLOYEENAME], [NAME], [PRICE], [QUANTITY], [SUBTOTAL]) VALUES (@EMPLOYEENAME, @NAME, @PRICE, @QUANTITY, @SUBTOTAL)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [LASTORDER]" 
                    UpdateCommand="UPDATE [LASTORDER] SET [NAME] = @NAME, [PRICE] = @PRICE, [QUANTITY] = @QUANTITY, [SUBTOTAL] = @SUBTOTAL WHERE [EMPLOYEENAME] = @original_EMPLOYEENAME AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [QUANTITY] = @original_QUANTITY AND [SUBTOTAL] = @original_SUBTOTAL">
                    <DeleteParameters>
                        <asp:Parameter Name="original_EMPLOYEENAME" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="Int32" />
                        <asp:Parameter Name="original_QUANTITY" Type="Int32" />
                        <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EMPLOYEENAME" Type="String" />
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="Int32" />
                        <asp:Parameter Name="QUANTITY" Type="Int32" />
                        <asp:Parameter Name="SUBTOTAL" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="Int32" />
                        <asp:Parameter Name="QUANTITY" Type="Int32" />
                        <asp:Parameter Name="SUBTOTAL" Type="Int32" />
                        <asp:Parameter Name="original_EMPLOYEENAME" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="Int32" />
                        <asp:Parameter Name="original_QUANTITY" Type="Int32" />
                        <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ORDERDATE" 
                    DataSourceID="sqlorder2" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
                        <asp:BoundField DataField="ORDERNUMBER" HeaderText="ORDERNUMBER" 
                            SortExpression="ORDERNUMBER" />
                        <asp:BoundField DataField="ORDERDATE" HeaderText="ORDERDATE" ReadOnly="True" 
                            SortExpression="ORDERDATE" />
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
                <asp:SqlDataSource ID="sqlorder2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [LASTORDER2] WHERE [ORDERDATE] = @original_ORDERDATE AND [TOTAL] = @original_TOTAL AND [ORDERNUMBER] = @original_ORDERNUMBER" 
                    InsertCommand="INSERT INTO [LASTORDER2] ([TOTAL], [ORDERNUMBER], [ORDERDATE]) VALUES (@TOTAL, @ORDERNUMBER, @ORDERDATE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [LASTORDER2]" 
                    UpdateCommand="UPDATE [LASTORDER2] SET [TOTAL] = @TOTAL, [ORDERNUMBER] = @ORDERNUMBER WHERE [ORDERDATE] = @original_ORDERDATE AND [TOTAL] = @original_TOTAL AND [ORDERNUMBER] = @original_ORDERNUMBER">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ORDERDATE" Type="String" />
                        <asp:Parameter Name="original_TOTAL" Type="Int32" />
                        <asp:Parameter Name="original_ORDERNUMBER" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TOTAL" Type="Int32" />
                        <asp:Parameter Name="ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="ORDERDATE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TOTAL" Type="Int32" />
                        <asp:Parameter Name="ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="original_ORDERDATE" Type="String" />
                        <asp:Parameter Name="original_TOTAL" Type="Int32" />
                        <asp:Parameter Name="original_ORDERNUMBER" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style3">
                <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EMPLOYEENAME" 
                    datasourceid="sqlorder3" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="EMPLOYEENAME" HeaderText="EMPLOYEENAME" 
                            ReadOnly="True" SortExpression="EMPLOYEENAME" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                        <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" 
                            SortExpression="QUANTITY" />
                        <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" 
                            SortExpression="SUBTOTAL" />
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
                <asp:SqlDataSource ID="sqlorder3" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [LASTORDER] WHERE [EMPLOYEENAME] = @original_EMPLOYEENAME AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [QUANTITY] = @original_QUANTITY AND [SUBTOTAL] = @original_SUBTOTAL" 
                    InsertCommand="INSERT INTO [LASTORDER] ([EMPLOYEENAME], [NAME], [PRICE], [QUANTITY], [SUBTOTAL]) VALUES (@EMPLOYEENAME, @NAME, @PRICE, @QUANTITY, @SUBTOTAL)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [LASTORDER] WHERE ([EMPLOYEENAME] LIKE '%' + @EMPLOYEENAME + '%')" 
                    UpdateCommand="UPDATE [LASTORDER] SET [NAME] = @NAME, [PRICE] = @PRICE, [QUANTITY] = @QUANTITY, [SUBTOTAL] = @SUBTOTAL WHERE [EMPLOYEENAME] = @original_EMPLOYEENAME AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [QUANTITY] = @original_QUANTITY AND [SUBTOTAL] = @original_SUBTOTAL">
                    <DeleteParameters>
                        <asp:Parameter Name="original_EMPLOYEENAME" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="Int32" />
                        <asp:Parameter Name="original_QUANTITY" Type="Int32" />
                        <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EMPLOYEENAME" Type="String" />
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="Int32" />
                        <asp:Parameter Name="QUANTITY" Type="Int32" />
                        <asp:Parameter Name="SUBTOTAL" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tblastname" Name="EMPLOYEENAME" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="Int32" />
                        <asp:Parameter Name="QUANTITY" Type="Int32" />
                        <asp:Parameter Name="SUBTOTAL" Type="Int32" />
                        <asp:Parameter Name="original_EMPLOYEENAME" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="Int32" />
                        <asp:Parameter Name="original_QUANTITY" Type="Int32" />
                        <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="GridView6" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ORDERDATE" 
                    datasourceid="sqlorder5" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
                        <asp:BoundField DataField="ORDERNUMBER" HeaderText="ORDERNUMBER" 
                            SortExpression="ORDERNUMBER" />
                        <asp:BoundField DataField="ORDERDATE" HeaderText="ORDERDATE" ReadOnly="True" 
                            SortExpression="ORDERDATE" />
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
                <asp:SqlDataSource ID="sqlorder5" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [LASTORDER2] WHERE [ORDERDATE] = @original_ORDERDATE AND [TOTAL] = @original_TOTAL AND [ORDERNUMBER] = @original_ORDERNUMBER" 
                    InsertCommand="INSERT INTO [LASTORDER2] ([TOTAL], [ORDERNUMBER], [ORDERDATE]) VALUES (@TOTAL, @ORDERNUMBER, @ORDERDATE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [LASTORDER2] WHERE (([ORDERNUMBER] = @ORDERNUMBER) AND ([ORDERDATE] = @ORDERDATE))" 
                    UpdateCommand="UPDATE [LASTORDER2] SET [TOTAL] = @TOTAL, [ORDERNUMBER] = @ORDERNUMBER WHERE [ORDERDATE] = @original_ORDERDATE AND [TOTAL] = @original_TOTAL AND [ORDERNUMBER] = @original_ORDERNUMBER">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ORDERDATE" Type="String" />
                        <asp:Parameter Name="original_TOTAL" Type="Int32" />
                        <asp:Parameter Name="original_ORDERNUMBER" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="TOTAL" Type="Int32" />
                        <asp:Parameter Name="ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="ORDERDATE" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tbordernumber" Name="ORDERNUMBER" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="tbordernumber" Name="ORDERDATE" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TOTAL" Type="Int32" />
                        <asp:Parameter Name="ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="original_ORDERDATE" Type="String" />
                        <asp:Parameter Name="original_TOTAL" Type="Int32" />
                        <asp:Parameter Name="original_ORDERNUMBER" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
