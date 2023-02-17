<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ.master" AutoEventWireup="true" CodeBehind="ShowMenuDetails.aspx.cs" Inherits="Assignment_PRN.ShowMenuDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <table>
            <tr>
                <td style="width: 233px">
                    <strong>Menu Item Details</strong>
                </td>
                <td style="width: 257px; text-align: right">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Order.aspx?type=Shirt">Go to Shirt Order Page</asp:HyperLink>
                </td>
                <td style="width: 226px; text-align: right">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Order.aspx?type=Pants">Go to Pants Order Page</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: left" valign="top">
                    <br />

                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" 
                        AutoGenerateRows="False" DataKeyNames="menuItemID" 
                        DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <Fields>
                            <asp:BoundField DataField="menuItemID" HeaderText="menuItemID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="menuItemID" >
                                <HeaderStyle Width="300px" />
                            <ItemStyle ForeColor="#FF3300" />
                            </asp:BoundField>
                            <asp:BoundField DataField="itemName" HeaderText="itemName" 
                                SortExpression="itemName" >
                                <HeaderStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="itemPrice" HeaderText="itemPrice" 
                                SortExpression="itemPrice" >
                                <HeaderStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="description" HeaderText="description" 
                                SortExpression="description" >
                                <HeaderStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="itemSize" HeaderText="itemSize" 
                                SortExpression="itemSize" >
                                <HeaderStyle Width="300px" />
                            </asp:BoundField>                           
                            <asp:BoundField DataField="menuItemType" HeaderText="menuItemType" 
                                SortExpression="menuItemType" >
                                <HeaderStyle Width="300px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="ImgName" 
                                SortExpression="ImgName">
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("ImgName", "~/images/{0}") %>' Height="140px" Width="150px" />
                                </ItemTemplate>
                                <HeaderStyle Width="300px" />
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    </asp:DetailsView>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conn %>" SelectCommand="SELECT * FROM [tblMenuItems] WHERE ([menuItemID] = @menuItemID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="menuItemID" QueryStringField="menuID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 233px">
                    
                </td>
                <td style="width: 257px; text-align: right">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="ShowMenu.aspx?type=Shirt">Back to Shirt ShowMenu Page</asp:HyperLink>
                </td>
                <td style="width: 226px; text-align: right">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="ShowMenu.aspx?type=Pants">Back to Pants ShowMenu Page</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [MenuItems] WHERE ([MenuItemID] = @MenuItemID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MenuItemID" QueryStringField="menuid" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
