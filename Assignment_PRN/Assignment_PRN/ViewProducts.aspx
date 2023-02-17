<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ2.master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="Assignment_PRN.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="menuItemID" 
        DataSourceID="SqlDataSource1" PageSize="5" Width="100%" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle Width="110px" ForeColor="Blue" />
            </asp:CommandField>
            <asp:BoundField DataField="menuItemID" HeaderText="MenuItemID" 
                InsertVisible="False" ReadOnly="True" SortExpression="menuItemID" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle Width="90px" ForeColor="#FF3300" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="menuItemType" HeaderText="MenuItemType" 
                SortExpression="menuItemType" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="itemName" HeaderText="ItemName" 
                SortExpression="itemName" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            
            <asp:BoundField DataField="itemSize" HeaderText="ItemSize" 
                SortExpression="itemSize" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="itemPrice" HeaderText="ItemPrice" 
                SortExpression="itemPrice" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle Width="600px" />
            </asp:BoundField>
            <asp:BoundField DataField="ImgName" HeaderText="GraphicFileName" 
                SortExpression="ImgName" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" HorizontalAlign="Center" ForeColor="Blue" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="White" Font-Bold="False" ForeColor="Blue" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" 
        AutoGenerateRows="False" DataKeyNames="menuItemID" 
        DataSourceID="SqlDataSource2" BackColor="White" 
        BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" BorderStyle="None">
        <EditRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="menuItemID" HeaderText="MenuItemID" 
                InsertVisible="False" ReadOnly="True" SortExpression="menuItemID">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" ForeColor="#FF3300" />
            </asp:BoundField>
            <asp:BoundField DataField="menuItemType" HeaderText="MenuItemType" 
                SortExpression="menuItemType">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="itemName" HeaderText="ItemName" 
                SortExpression="itemName">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>            
            <asp:BoundField DataField="itemSize" HeaderText="ItemSize" 
                SortExpression="itemSize">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="itemPrice" HeaderText="ItemPrice" 
                SortExpression="itemPrice">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Description" 
                SortExpression="description">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="ImgName" HeaderText="GraphicFileName" 
                SortExpression="ImgName">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" >
            <ItemStyle ForeColor="Blue" HorizontalAlign="Center" />
            </asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" 
            HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [tblMenuItems]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        DeleteCommand="DELETE FROM [tblMenuItems] WHERE [menuItemID] = @menuItemID" 
        InsertCommand="INSERT INTO [tblMenuItems] ([menuItemType], [itemName], [itemSize], [itemPrice], [description], [ImgName]) VALUES (@menuItemType, @itemName, @itemSize, @itemPrice, @description, @ImgName)" 
        SelectCommand="SELECT * FROM [tblMenuItems] WHERE ([menuItemID] = @menuItemID)" 
        UpdateCommand="UPDATE [tblMenuItems] SET [menuItemType] = @menuItemType, [itemName] = @itemName, [itemSize] = @itemSize, [itemPrice] = @itemPrice, [description] = @description, [ImgName] = @ImgName WHERE [menuItemID] = @menuItemID">
        <DeleteParameters>
            <asp:Parameter Name="menuItemID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="menuItemType" Type="String" />
            <asp:Parameter Name="itemName" Type="String" />
            <asp:Parameter Name="itemSize" Type="String" />
            <asp:Parameter Name="itemPrice" Type="Double" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="ImgName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="menuItemID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="menuItemType" Type="String" />
            <asp:Parameter Name="itemName" Type="String" />
            <asp:Parameter Name="itemSize" Type="String" />
            <asp:Parameter Name="itemPrice" Type="Double" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="ImgName" Type="String" />
            <asp:Parameter Name="menuItemID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
