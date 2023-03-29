<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ADMINPAGE3.aspx.vb" Inherits="FORGOTPASSWORD" %>

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
    <p>
        <asp:Label ID="LBLWORDS" runat="server" BackColor="White" 
            Text="CONRADS' EATERY"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnadminhome" runat="server" Text="BACK TO ADMIN HOMEPAGE" />
    </p>
    <p>
        <asp:Label ID="LBLWORD1" runat="server" BackColor="White" Text="NAME:"></asp:Label>
        <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="LBLWORDS2" runat="server" BackColor="White" Text="PRICE:"></asp:Label>
        <asp:TextBox ID="tbprice" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnbreakfast" runat="server" Text="INSERT INTO BREAKFAST" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnlunch" runat="server" Text="INSERT INTO LUNCH" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnmeryenda" runat="server" Text="INSERT INTO MERYENDA" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndinner" runat="server" Height="22px" 
            Text="INSERT INTO DINNER" />
    </p>
    <p>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndesserts" runat="server" Text="INSERT INTO DESSERTS" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndrinks" runat="server" Text="INSERT INTO DRINKS" />
    </p>
    <table class="style1">
        <tr>
            <td>
                <asp:GridView ID="gvbreakfast" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NAME" 
                    DataSourceID="sqlbreakfast" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" ReadOnly="True" 
                            SortExpression="NAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
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
                <asp:SqlDataSource ID="sqlbreakfast" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [BREAKFAST] WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE" 
                    InsertCommand="INSERT INTO [BREAKFAST] ([NAME], [PRICE]) VALUES (@NAME, @PRICE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [BREAKFAST]" 
                    UpdateCommand="UPDATE [BREAKFAST] SET [PRICE] = @PRICE WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE">
                    <DeleteParameters>
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="tbname" Name="NAME" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="tbprice" Name="PRICE" PropertyName="Text" 
                            Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="gvlunch" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NAME" 
                    DataSourceID="sqllunch" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" ReadOnly="True" 
                            SortExpression="NAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
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
                <asp:SqlDataSource ID="sqllunch" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [LUNCH] WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE" 
                    InsertCommand="INSERT INTO [LUNCH] ([NAME], [PRICE]) VALUES (@NAME, @PRICE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [LUNCH]" 
                    UpdateCommand="UPDATE [LUNCH] SET [PRICE] = @PRICE WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE">
                    <DeleteParameters>
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="tbname" Name="NAME" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="tbprice" Name="PRICE" PropertyName="Text" 
                            Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="gvmeryenda" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NAME" 
                    DataSourceID="sqlmeryenda" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" ReadOnly="True" 
                            SortExpression="NAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
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
                <asp:SqlDataSource ID="sqlmeryenda" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [MERYENDA/SNACK] WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE" 
                    InsertCommand="INSERT INTO [MERYENDA/SNACK] ([NAME], [PRICE]) VALUES (@NAME, @PRICE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [MERYENDA/SNACK]" 
                    UpdateCommand="UPDATE [MERYENDA/SNACK] SET [PRICE] = @PRICE WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE">
                    <DeleteParameters>
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="tbname" Name="NAME" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="tbprice" Name="PRICE" PropertyName="Text" 
                            Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="Int32" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="gvdinner" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NAME" 
                    DataSourceID="sqldinner" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" ReadOnly="True" 
                            SortExpression="NAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
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
                <asp:SqlDataSource ID="sqldinner" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [DINNER] WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE" 
                    InsertCommand="INSERT INTO [DINNER] ([NAME], [PRICE]) VALUES (@NAME, @PRICE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [DINNER]" 
                    UpdateCommand="UPDATE [DINNER] SET [PRICE] = @PRICE WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE">
                    <DeleteParameters>
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="tbname" Name="NAME" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="tbprice" Name="PRICE" PropertyName="Text" 
                            Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="gvdesserts" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NAME" 
                    DataSourceID="sqldesserts" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" ReadOnly="True" 
                            SortExpression="NAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
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
                <asp:SqlDataSource ID="sqldesserts" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [DESSERTS] WHERE [NAME] = @original_NAME AND (([PRICE] = @original_PRICE) OR ([PRICE] IS NULL AND @original_PRICE IS NULL))" 
                    InsertCommand="INSERT INTO [DESSERTS] ([NAME], [PRICE]) VALUES (@NAME, @PRICE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [DESSERTS]" 
                    UpdateCommand="UPDATE [DESSERTS] SET [PRICE] = @PRICE WHERE [NAME] = @original_NAME AND (([PRICE] = @original_PRICE) OR ([PRICE] IS NULL AND @original_PRICE IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="tbname" Name="NAME" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="tbprice" Name="PRICE" PropertyName="Text" 
                            Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="gvdrinks" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NAME" 
                    DataSourceID="sqldrinks" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowSelectButton="True" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" ReadOnly="True" 
                            SortExpression="NAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
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
                <asp:SqlDataSource ID="sqldrinks" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [DRINKS] WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE" 
                    InsertCommand="INSERT INTO [DRINKS] ([NAME], [PRICE]) VALUES (@NAME, @PRICE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [DRINKS]" 
                    UpdateCommand="UPDATE [DRINKS] SET [PRICE] = @PRICE WHERE [NAME] = @original_NAME AND [PRICE] = @original_PRICE">
                    <DeleteParameters>
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="tbname" Name="NAME" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="tbprice" Name="PRICE" PropertyName="Text" 
                            Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
