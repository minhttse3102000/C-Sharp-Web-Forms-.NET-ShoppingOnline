<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ.master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Assignment_PRN.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/YourCart.aspx" Width="222px">View Your Shopping Cart</asp:HyperLink>
    <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <div align="center">
        <table>
            <tr>
                <td valign="top" align="center">

                    <asp:DataList ID="DataList1" runat="server" DataKeyField="menuItemID"
                    DataSourceID="SqlDataSource3" OnItemCommand="DataList1_ItemCommand"
                    RepeatColumns="4" RepeatDirection="Horizontal" 
                        OnItemDataBound="DataList1_ItemDataBound" HorizontalAlign="Center" 
                        CellPadding="15" Width="100%">
                    <ItemTemplate>

                        <table align="center" width="100%">
                            <tr>
                                <asp:Image ID="Image4" runat="server" ImageAlign="Middle" style="margin: 5px 5px 8px 5px"
                                ImageUrl='<%# Eval("ImgName", "images/{0}") %>' Height="140" Width="135" AlternateText='<%# Eval("itemName") %>'/>
                                <td style="width: 73px" valign="top" align="left">
                                    <b>ItemName</b>
                                </td>
                                <td style="width: 9px" valign="top">
                                     :
                                </td>
                                <td style="width: 257px" valign="top" align="left">
                                    <asp:Label ID="lblID" runat="server" Font-Bold="True" Text='<%# Bind("menuItemID") %>'
                                    Width="30px" Visible="False"></asp:Label>
                                    <asp:HyperLink ID="hyperLinkName" runat="server" Width="129px" Text='<%# Bind("itemName") %>' Font-Bold="True"></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 73px" valign="top" align="left">
                                    ItemSize
                                </td>
                                <td style="width: 9px" valign="top">
                                    :
                                </td>
                                <td style="width: 257px" valign="top" align="left">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("itemSize") %>' Width="130px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 73px" valign="top" align="left">
                                    Price
                                </td>
                                <td style="width: 9px" valign="top">
                                    :
                                </td>
                                <td style="width: 257px" valign="top" align="left">
                                    <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("itemPrice") %>' Width="116px" ForeColor="#FF3300"></asp:Label>
                                </td>
                            </tr>
                                
                        </table>
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/cartIcon.gif" ImageAlign="Baseline" />
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" Width="90" />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT [menuItemID], [itemName], [itemPrice], [itemSize], [ImgName] FROM [tblMenuItems] WHERE ([menuItemType] = @menuItemType)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="menuItemType" QueryStringField="type" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    

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
    </div>
</asp:Content>
