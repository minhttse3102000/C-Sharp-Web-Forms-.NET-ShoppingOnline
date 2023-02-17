<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ2.master" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="Assignment_PRN.ViewOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="OrderID" 
        DataSourceID="SqlDataSource1" Width="100%" 
    PageSize="3" CellPadding="4" ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle ForeColor="Blue" HorizontalAlign="Left" />
            </asp:CommandField>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" 
                ReadOnly="True" SortExpression="OrderID" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle ForeColor="#FF3300" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" 
                SortExpression="CustomerName" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactPerson" HeaderText="ContactPerson" 
                SortExpression="ContactPerson" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" 
                SortExpression="PaymentType" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                SortExpression="TotalPrice" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle Width="90px" />
            </asp:BoundField>
            <asp:BoundField DataField="orderDate" HeaderText="Order Date" 
                SortExpression="orderDate" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#FF3300" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="White" Font-Bold="False" ForeColor="Blue"/>
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
        DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" 
        Width="100%" AutoGenerateColumns="False" DataKeyNames="detailID" 
        onselectedindexchanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle ForeColor="Blue" HorizontalAlign="Left" />
            </asp:CommandField>
            <asp:BoundField DataField="detailID" HeaderText="OrderDetailID" 
                InsertVisible="False" ReadOnly="True" SortExpression="detailID" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="orderID" HeaderText="OrderID" 
                SortExpression="orderID" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle ForeColor="#FF3300" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="menuItemID" HeaderText="ItemID" 
                SortExpression="menuItemID" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="amount" HeaderText="Quantity" 
                SortExpression="amount" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [tblOrders]" 
        DeleteCommand="DELETE FROM [tblOrders] WHERE [orderID] = @OrderID" 
        InsertCommand="INSERT INTO [tblOrders] ([CustomerName], [ContactPerson], [Address], [Tel], [PaymentType], [Description], [TotalPrice], [orderDate]) VALUES (@CustomerName, @ContactPerson, @Address, @Tel, @PaymentType, @Description, @TotalPrice, @orderDate)" 
        UpdateCommand="UPDATE [tblOrders] SET [CustomerName] = @CustomerName, [ContactPerson] = @ContactPerson, [Address] = @Address, [Tel] = @Tel, [PaymentType] = @PaymentType, [Description] = @Description, [TotalPrice] = @TotalPrice, [orderDate] = @orderDate WHERE [orderID] = @OrderID">
        <DeleteParameters>
            <asp:Parameter Name="OrderID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="PaymentType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="TotalPrice" Type="String" />
            <asp:Parameter Name="orderDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="PaymentType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="TotalPrice" Type="String" />
            <asp:Parameter Name="orderDate" Type="DateTime" />
            <asp:Parameter Name="OrderID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        DeleteCommand="DELETE FROM [tblOrderDetails] WHERE [detailID] = @detailID" 
        InsertCommand="INSERT INTO [tblOrderDetails] ([orderID], [menuItemID], [amount], [price]) VALUES (@orderID, @menuItemID, @amount, @price)" 
        SelectCommand="SELECT * FROM [tblOrderDetails] WHERE ([orderID] = @OrderID)" 
        UpdateCommand="UPDATE [tblOrderDetails] SET [orderID] = @orderID, [menuItemID] = @menuItemID, [amount] = @amount, [price] = @price WHERE [detailID] = @detailID">
        <DeleteParameters>
            <asp:Parameter Name="detailID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="orderID" Type="Int32" />
            <asp:Parameter Name="menuItemID" Type="Int32" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="OrderID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="orderID" Type="Int32" />
            <asp:Parameter Name="menuItemID" Type="Int32" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="detailID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
