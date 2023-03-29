<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EMPLOYEEPAGE.aspx.vb" Inherits="FORGOTPASSWORD" %>

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
            width: 283px;
        }
        .style3
        {
            width: 126px;
            margin-left: 40px;
        }
        .style4
        {
            width: 423px;
        }
        .style5
        {
            width: 185px;
        }
    </style>
</head>
<body background="Isabella_Eatery_VA_nonfiction_coffee.0.0.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblemployee0" runat="server" BackColor="White">CONRADS&#39; EATERY</asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblemployee1" runat="server" BackColor="White">EMPLOYEE:</asp:Label>
        <asp:Label ID="lblemployee" runat="server" BackColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnlogout" runat="server" Text="LOGOUT" />
        <br />
        <br />
    
    </div>
    <table class="style1">
        <tr>
            <td>
                <br />
                <asp:Label ID="lblname4" runat="server" BackColor="White">BREAKFAST:</asp:Label>
                <asp:GridView ID="gvbreakfast" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="NAME" DataSourceID="sqlbreakfast" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <br />
                <asp:Label ID="lblname5" runat="server" BackColor="White">LUNCH:</asp:Label>
                <asp:GridView ID="gvlunch" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="NAME" DataSourceID="sqllunch" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <br />
                <asp:Label ID="lblname6" runat="server" BackColor="White">MERYENDA:</asp:Label>
                <asp:GridView ID="gvmeryenda" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="NAME" DataSourceID="sqlmeryenda" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="Int32" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <br />
                <asp:Label ID="lblname7" runat="server" BackColor="White">DINNER:</asp:Label>
                <asp:GridView ID="gvdinner" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="NAME" DataSourceID="sqldinner" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <br />
                <asp:Label ID="lblname8" runat="server" BackColor="White">DESSERTS:</asp:Label>
                <asp:GridView ID="gvdesserts" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="NAME" DataSourceID="sqldesserts" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <br />
                <asp:Label ID="lblname9" runat="server" BackColor="White">DRINKS:</asp:Label>
                <asp:GridView ID="gvdrinks" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="NAME" DataSourceID="sqldrinks" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PRICE" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
        <asp:Label ID="lblname0" runat="server" BackColor="White">NAME:</asp:Label>
        <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblname1" runat="server" BackColor="White">PRICE:</asp:Label>
        <asp:Label ID="lblprice" runat="server" Text="0" BackColor="White"></asp:Label>
    </p>
    <p>
        <asp:Label ID="lblname2" runat="server" BackColor="White">QUANTITY:</asp:Label>
        <asp:TextBox ID="tbquantity" runat="server" style="margin-bottom: 0px"></asp:TextBox>
    </p>
    <asp:Button ID="btncompute" runat="server" Text="COMPUTE" 
        onclick="btncompute_Click" />
    <p>
        <asp:Label ID="lblname3" runat="server" BackColor="White">SUBTOTAL:</asp:Label>
        <asp:TextBox ID="tbsub" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblwordsss" runat="server" BackColor="White" 
            Text="INSERT ORDER ID:"></asp:Label>
        <asp:TextBox ID="tbinsertid" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnaddtocart" runat="server" Text="ADD TO CART" />
    </p>
    <asp:GridView ID="gvorders" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ORDERID" DataSourceID="sqlorders" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ORDERID" HeaderText="ORDERID" ReadOnly="True" 
                SortExpression="ORDERID" />
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
    <asp:SqlDataSource ID="sqlorders" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
        DeleteCommand="DELETE FROM [ORDERS11] WHERE [ORDERID] = @original_ORDERID AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [QUANTITY] = @original_QUANTITY AND [SUBTOTAL] = @original_SUBTOTAL" 
        InsertCommand="INSERT INTO [ORDERS11] ([ORDERID], [NAME], [PRICE], [QUANTITY], [SUBTOTAL]) VALUES (@ORDERID, @NAME, @PRICE, @QUANTITY, @SUBTOTAL)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [ORDERS11]" 
        
        
        
        
        UpdateCommand="UPDATE [ORDERS11] SET [NAME] = @NAME, [PRICE] = @PRICE, [QUANTITY] = @QUANTITY, [SUBTOTAL] = @SUBTOTAL WHERE [ORDERID] = @original_ORDERID AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [QUANTITY] = @original_QUANTITY AND [SUBTOTAL] = @original_SUBTOTAL">
        <DeleteParameters>
            <asp:Parameter Name="original_ORDERID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_PRICE" Type="Int32" />
            <asp:Parameter Name="original_QUANTITY" Type="Int32" />
            <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ORDERID" Type="String" />
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
            <asp:Parameter Name="original_ORDERID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_PRICE" Type="Int32" />
            <asp:Parameter Name="original_QUANTITY" Type="Int32" />
            <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="btncompute1" runat="server" Text="COMPUTE TOTAL" 
        onclick="btncompute_Click" />
    <br />
    <br />
        <asp:Label ID="lblname10" runat="server" BackColor="White">TOTAL:</asp:Label>
        <asp:Label ID="lbltotal" runat="server" BackColor="White"></asp:Label>
    <br />
    <br />
        <asp:Label ID="lblname11" runat="server" BackColor="White">ORDER NUMBER:</asp:Label>
        &nbsp;<asp:TextBox ID="tbordernumber" runat="server"></asp:TextBox>
    <br />
        <asp:Label ID="lblname12" runat="server" BackColor="White">ORDER DATE:</asp:Label>
        &nbsp;<asp:TextBox ID="tborderdate" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btncashout" runat="server" Text="CASHOUT" 
        style="height: 26px" />
    <br />
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
    <asp:GridView ID="gvfinalorder" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ORDERID" DataSourceID="sqlfinalorder" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="ORDERID" HeaderText="ORDERID" ReadOnly="True" 
                SortExpression="ORDERID" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="PRICE" HeaderText="PRICE" 
                SortExpression="PRICE" />
            <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" 
                SortExpression="SUBTOTAL" />
            <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" 
                SortExpression="QUANTITY" />
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
    <asp:SqlDataSource ID="sqlfinalorder" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
        DeleteCommand="DELETE FROM [FINALORDERS11] WHERE [ORDERID] = @original_ORDERID AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [SUBTOTAL] = @original_SUBTOTAL AND [QUANTITY] = @original_QUANTITY" 
        InsertCommand="INSERT INTO [FINALORDERS11] ([ORDERID], [NAME], [PRICE], [SUBTOTAL], [QUANTITY]) VALUES (@ORDERID, @NAME, @PRICE, @SUBTOTAL, @QUANTITY)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [FINALORDERS11]" 
        
        
                    
                    UpdateCommand="UPDATE [FINALORDERS11] SET [NAME] = @NAME, [PRICE] = @PRICE, [SUBTOTAL] = @SUBTOTAL, [QUANTITY] = @QUANTITY WHERE [ORDERID] = @original_ORDERID AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [SUBTOTAL] = @original_SUBTOTAL AND [QUANTITY] = @original_QUANTITY">
        <DeleteParameters>
            <asp:Parameter Name="original_ORDERID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_PRICE" Type="Int32" />
            <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
            <asp:Parameter Name="original_QUANTITY" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ORDERID" Type="String" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="PRICE" Type="Int32" />
            <asp:Parameter Name="SUBTOTAL" Type="Int32" />
            <asp:Parameter Name="QUANTITY" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="PRICE" Type="Int32" />
            <asp:Parameter Name="SUBTOTAL" Type="Int32" />
            <asp:Parameter Name="QUANTITY" Type="Int32" />
            <asp:Parameter Name="original_ORDERID" Type="String" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_PRICE" Type="Int32" />
            <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
            <asp:Parameter Name="original_QUANTITY" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
            </td>
            <td class="style3">
                <asp:GridView ID="gvtotal" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ORDERID" DataSourceID="sqlfinalorder1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="ORDERID" HeaderText="ORDERID" ReadOnly="True" 
                            SortExpression="ORDERID" />
                        <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" SortExpression="TOTAL" />
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
                <asp:SqlDataSource ID="sqlfinalorder1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [FINALORDER11] WHERE [ORDERID] = @original_ORDERID AND [TOTAL] = @original_TOTAL" 
                    InsertCommand="INSERT INTO [FINALORDER11] ([ORDERID], [TOTAL]) VALUES (@ORDERID, @TOTAL)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [FINALORDER11]" 
                    ConflictDetection="CompareAllValues" 
                    UpdateCommand="UPDATE [FINALORDER11] SET [TOTAL] = @TOTAL WHERE [ORDERID] = @original_ORDERID AND [TOTAL] = @original_TOTAL">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ORDERID" Type="String" />
                        <asp:Parameter Name="original_TOTAL" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ORDERID" Type="String" />
                        <asp:Parameter Name="TOTAL" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TOTAL" Type="Int32" />
                        <asp:Parameter Name="original_ORDERID" Type="String" />
                        <asp:Parameter Name="original_TOTAL" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:GridView ID="gvorderinfo" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ORDERID" DataSourceID="sqlorderinfo" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="ORDERID" HeaderText="ORDERID" 
                            ReadOnly="True" SortExpression="ORDERID" />
                        <asp:BoundField DataField="ORDERNUMBER" HeaderText="ORDERNUMBER" 
                            SortExpression="ORDERNUMBER" />
                        <asp:BoundField DataField="ORDERDATE" HeaderText="ORDERDATE" 
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
                <asp:SqlDataSource ID="sqlorderinfo" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [ORDERNUMBER11] WHERE [ORDERID] = @original_ORDERID AND (([ORDERNUMBER] = @original_ORDERNUMBER) OR ([ORDERNUMBER] IS NULL AND @original_ORDERNUMBER IS NULL)) AND (([ORDERDATE] = @original_ORDERDATE) OR ([ORDERDATE] IS NULL AND @original_ORDERDATE IS NULL))" 
                    InsertCommand="INSERT INTO [ORDERNUMBER11] ([ORDERID], [ORDERNUMBER], [ORDERDATE]) VALUES (@ORDERID, @ORDERNUMBER, @ORDERDATE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [ORDERNUMBER11]" 
                    
                    
                    UpdateCommand="UPDATE [ORDERNUMBER11] SET [ORDERNUMBER] = @ORDERNUMBER, [ORDERDATE] = @ORDERDATE WHERE [ORDERID] = @original_ORDERID AND (([ORDERNUMBER] = @original_ORDERNUMBER) OR ([ORDERNUMBER] IS NULL AND @original_ORDERNUMBER IS NULL)) AND (([ORDERDATE] = @original_ORDERDATE) OR ([ORDERDATE] IS NULL AND @original_ORDERDATE IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ORDERID" Type="String" />
                        <asp:Parameter Name="original_ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="original_ORDERDATE" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ORDERID" Type="String" />
                        <asp:Parameter Name="ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="ORDERDATE" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="ORDERDATE" Type="String" />
                        <asp:Parameter Name="original_ORDERID" Type="String" />
                        <asp:Parameter Name="original_ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="original_ORDERDATE" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="LBLAREYOUSURE" runat="server" 
        Text="ARE YOU SURE OF YOUR ORDERS?" Visible="False" BackColor="White"></asp:Label>
    <br />
    <asp:Button ID="btnyes" runat="server" Text="YES" Visible="False" />
    <asp:Button ID="btnno" runat="server" Text="NO" Visible="False" />
    <table class="style1">
        <tr>
            <td class="style4">
                <asp:GridView ID="gvlastorder" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="SUBTOTAL" DataSourceID="sqllastorder" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="EMPLOYEENAME" HeaderText="EMPLOYEENAME" 
                            SortExpression="EMPLOYEENAME" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                        <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" 
                            SortExpression="QUANTITY" />
                        <asp:BoundField DataField="SUBTOTAL" HeaderText="SUBTOTAL" ReadOnly="True" 
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
                <asp:SqlDataSource ID="sqllastorder" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [LASTORDER] WHERE [SUBTOTAL] = @original_SUBTOTAL AND [EMPLOYEENAME] = @original_EMPLOYEENAME AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [QUANTITY] = @original_QUANTITY" 
                    InsertCommand="INSERT INTO [LASTORDER] ([EMPLOYEENAME], [NAME], [PRICE], [QUANTITY], [SUBTOTAL]) VALUES (@EMPLOYEENAME, @NAME, @PRICE, @QUANTITY, @SUBTOTAL)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [LASTORDER]" 
                    
                    UpdateCommand="UPDATE [LASTORDER] SET [EMPLOYEENAME] = @EMPLOYEENAME, [NAME] = @NAME, [PRICE] = @PRICE, [QUANTITY] = @QUANTITY WHERE [SUBTOTAL] = @original_SUBTOTAL AND [EMPLOYEENAME] = @original_EMPLOYEENAME AND [NAME] = @original_NAME AND [PRICE] = @original_PRICE AND [QUANTITY] = @original_QUANTITY">
                    <DeleteParameters>
                        <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
                        <asp:Parameter Name="original_EMPLOYEENAME" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="Int32" />
                        <asp:Parameter Name="original_QUANTITY" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="lblemployee" Name="EMPLOYEENAME" 
                            PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="tbname" Name="NAME" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="lblprice" Name="PRICE" PropertyName="Text" 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="tbquantity" Name="QUANTITY" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="tbsub" Name="SUBTOTAL" PropertyName="Text" 
                            Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="EMPLOYEENAME" Type="String" />
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="PRICE" Type="Int32" />
                        <asp:Parameter Name="QUANTITY" Type="Int32" />
                        <asp:Parameter Name="original_SUBTOTAL" Type="Int32" />
                        <asp:Parameter Name="original_EMPLOYEENAME" Type="String" />
                        <asp:Parameter Name="original_NAME" Type="String" />
                        <asp:Parameter Name="original_PRICE" Type="Int32" />
                        <asp:Parameter Name="original_QUANTITY" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style5">
                <asp:GridView ID="gvlastorder2" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ORDERDATE" DataSourceID="sqllastorder2" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" 
                            SortExpression="TOTAL" />
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
                <asp:SqlDataSource ID="sqllastorder2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ORDERS %>" 
                    DeleteCommand="DELETE FROM [LASTORDER2] WHERE [ORDERNUMBER] = @original_ORDERNUMBER AND [TOTAL] = @original_TOTAL AND [ORDERDATE] = @original_ORDERDATE" 
                    InsertCommand="INSERT INTO [LASTORDER2] ([TOTAL], [ORDERNUMBER], [ORDERDATE]) VALUES (@TOTAL, @ORDERNUMBER, @ORDERDATE)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [LASTORDER2]" 
                    
                    
                    UpdateCommand="UPDATE [LASTORDER2] SET [TOTAL] = @TOTAL, [ORDERDATE] = @ORDERDATE WHERE [ORDERNUMBER] = @original_ORDERNUMBER AND [TOTAL] = @original_TOTAL AND [ORDERDATE] = @original_ORDERDATE">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="original_TOTAL" Type="Int32" />
                        <asp:Parameter Name="original_ORDERDATE" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="lbltotal" Name="TOTAL" PropertyName="Text" 
                            Type="Int32" />
                        <asp:ControlParameter ControlID="tbordernumber" Name="ORDERNUMBER" 
                            PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="tborderdate" Name="ORDERDATE" 
                            PropertyName="Text" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TOTAL" Type="Int32" />
                        <asp:Parameter Name="ORDERDATE" Type="String" />
                        <asp:Parameter Name="original_ORDERNUMBER" Type="Int32" />
                        <asp:Parameter Name="original_TOTAL" Type="Int32" />
                        <asp:Parameter Name="original_ORDERDATE" Type="String" />
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
