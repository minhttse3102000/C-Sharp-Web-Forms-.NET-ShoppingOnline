<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ.master" AutoEventWireup="true" CodeBehind="ShowMenu.aspx.cs" Inherits="Assignment_PRN.ShowMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3" 
        DataKeyField="menuItemID" HorizontalAlign="Center" Width="100%" 
        RepeatColumns="2" CellPadding="15">
		<FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
			Font-Underline="False" HorizontalAlign="Center" />
		<ItemStyle BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False"
			Font-Strikeout="False" Font-Underline="False" ForeColor="#284775" />
		<SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
			Font-Underline="False" HorizontalAlign="Center" />
		
		<SeparatorTemplate>
			<br />
		</SeparatorTemplate>
		<ItemTemplate>
           
            <asp:Image ID="ImgNameLabel" runat="server" ImageAlign="Left" ImageUrl='<%# Eval("ImgName", "images/{0}")%>'
                AlternateText='<%# Eval("itemName") %>' Height="140" Width="135" style="margin: 10px 5px 5px 5px"/>
         
           
            <b>ItemName:</b>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("menuItemID","ShowMenuDetails.aspx?menuid={0}") %>' 
                Text='<%# Eval("itemName") %>' ForeColor="#FF3300">
                </asp:HyperLink><br />
            <b>ItemPrice:</b>
            <asp:Label ID="itemPriceLabel" runat="server" Text='<%# Eval("itemPrice") %>' /><br />
		    <b>Description:</b>
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' /><br />
            <b>ItemSize:</b>
            <asp:Label ID="itemSizeLabel" runat="server" Text='<%# Eval("itemSize") %>' />
            <br />
            
            <br />
            <br />
		</ItemTemplate>
		<FooterTemplate>
			<br />
		</FooterTemplate>
	</asp:DataList>   

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [menuItemID], [itemName], [itemPrice], [description], [itemSize], [ImgName] FROM [tblMenuItems] WHERE ([menuItemType] = @menuItemType)">
        <SelectParameters>
            <asp:QueryStringParameter Name="menuItemType" QueryStringField="type" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [MenuItems] WHERE ([MenuItemType] = @MenuItemType)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MenuItemType" QueryStringField="type" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="sp_Select_MenuItems" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Direction="InputOutput" Name="MenuItemType" 
                QueryStringField="type" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
