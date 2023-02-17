<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ2.master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Assignment_PRN.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: 10px; font-weight: bold; font-size: xx-large; margin-bottom: 10px; color: #FF9933; font-family: 'Comic Sans MS', Monospace; text-align: center;">Share Permission of User</div><br />
<hr />
<table>
    <tr>
        <td height="250">
            <p><span style="font-family: 'Times New Roman', Times, serif; color: navy; font-size: 20px; font-weight: bold;">For Managers and Administrators</span></p>
            <p><span style="font-family: 'Times New Roman'; color: maroon; font-size: 20px;">+ For users who belong to Manager rules:</span>
            <span style="font-size: 20px">access and update on items </span><span style="color: red; font-size: 20px;">View Orders</span></p>
            <p><span style="font-family: 'Times New Roman'; color: maroon; font-size: 20px;">+ For users who belong to Admin rules:</span>
            <span style="font-size: 20px">Have full control over all data items</span></p>
        </td>
    </tr>
</table>
<hr /><br /><br />
</asp:Content>
