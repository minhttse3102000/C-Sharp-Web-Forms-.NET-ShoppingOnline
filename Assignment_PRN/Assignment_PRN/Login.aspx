<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Assignment_PRN.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div align="center">
    <table border="1" align="center" width="300"><tr><td align="center">
    <table width="250">
        <tr>
            <td colspan="2" height="30">
                <div align="center"><h3 style="background-color: #008000; color: #FFFFFF; height: 26px; ">Login</h3></div>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Username" Width="90px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Password" Width="90px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td colspan="2">
                <div align="center" style="margin: 15px auto 10px auto"><asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" /><br/></div>
                <div align="center"><asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label> </div>
            </td>
        </tr>
    </table>
    </td></tr></table>
</div>
</asp:Content>
